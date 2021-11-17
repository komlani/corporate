<?php

namespace App\Services;

use App\Repositories\CorporationRepository;

class NavigationService
{
    protected $corporation;

    public function __construct(CorporationRepository $corporation)
    {
        $this->corporation = $corporation;
    }

    public function corporationName()
    {
        return $this->corporation->name();
    }

    public function corporationLogo()
    {
        return $this->corporation->logoLink();
    }


}
