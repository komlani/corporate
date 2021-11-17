<?php

namespace App\Http\Controllers;

use App\Services\ServiceService;

class ServiceController extends Controller
{
    public function __invoke(ServiceService $service)
    {
        return view('pages.service', [
            'services' => $service->pageData()
        ]);
    }
}
