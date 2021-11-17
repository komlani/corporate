<?php

namespace App\Services;

use App\Repositories\SectionRepository;

class AboutService
{
    protected $section;

    public function __construct(SectionRepository $section)
    {
        $this->section = $section;
    }

    public function pageData()
    {
       return $this->section->about_morphMediaDescription();
    }
}
