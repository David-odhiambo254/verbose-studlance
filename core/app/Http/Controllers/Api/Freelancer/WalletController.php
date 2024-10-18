<?php

namespace App\Http\Controllers\Api\Freelancer;

use App\Http\Controllers\Controller;
use Modules\Wallet\Entities\Wallet;
use Modules\Wallet\Entities\WalletHistory;

class WalletController extends Controller
{
    public function wallet_history()
    {
        $user_id = auth('sanctum')->user()->id;
        $all_histories = WalletHistory::where('user_id',$user_id)->latest()->paginate(10)->withQueryString();
        $wallet_balance = Wallet::where('user_id',$user_id)->first();
        $total_wallet_balance = $wallet_balance->balance;

        if($user_id){
            return response()->json([
                'histories' => $all_histories,
                'wallet_balance' => $total_wallet_balance,
            ]);
        }
        return response()->json(['msg' => __('no history found.')]);
    }

}
