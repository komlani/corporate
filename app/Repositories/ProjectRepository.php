<?php

namespace App\Repositories;

use App\Models\Project;

class ProjectRepository
{
    protected $project;

    public function __construct(Project $project)
    {
        $this->project = $project;
    }

    public function morphMediasDescriptionLinkwithProjectCategoryCustomer_EnterpriseOrClientWithOfficialHuman()
    {
        return $this->project->with(['medias' => function ($query) {
            $query->select(['id', 'mediaable_id', 'link']);
        }, 'description' => function ($query) {
            $query->select(['id', 'descriptionable_id', 'title', 'content']);
        }, 'link' => function ($query) {
            $query->select(['id', 'linkable_id', 'url']);
        }, 'projectCategory' => function ($query) {
            $query->select(['id', 'name']);
        }, 'customer' => function ($query) {
            $query->select(['id', 'customer_type_id'])
                ->with(['enterprise' => function ($query) {
                    $query->select(['id', 'customer_id', 'name']);
                }, 'client' => function ($query) {
                    $query->select(['id', 'customer_id', 'official_id'])
                        ->with(['official' => function ($query) {
                            $query->select(['id', 'human_id'])
                                ->with(['human' => function ($query) {
                                    $query->select(['id', 'first_name', 'last_name']);
                                }]);
                        }]);
                }]);
        }])->get([
            'id',
            'customer_id',
            'project_category_id',
            'name',
            'realization_date'
        ]);
    }

    public function morphMediasDescriptionLinkwithProjectCategoryCustomer_EnterpriseOrClientWithOfficialHumanFindById($id)
    {
        return $this->project->whereId($id)
            ->with(['medias' => function ($query) {
                $query->select(['id', 'mediaable_id', 'link']);
            }, 'description' => function ($query) {
                $query->select(['id', 'descriptionable_id', 'title', 'content']);
            }, 'link' => function ($query) {
                $query->select(['id', 'linkable_id', 'url']);
            }, 'projectCategory' => function ($query) {
                $query->select(['id', 'name']);
            }, 'customer' => function ($query) {
                $query->select(['id', 'customer_type_id'])
                    ->with(['enterprise' => function ($query) {
                        $query->select(['id', 'customer_id', 'name']);
                    }, 'client' => function ($query) {
                        $query->select(['id', 'customer_id', 'official_id'])
                            ->with(['official' => function ($query) {
                                $query->select(['id', 'human_id'])
                                    ->with(['human' => function ($query) {
                                        $query->select(['id', 'first_name', 'last_name']);
                                    }]);
                            }]);
                    }]);
            }])->get([
                'id',
                'customer_id',
                'project_category_id',
                'name',
                'realization_date'
            ]);
    }
}
