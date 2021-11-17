<?php

namespace App\Repositories;

use App\Models\Service;

class ServiceRepository
{
    protected $service;

    public function __construct(Service $service)
    {
        $this->service = $service;
    }

    public function find()
    {
        return $this->service->with(['iconableItem' => function ($query) {
            $query->select(['id', 'title']);
        }])->get(['id', 'iconable_item_id'])->shuffle()->take(4);
    }

    public function findWithIcon()
    {
        return $this->service->with(['iconableItem' => function ($query) {
            $query->select(['id', 'icon_id',  'title', 'value'])
                ->with(['icon:id,class,is_extended']);
        }])->get(['id', 'iconable_item_id']);
    }

    public function findByIdWithIcon()
    {
        return $this->service->whereId(request()->input('id'))
            ->with(['iconableItem' => function ($query) {
                $query->select(['id', 'icon_id',  'title', 'value'])
                    ->with(['icon:id,class,is_extended']);
            }])->get(['id', 'iconable_item_id']);
    }

    public function fourFeaturedInRadomOrder()
    {
        return $this->service->whereIsFeatured(1)->with(['iconableItem' => function ($query) {
            $query->select(['id', 'icon_id'])
                ->with(['icon:id,class,is_extended']);
        }])->inRandomOrder()->take(4)->get(['id', 'iconable_item_id']);
    }
}
