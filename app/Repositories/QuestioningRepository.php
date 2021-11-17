<?php

namespace App\Repositories;

use App\Models\Visitor;
use App\Models\Questioning;

class QuestioningRepository
{
    protected $questioning;

    public function __construct(Questioning $questioning)
    {
        $this->questioning = $questioning;
    }

    public function create($request, $human)
    {
        return $this->questioning->create([
            'visitor_id' => Visitor::create(['human_id' => $human->id])->id,
            'subject' => $request->subject,
            'message' => $request->message,
        ]);
    }
}
