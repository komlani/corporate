<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\VisitorService;
use App\Services\ValidatorService;
use Illuminate\Support\Facades\DB;

class VisitorRequestController extends Controller
{
    public function __invoke(
        Request $request,
        ValidatorService $validator,
        VisitorService $visitor
    ) {
        if ($validator->makeVisitorRequest($request)->fails()) {
            return response()->json([
                'status' => 0,
                'error' => $validator->makeVisitorRequest($request)
                    ->errors()
                    ->toArray()
            ]);
        } else {

            try {

                DB::beginTransaction();

                $human = $visitor->createHuman($request);

                if (
                    $visitor->createQuestioning($request, $human)
                    &&
                    $visitor->createContact($request, $human)
                ) {
                    DB::commit();
                    return response()->json(['status' => 1]);
                }
            } catch (\Throwable $th) {
                DB::rollBack();
                return response()->json(['status' => 2]);
            }
        }
    }
}
