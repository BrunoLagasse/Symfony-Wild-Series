<?php

namespace App\Controller;

use App\Entity\Program;
use App\Entity\Season;
use App\Entity\Episode;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/programs", name="program_")
 */
class ProgramController extends AbstractController
{
    /**
     * Show all rows from Program's entity
     * 
     * @Route("/", name="index")
     */
    public function index(): Response
    {
        $programs = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findAll();

        return $this->render(
            'program/index.html.twig',
            ['programs' => $programs]
        );
    }
    /**
     * @Route("/{id}", requirements={"id"="\d+"}, methods={"GET"}, name="show")
     * @return Response
     */
    public function show(int $id): Response
    {
        $program = $this->getDoctrine()
            ->getRepository(Program::class)
            ->findOneBy(['id' => $id]);

        if (!$program) {
            throw $this->createNotFoundException(
                'No program with id : ' . $id . ' found in program\'s table.'
            );
        }

        $seasons = $program->getSeasons();

        return $this->render('program/show.html.twig', [
            'program' => $program,
            'seasons' => $seasons
        ]);
    }
    /**
     * @Route("/{programId}/seasons/{seasonId}", requirements={"id"="\d+"}, methods={"GET"}, name="season_show")
     * @return Response
     */
    public function showSeason(int $programId, int $seasonId)
    {
        $program = $this->getDoctrine()
        ->getRepository(Program::class)
        ->findOneBy(['id' => $programId]);

        $seasons = $this->getDoctrine()
        ->getRepository(Season::class)
        ->findOneBy(['id' => $seasonId]);

        $episodes = $seasons->getEpisodes();

        return $this->render('program/season_show.html.twig', [
            'program' => $program,
            'seasons' => $seasons,
            'episodes' => $episodes
        ]);
    }
}