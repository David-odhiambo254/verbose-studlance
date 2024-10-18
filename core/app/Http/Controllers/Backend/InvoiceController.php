<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Barryvdh\DomPDF\Facade\Pdf;

class InvoiceController extends Controller
{
    public function generate_invoice($order_id)
    {
        $order = Order::with(['user','freelancer'])
            ->where('id', $order_id)->firstOrFail();

        $pdf = Pdf::loadView('backend.pages.orders.order-invoice',compact('order'));
        return $pdf->stream('billing-invoice');
    }
}
