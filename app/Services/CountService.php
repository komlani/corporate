<?php

namespace App\Services;

use App\Repositories\SectionRepository;

class CountService
{
    protected $repository;

    public function __construct(SectionRepository $repository)
    {
        $this->repository = $repository;
    }

    public function tempo()
    {
        return $this->repository->count_withItemIconableItemIcon();
    }
}
