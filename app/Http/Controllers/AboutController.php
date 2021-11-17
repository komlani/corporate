<?php

namespace App\Http\Controllers;

use App\Services\AboutService;

class AboutController extends Controller
{
    public function __invoke(AboutService $about)
    {
        return view('pages.about', ['section' => $about->pageData()]);
    }
}
