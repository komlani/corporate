<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;

class Service extends Component
{
    public $section;

    public function __construct(SectionService $service)
    {
        $this->section = $service->serviceSectionData();
    }

    public function render()
    {
        return view('components.guest.service');
    }
}
