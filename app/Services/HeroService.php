<?php

namespace App\Services;

use App\Repositories\CorporationRepository;

class HeroService
{
    protected $corporation;

    public function __construct(CorporationRepository $corporation)
    {
        $this->corporation = $corporation;
    }

    public function nameSlogan()
    {
        return $this->corporation->nameSlogan();
    }

    public function heroBackground()
    {
        return $this->corporation->heroBackgroundLink();
    }

    public function youtubeLink()
    {
        return $this->corporation->youtubeLink();
    }


}
