<?php

namespace App\Services;

use App\Repositories\FaqRepository;

class FaqService
{
    protected $faq;

    public function __construct(FaqRepository $faq)
    {
        $this->faq = $faq;
    }

    public function pageData()
    {
        return $this->faq->find();
    }
}
