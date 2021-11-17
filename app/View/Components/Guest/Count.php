<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;

class Count extends Component
{
    public $section;

    public function __construct(SectionService $service)
    {
        $this->section = $service->countSectionData();
    }

    public function render()
    {
        return view('components.guest.count');
    }
}
