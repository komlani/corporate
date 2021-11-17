<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;
use App\Services\CorporationService;

class Contact extends Component
{
    public $geolocalizationLink;
    public $section;

    public function __construct(CorporationService $corporation, SectionService $section)
    {
        $this->geolocalizationLink = $corporation->geolocalizationLink();
        $this->section = $section->contactSectionData();
    }

    public function render()
    {
        return view('components.guest.contact');
    }
}
