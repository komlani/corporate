<?php

namespace App\Services;

use App\Repositories\PrivacyPolicyRepository;

class PrivacyPolicyService
{
    protected $privacyPolicy;

    public function __construct(PrivacyPolicyRepository $privacyPolicy)
    {
        $this->privacyPolicy = $privacyPolicy;
    }

    public function pageData()
    {
        return $this->privacyPolicy->whereLastCorporationWithDescriptions();
    }
}
