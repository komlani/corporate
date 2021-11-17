<?php

namespace App\Services;

use App\Repositories\CorporationRepository;

class CorporationService
{
    protected $corporation;

    public function __construct(CorporationRepository $corporation)
    {
        $this->corporation = $corporation;
    }

    public function corporationId()
    {
        return $this->corporation->id();
    }

    public function geolocalizationLink()
    {
        return $this->corporation->geolocalizationLink();
    }

    public function name()
    {
        return $this->corporation->name();
    }

    public function contacts()
    {
        return $this->corporation->morphContacts_addressEmailPhoneWithIconMorphDescription();
    }

    public function socialLinks()
    {
        return $this->corporation->withFacebookInstagramLinkedinTwitterYoutubeWithIcons();
    }


}
