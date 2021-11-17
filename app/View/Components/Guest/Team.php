<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;

class Team extends Component
{
    public $section;

    public function __construct(SectionService $section)
    {
        $this->section = $section->teamSectiondata();
    }

    public function render()
    {
        return view('components.guest.team');
    }
}
