<?php

namespace App\View\Components\Guest;

use App\Services\EnterpriseService;
use Illuminate\View\Component;

class Client extends Component
{
    public $clients;

    public function __construct(EnterpriseService $service)
    {
        $this->clients = $service->clientSectionData();
    }

    public function render()
    {
        return view('components.guest.client');
    }
}
