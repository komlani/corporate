<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\FooterService;

class Footer extends Component
{
    public $corporationName;
    public $footerContacts;
    public $services;
    public $socialLinks;

    public function __construct(FooterService $footer)
    {
        $this->corporationName = $footer->corporationName();
        $this->footerContacts = $footer->contacts();
        $this->services = $footer->services();
        $this->socialLinks = $footer->sociallinks();
    }

    public function render()
    {
        return view('components.guest.footer');
    }
}
