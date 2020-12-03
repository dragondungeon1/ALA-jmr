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
    private  $session;
    private  $em;
    public function  __construct(SessionInterface $session , EntityManagerInterface $entityManager)
    {
        $this->session = $session;
        $this->em = $entityManager;

    }
    public function session(){
        $this->session->set('session', 'foo' );
        $foo = $this->session->get('session');
        $filters = $this ->session->get('filters',[]);
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

    /**
     * @Route("/drum/{id}", name="drum")
     * @param Product $product
     * @return Response
     */
    public function add(Product $product){
        $products = $this->session->get('Products' , []);



        if (isset ($products[$product->getId()])){
            $products[$product->getId()]->amount++;
        }else{
            $product->amount = 1 ;

            $products[$product->getId()]  =  $product;//zet product in de array

        }
        $this->session->set('Products', $products);
                    dd($products);
//                session_destroy();

        return $this->render    ('product/jmr.html.twig' , [
            $this->session->get('Products' , []),
            'products' => $products,
        ]);

    }
//$object->propertyName = $value; // set property
//$variable = $object->propertyName // get property
//dd($products);


//    public function button(Product $product){
//        $id = $request->request->get('id');
//        $products = $this->session->get('Product' , []);
//        $quantity = $product->;
//        return new JsonResponse(
//            [
//                "quantity" => $product
//            ]
//        );
//    }

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
        $user =  $em->getRepository(User::class)->find($user->getId());
        dd(($this->session->get('Product')));
        $product =  $em->getRepository(Product::class)->find($this->session->get('product'));

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
