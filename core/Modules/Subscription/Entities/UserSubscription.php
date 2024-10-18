<?php

namespace Modules\Subscription\Entities;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class UserSubscription extends Model
{
    use HasFactory;

    protected $fillable = ['user_id','subscription_id','price','limit','expire_date','payment_gateway','payment_status','status','transaction_id','manual_payment_image'];
    protected $casts = ['status'=>'integer'];

    protected static function newFactory()
    {
        return \Modules\Subscription\Database\factories\UserSubscriptionFactory::new();
    }

    public function subscription()
    {
        return $this->belongsTo(Subscription::class,'subscription_id','id');
    }

    public function user()
    {
        return $this->belongsTo(User::class,'user_id','id');
    }
}
