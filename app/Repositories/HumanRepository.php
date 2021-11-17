<?php

namespace App\Repositories;

use App\Models\Human;
use App\Models\HumanType;
use App\Models\Corporation;

class HumanRepository
{
    protected $human;

    public function __construct(Human $human)
    {
        $this->human = $human;
    }

    public function create($request)
    {
        return $this->human->create([
            'human_type_id' => HumanType::where('name', 'visitor')->get('id')->first()->id,
            'corporation_id' => Corporation::where('name', 'Corporate')->get('id')->first()->id,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
        ]);
    }
}
