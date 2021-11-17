<?php

namespace App\Http\Controllers;

use App\Services\PrivacyPolicyService;

class PrivacyPolicyController extends Controller
{
    public function __invoke(PrivacyPolicyService $privacyPolicy)
    {
        return view('pages.privacy-policy', [
            'privacyPolicy' => $privacyPolicy->pageData()
        ]);
    }
}
