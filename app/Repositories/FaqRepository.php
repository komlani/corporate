<?php

namespace App\Repositories;

use App\Models\Faq;

class FaqRepository
{
    protected $faq;

    public function __construct(Faq $faq)
    {
        $this->faq = $faq;
    }

    public function find()
    {
        return $this->faq->with(['description' => function ($query) {
            $query->select(['id', 'descriptionable_id', 'title', 'content']);
        }])->get(['id']);
    }
}
