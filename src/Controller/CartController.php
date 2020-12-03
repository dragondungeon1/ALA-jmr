<?php

namespace App\Controller;

use App\Entity\Order;
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
//        dd($products);
//        session_destroy();

        if (isset ($products[$product->getId()])) {
            $products[$product->getId()]->amount++;
        } else {
            $product->amount = 1;
            $products[$product->getId()] = $product;//zet product in de array
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
     * @Route("/spa", name="spa")
     */
    public function order()
    {
//        dd($this->session->get('School'));
        $Order = new Order();
        $user = $this->getUser();
        $em = $this->getDoctrine()->getManager();
        $user = $em->getRepository(User::class)->find($user->getId());
        dd(($this->session->get('Product')));
        $product = $em->getRepository(Product::class)->find($this->session->get('product'));

        $Order->setUser($user);
//        $Order->setSchool($this->session->get('school'));
        $Order->setProduct($product);

//        $form = $this->createForm(OrderType::class, $Order);    //please check this again
//        $form->handleRequest($request);
        $em->persist($Order);
        $em->flush();

        return $this->render('product/spa.html.twig', [
            'order' => $Order
        ]);

    }
}
