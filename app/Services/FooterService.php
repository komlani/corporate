<?php

namespace App\Services;

use App\Repositories\ServiceRepository;
use App\Repositories\CorporationRepository;

class FooterService
{
    protected $corporation;
    protected $service;

    public function __construct(
        CorporationRepository $corporation,
        ServiceRepository $service
        )
    {
        $this->corporation = $corporation;
        $this->service = $service;
    }

    public function contacts()
    {
        return $this->corporation->addressEmailPhone();
    }

    public function corporationName()
    {
        return $this->corporation->name();
    }

    public function services()
    {
        return $this->service->find();
    }

    public function sociallinks()
    {
        return $this->corporation->withFacebookInstagramLinkedinTwitterYoutubeWithIcons();
    }
}
