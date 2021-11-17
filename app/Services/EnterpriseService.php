<?php

namespace App\Services;

use App\Repositories\EnterpriseRepository;

class EnterpriseService
{
    protected $repository;

    public function __construct(EnterpriseRepository $repository)
    {
        $this->repository = $repository;
    }

    public function clientSectionData()
    {
        return $this->repository->withLogo();
    }
}
