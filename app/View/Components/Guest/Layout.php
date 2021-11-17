<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\PageTitleService;

class Layout extends Component
{
    public $pageTitle;

    public function __construct(PageTitleService $pageTitle)
    {
        $this->pageTitle = $pageTitle();
    }

    public function render()
    {
        return view('layouts.guest');
    }
}
