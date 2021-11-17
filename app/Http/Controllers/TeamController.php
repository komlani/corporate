<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\EmployeeService;

class TeamController extends Controller
{
    public function __invoke(Request $request, EmployeeService $employee)
    {
        return view('pages.team', [
            'employees' => $employee->pageData($request->id)
        ]);
    }
}
