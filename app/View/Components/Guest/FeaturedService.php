<?php

namespace App\View\Components\Guest;

use App\Models\Service;
use Illuminate\View\Component;

class FeaturedService extends Component
{
    public $services;

    public function __construct()
    {
        $services = Service::with(['iconableItem.icon'])
            ->whereIsFeatured(1)
            ->get()
            ->take(4)
            ->shuffle();
            
        $this->services = $services;
    }

    public function render()
    {
        return view('components.guest.featured-service');
    }
}
