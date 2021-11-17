<?php

namespace App\View\Components\Guest;

use Illuminate\View\Component;
use App\Services\TopBarService;

class TopBar extends Component
{
    public $contacts;
    public $socialLinks;

    public function __construct(TopBarService $corporation)
    {
        $this->contacts = $corporation->topBarContacts();
        $this->socialLinks = $corporation->topBarSocialLinks();
    }

    public function render()
    {
        return view('components.guest.top-bar');
    }
}
