<?php

namespace App\Http\Controllers\Api\Freelancer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Modules\Wallet\Entities\WithdrawRequest;

class WithdrawController extends Controller
{
    public function withdraw_history()
    {
        $all_request  = WithdrawRequest::where('user_id',auth('sanctum')->user()->id)->latest()->paginate(10)->withQueryString();
        if($all_request){
            return response()->json([
                'histories' => $all_request,
                'image_path' => asset('assets/uploads/withdraw-request/'),
            ]);
        }
        return response()->json(['msg' => __('No history found.')]);
    }
}
