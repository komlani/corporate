<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\ProjectService;

class PortfolioController extends Controller
{
    public function __invoke(Request $request, ProjectService $project)
    {
        return view('pages.portfolio', ['projects' => $project->pageData($request->id)]);
    }
}
