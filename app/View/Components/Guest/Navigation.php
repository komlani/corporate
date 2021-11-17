<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\NavigationService;

class Navigation extends Component
{
    // public $corporationLogo;
    public $corporationName;

    public function __construct(NavigationService $service)
    {
        // $this->corporationLogo = $service->corporationLogo();
        $this->corporationName = $service->corporationName();
    }

    public function render()
    {
        return view('components.guest.navigation');
    }
}
