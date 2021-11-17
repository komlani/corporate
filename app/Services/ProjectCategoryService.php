<?php

namespace App\Services;

use App\Repositories\ProjectCategoryRepository;

class ProjectCategoryService
{
    protected $projectCategory;

    public function __construct(ProjectCategoryRepository $projectCategory)
    {
        $this->projectCategory = $projectCategory;
    }

    public function find()
    {
        return $this->projectCategory->find();
    }
}
