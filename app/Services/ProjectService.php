<?php

namespace App\Services;

use App\Repositories\ProjectRepository;

class ProjectService
{
    protected $project;

    public function __construct(ProjectRepository $project)
    {
        $this->project = $project;
    }

    public function pageData($id)
    {
        return $id
        ? $this->project->morphMediasDescriptionLinkwithProjectCategoryCustomer_EnterpriseOrClientWithOfficialHumanFindById($id)
        : $this->project->morphMediasDescriptionLinkwithProjectCategoryCustomer_EnterpriseOrClientWithOfficialHuman();
    }
}
