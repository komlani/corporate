<?php

namespace App\Services;

use App\Repositories\ServiceRepository;

class ServiceService
{
    protected $service;

    public function __construct(ServiceRepository $service)
    {
        $this->service = $service;
    }

    public function fourFeaturedInRadomOrder()
    {
        return $this->service->fourFeaturedInRadomOrder();
    }

    public function pageData()
    {
        return request()->input('id')
            ? $this->service->findByIdWithIcon()
            : $this->service->findWithIcon();
    }
}
