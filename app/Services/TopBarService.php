<?php

namespace App\Services;

use App\Repositories\CorporationRepository;

class TopBarService
{
    protected $corporation;

    public function __construct(CorporationRepository $corporation)
    {
        $this->corporation = $corporation;
    }

    public function topBarContacts()
    {
        return $this->corporation->addressPhone();
    }

    public function topBarSocialLinks()
    {
        return $this->corporation->instagramFacebookLinkedinTwitter();
    }
}
