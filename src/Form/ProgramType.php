<?php

namespace App\Form;

use App\Entity\Program;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use App\Entity\Actor;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class ProgramType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class,[
                'label' => 'Titre du programme',
                'attr' => [
                    'placeholder' => 'Ex: Breaking bad'
                ]
            ])
            ->add('summary', TextareaType::class,[
                'label' => 'Description du programme',
                'attr' => [
                    'placeholder' => 'Description du programme'
                ]
            ])
            ->add('poster', UrlType::class,[
                'label' => 'Image du programme',
                'attr' => [
                    'placeholder' => 'Entrez l\'url de l\'affiche'
                ]
            ])
            ->add('category', null, ['choice_label' => 'name'
            ])
            ->add('actors', EntityType::class, [

                'class' => Actor::class,
            
                'choice_label' => 'name',
            
                'multiple' => true,
            
                'expanded' => true,  
                
                'by_reference' => false                  
            ]);
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Program::class,
        ]);
    }
}