<?php

namespace App\Repositories;

use App\Models\Employee;

class EmployeeRepository
{
    protected $employee;

    public function __construct(Employee $employee)
    {
        $this->employee = $employee;
    }

    public function withOfficial_Work_HumanLinksLinkTypeIcon()
    {
        return $this->employee->with(['official' => function ($query) {
            $query->select(['id', 'human_id', 'work_id'])
                ->with(['work' => function ($query) {
                    $query->select(['id', 'name']);
                }, 'human' => function ($query) {
                    $query->select(['id', 'first_name', 'last_name'])
                        ->with(['links' => function ($query) {
                            $query->select([
                                'id',
                                'linkable_id',
                                'link_type_id',
                                'url'
                            ])->with(['linkType' => function ($query) {
                                $query->select(['id', 'icon_id'])
                                    ->with(['icon:id,class,is_extended']);
                            }]);
                        }]);
                }]);
        }])->get(['id', 'official_id', 'profile']);
    }

    public function withOfficial_Work_HumanLinksLinkTypeIconfindById($id)
    {
        return $this->employee->whereId($id)->with(['official' => function ($query) {
            $query->select(['id', 'human_id', 'work_id'])
                ->with(['work' => function ($query) {
                    $query->select(['id', 'name']);
                }, 'human' => function ($query) {
                    $query->select(['id', 'first_name', 'last_name'])
                        ->with(['links' => function ($query) {
                            $query->select([
                                'id',
                                'linkable_id',
                                'link_type_id',
                                'url'
                            ])->with(['linkType' => function ($query) {
                                $query->select(['id', 'icon_id'])
                                    ->with(['icon:id,class,is_extended']);
                            }]);
                        }]);
                }]);
        }])->get(['id', 'official_id', 'profile']);
    }
}
