<?php

namespace App\Http\Controllers;

use App\Services\FaqService;

class FaqController extends Controller
{
    public function __invoke(FaqService $faq)
    {
        return view('pages.faq', ['faqs' => $faq->pageData(request()->input('id'))]);
    }
}
