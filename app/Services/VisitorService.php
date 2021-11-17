<?php

namespace App\Services;

use App\Repositories\HumanRepository;
use App\Repositories\ContactRepository;
use App\Repositories\QuestioningRepository;

class VisitorService
{
    protected $contact;
    protected $human;
    protected $questioning;

    public function __construct(
        ContactRepository $contact,
        HumanRepository $human,
        QuestioningRepository $questioning
    ) {
        $this->contact = $contact;
        $this->human = $human;
        $this->questioning = $questioning;
    }

    public function createHuman($request)
    {
        return $this->human->create($request);
    }

    public function createQuestioning($request, $human)
    {
        return $this->questioning->create($request, $human);
    }

    public function createContact($request, $human)
    {
        return $this->contact->create($request, $human);
    }
}
