<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\SectionService;
use App\Services\ProjectCategoryService;

class Portfolio extends Component
{
    public $section;
    public $projectCategories;

    public function __construct(
        ProjectCategoryService $projectCategory,
        SectionService $section
    ) {
        $this->projectCategories = $projectCategory->find();
        $this->section = $section->portfolioData();
    }

    public function render()
    {
        return view('components.guest.portfolio');
    }
}
