<?php

namespace App\Http\Controllers;

use App\Services\TermsOfServiceService;

class TermsOfServiceController extends Controller
{
    public function __invoke(TermsOfServiceService $termsOfService)
    {
        return view('pages.terms-of-service',[
            'termsOfService' => $termsOfService->pageData(),
        ]);
    }
}
