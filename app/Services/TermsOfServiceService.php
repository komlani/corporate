<?php

namespace App\Services;

use App\Repositories\TermsOfServiceRepository;

class TermsOfServiceService
{
    protected $termsOfService;

    public function __construct(TermsOfServiceRepository $termsOfService)
    {
        $this->termsOfService = $termsOfService;
    }

    public function pageData()
    {
        return $this->termsOfService->whereLastCorporationWithDescriptions();
    }
}
