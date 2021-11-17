<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;

class Faq extends Component
{
    public $section;

    public function __construct(SectionService $section)
    {
        $this->section = $section->faqSectionData();
    }

    public function render()
    {
        return view('components.guest.faq');
    }
}
