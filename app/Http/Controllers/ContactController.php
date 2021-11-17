<?php

namespace App\Http\Controllers;

use App\Services\CorporationService;
use App\Services\SectionService;

class ContactController extends Controller
{
    public function __invoke(
        CorporationService $corporation,
        SectionService $section
    )
    {
        return view('pages.contact', [
            'corporationName' => $corporation->name(),
            'corporationContacts' => $corporation->contacts(),
            'corporationSocialLinks' => $section->socialLinks(),
        ]);
    }
}
