<?php

namespace App\View\Components\Guest;

use App\Services\SkillService;
use Illuminate\View\Component;

class Skill extends Component
{
    public $skills;

    public function __construct(SkillService $service)
    {
        $this->skills = $service->find();
    }

    public function render()
    {
        return view('components.guest.skill');
    }
}
