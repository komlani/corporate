<?php

namespace App\Repositories;

use App\Models\Enterprise;

class EnterpriseRepository
{
    protected $enteprise;

    public function __construct(Enterprise $enterprise)
    {
        $this->enterprise = $enterprise;
    }

    public function withLogo()
    {
        return $this->enterprise->with(['logo' => function ($query) {
            $query->select(['id', 'logoable_id', 'link']);
        }])->inRandomOrder()->get(['id', 'name']);
    }
}
