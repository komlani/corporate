<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;

class Newsletter extends Component
{
    public $section;

    public function __construct(SectionService $section)
    {
        $this->section = $section->newsletterSectionData();
    }

    public function render()
    {
        return view('components.guest.newsletter');
    }
}
