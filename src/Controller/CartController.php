<?php

namespace App\Controller;

use App\Entity\Order;
use App\Entity\OrderHasProduct;
use App\Entity\Product;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;


class CartController extends AbstractController

{
    private $session;
    private $em;

    public function __construct(SessionInterface $session, EntityManagerInterface $entityManager)
    {
        $this->session = $session;
        $this->em = $entityManager;

    }

    /**
     * @Route("/cart", name="cart")
     */
    public function index(): Response
    {
        $this->session();
        $products = $this->em->getRepository(Product::class)->findAll();
        return $this->render('cart/index.html.twig', [
            'controller_name' => 'CartController',
            'products' => $products,
        ]);
    }

    public function session()
    {
        $this->session->set('session', 'foo');
        $foo = $this->session->get('session');
        $filters = $this->session->get('filters', []);
    }
//this will be the add function

    /**
     * @Route("/drum/{id}", name="drum")
     * @param Product $product
     * @return Response
     */
    public function add(Product $product)
    {


        $products = $this->session->get('Products', []);
//        dd(substr($_SERVER['HTTP_REFERER'], -4,-1));
//        session_destroy();

        if (isset ($products[$product->getId()])) {
            $products[$product->getId()]->amount++;
        } else {
            $product->amount = 1;
            $products[$product->getId()] = $product;//zet product in de array
        }
        $this->session->set('Products', $products);
        if (substr($_SERVER['HTTP_REFERER'], -4, -1) == 'car') {
            return $this->redirectToRoute('view');
        }
        return new JsonResponse(
            [
                "status" => "200",
                "products" => $products
            ],
            200
        );
    }

    /**
     * @Route("/view/", name="view")
     * @return Response
     */
    public function view()
    {
        $products = $this->session->get('Products', []);
        return $this->render('product/jmr.html.twig', [
            'products' => $products
        ]);
    }

    /**
     * @Route("/minus/{id}", name="minus")
     * @param Product $product
     * @return Response
     */
    public function minus(Product $product)
    {
        $products = $this->session->get('Products', []);

        if (isset($products[$product->getId()])) { //checkt of een variable bestaat
            $products[$product->getId()]->amount--;
            if ($products[$product->getId()]->amount == 0) {
                unset($products[$product->getId()]);
            }
        }
        $this->session->set('Products', $products);
        return new JsonResponse(
            [
                "status" => "200",
                "products" => $products
            ],
            200
        );
    }

    // this is the payment function

    /**
     * @Route("/payment", name="payment")
     */
    public function order()
    {
        $order = new Order();
        $user = $this->getUser();
        $order->setUser($user);
        $order->setPlacedAt(new \DateTime('now'));
        $em = $this->getDoctrine()->getManager();
        $em->persist($order);
//        $em->flush();
        foreach ($this->session->get('Products') as $product) {
            $amount = $product->amount;
            $orderhasproduct = new OrderHasProduct();
            $orderhasproduct->setOrderkey($order);
            $product = $em->getRepository(Product::class)->find($product->getId());
            $orderhasproduct->setProductkey($product);;
            $orderhasproduct->setAmount($amount);
            $em->persist($orderhasproduct);
            $em->flush();
        };


        return $this->render('product/thanks.html.twig', [
            'order' => $order
        ]);

    }
    /**
     * @Route("/history", name="history")
     */
    public function orderhistory()
    {
        $orders = $this->getUser()->getOrders();


        return $this->render('product/history.html.twig', [
            'orders' => $orders
        ]);
    }
}
//        $object->propertyName = $value; // set property
//        $variable = $object->propertyName // get property