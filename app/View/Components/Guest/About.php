<?php

namespace App\View\Components\Guest;

use App\Services\SectionService;
use Illuminate\View\Component;

class About extends Component
{
    public $section;

    public function __construct(SectionService $service)
    {
        $this->section = $service->aboutSectionData();
    }

    public function render()
    {
        return view('components.guest.about');
    }
}
