<?php

namespace App\Services;

use App\Repositories\SkillRepository;

class SkillService
{
    protected $skill;

    public function __construct(SkillRepository $skill)
    {
        $this->skill = $skill;
    }

    public function find()
    {
        return $this->skill->find();
    }
}
