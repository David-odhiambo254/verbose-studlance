<?php

namespace App\Http\Controllers\Api\Freelancer;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function all_order()
    {
        $freelancer_id = auth('sanctum')->user()->id;

        $orders = Order::with('rating:id,order_id,rating,sender_type','user:id,image,first_name,last_name')->where('freelancer_id',$freelancer_id)->where('payment_status','complete')->latest()->paginate(10)->withQueryString();
        $queue_orders =  Order::where('freelancer_id',$freelancer_id)->where('payment_status','complete')->where('status',0)->count();
        $active_orders =  Order::where('freelancer_id',$freelancer_id)->where('payment_status','complete')->where('status',1)->count();
        $complete_orders = Order::where('freelancer_id',$freelancer_id)->where('payment_status','complete')->where('status',3)->count();
        $cancel_orders = Order::where('freelancer_id',$freelancer_id)->where('payment_status','complete')->where('status',4)->count();


        if($orders){
        return response()->json([
                'orders' => $orders,
                'total_count' => $orders->total(),
                'queue_orders' => $queue_orders,
                'active_orders' => $active_orders,
                'complete_orders' => $complete_orders,
                'cancel_orders' => $cancel_orders,
                'image_path' => asset('assets/uploads/profile/'),
            ]);
        }
        return response()->json(['msg' => __('no order found.')]);

    }

    public function order_details($id)
    {
        $freelancer_id = auth('sanctum')->user()->id;
        $order_details = Order::with(['user:id,first_name,last_name,email,phone,country_id,state_id,city_id,image,username','order_submit_history','rating:id,order_id,rating,sender_type','order_mile_stones'])
            ->where('id',$id)->where('freelancer_id',$freelancer_id)->first();
        if($order_details){
            return response()->json([
                'order_details' => $order_details,
                'image_path' => asset('assets/uploads/profile/'.$order_details?->user?->image),
                'order_submit_history_path' => asset('assets/uploads/attachment/order/'),
                'country' => $order_details?->user?->user_country?->country,
                'state' => $order_details?->user?->user_state?->state,
                'city' => $order_details?->user?->user_city?->city,
            ]);
        }
        return response()->json(['msg' => __('no order found.')]);
    }
}
