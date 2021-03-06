<?php

namespace App\DataFixtures;

use Faker;
use App\Entity\Episode;
use App\Service\Slugify;
use App\DataFixtures\SeasonFixtures;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class EpisodeFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $faker = Faker\Factory::create('en_US');
        $slug = new Slugify;

        for($i = 0; $i <= 200; $i++) {
            $episode = new Episode();
            $episode->setSeason($this->getReference("season_" . rand(1, 50)));
            $episode->setTitle($title = $faker->sentence());
            $episode->setSlug($slug->generate($title));
            $episode->setNumber($faker->numberBetween($min=1, $max=16));
            $episode->setSynopsis($faker->text());
            $manager->persist($episode);
        }
        $manager->flush();
    }


    public function getDependencies()  
    {
        return [SeasonFixtures::class];  
    }
} 