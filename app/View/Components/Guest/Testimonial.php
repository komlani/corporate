<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;

class Testimonial extends Component
{
    public $section;

    public function __construct(SectionService $service)
    {
        $this->section = $service->testimonialSectionData();
    }

    public function render()
    {
        return view('components.guest.testimonial');
    }
}
