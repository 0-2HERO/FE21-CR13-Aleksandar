<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;



Use App\Entity\Event;

class EventController extends AbstractController
{
    #[Route('/', name: 'event')]
    public function index(): Response
    {
        $events = $this->getDoctrine()->getRepository('App:Event')->findAll();
       
        return $this->render('event/index.html.twig',[
            'events'=> $events
        ]);
    }

    #[Route('/allevents', name: 'all_events')]
    public function new(): Response
    {
        $events = $this->getDoctrine()->getRepository('App:Event')->findAll();
       
        return $this->render('event/allevents.html.twig',[
            'events'=> $events
        ]);
    }

    #[Route("/create", name:"event_create")]
    public function create(Request $request): Response
    {
        $event = new Event;

        $form = $this->createFormBuilder($event)
        ->add('name', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('datetime', DateTimeType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('description', TextareaType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('image', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('capacity', NumberType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('contact', EmailType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('phone', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('location', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('address', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('zip', NumberType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('city', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('url', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('save', SubmitType::class, array('attr'=>array('class'=>'btn btn-success mb-3', 'label'=>'Create Event')))->getForm();
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $name = $form['name']->getData();
            $datetime = $form['datetime']->getData();
            $description = $form['description']->getData();
            $image = $form['image']->getData();
            $capacity = $form['capacity']->getData();
            $contact = $form['contact']->getData();
            $phone = $form['phone']->getData();
            $location = $form['location']->getData();
            $address = $form['address']->getData();
            $zip = $form['zip']->getData();
            $city = $form['city']->getData();
            $url = $form['url']->getData();
           
            $event->setName($name);
            $event->setDatetime($datetime);
            $event->setDescription($description);
            $event->setImage($image);
            $event->setCapacity($capacity);
            $event->setContact($contact);
            $event->setPhone($phone);
            $event->setLocation($location);
            $event->setAddress($address);
            $event->setZip($zip);
            $event->setCity($city);
            $event->setUrl($url);
            
            $em = $this->getDoctrine()->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash('notice', 'Event Added');
            return $this->redirectToRoute('event');


        }

        return $this->render('event/create.html.twig', array('form'=>$form->createView()));
    }


    #[Route("/edit/{id}", name:"event_edit")]
    public function edit($id, Request $request): Response
    {
        $event = $this->getDoctrine()->getManager()->getRepository(Event::class)->find($id);

        $form = $this->createFormBuilder($event)
        ->add('name', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('datetime', DateTimeType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('description', TextareaType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('image', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('capacity', NumberType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('contact', EmailType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('phone', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('location', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('address', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('zip', NumberType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('city', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('url', TextType::class, array('attr'=>array('class'=>'form-control mb-3')))
        ->add('save', SubmitType::class, array('attr'=>array('class'=>'btn btn-success mb-3', 'label'=>'Create Event')))->getForm();
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $name = $form['name']->getData();
            $datetime = $form['datetime']->getData();
            $description = $form['description']->getData();
            $image = $form['image']->getData();
            $capacity = $form['capacity']->getData();
            $contact = $form['contact']->getData();
            $phone = $form['phone']->getData();
            $location = $form['location']->getData();
            $address = $form['address']->getData();
            $zip = $form['zip']->getData();
            $city = $form['city']->getData();
            $url = $form['url']->getData();
           
            $event->setName($name);
            $event->setDatetime($datetime);
            $event->setDescription($description);
            $event->setImage($image);
            $event->setCapacity($capacity);
            $event->setContact($contact);
            $event->setPhone($phone);
            $event->setLocation($location);
            $event->setAddress($address);
            $event->setZip($zip);
            $event->setCity($city);
            $event->setUrl($url);
            
            $em = $this->getDoctrine()->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash('notice', 'Event edited');
            return $this->redirectToRoute('event');


        }

        return $this->render('event/edit.html.twig', array('form'=>$form->createView()));
    }


    #[Route("/details/{id}", name:"event_details")]
    public function details($id): Response
    {
        $event = $this->getDoctrine()->getManager()->getRepository(Event::class)->find($id);
        
        return $this->render('event/details.html.twig', array('event'=>$event));
    }

    #[Route("/delete/{id}", name:"event_delete")]
    public function delete($id): Response
    {
        $event = $this->getDoctrine()->getManager()->getRepository(Event::class)->find($id);
        $em = $this->getDoctrine()->getManager();
        $em->remove($event);
        $em->flush();

        $this->addFlash('Notice', 'Event Removed');

        return $this->redirectToRoute('event');
    }
}
