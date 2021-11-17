<?php

namespace App\Repositories;

use App\Models\ProjectCategory;

class ProjectCategoryRepository
{
    protected $projectCategory;

    public function __construct(ProjectCategory $projectCategory)
    {
        $this->projectCategory = $projectCategory;
    }

    public function find()
    {
        return $this->projectCategory->get(['id', 'name']);
    }
}
