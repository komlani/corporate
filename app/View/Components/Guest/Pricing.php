<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;

class Pricing extends Component
{
    public $section;

    public function __construct(SectionService $section)
    {
        $this->section = $section->pricingSectionData();
    }

    public function render()
    {
        return view('components.guest.pricing');
    }
}
