<?php

namespace App\Repositories;

use App\Models\Skill;

class SkillRepository
{
    protected $skill;

    public function __construct(Skill $skill)
    {
        $this->skill = $skill;
    }

    public function find()
    {
        return $this->skill->inRandomOrder()->get(['id', 'title', 'value']);
    }
}
