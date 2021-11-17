<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Enterprise
 *
 * @property int $id
 * @property int $customer_id
 * @property int $item_id
 * @property string $name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Customer $customer
 * @property Item $item
 *
 * @package App\Models
 */
class Enterprise extends Model
{
    protected $table = 'enterprises';

    protected $casts = [
        'customer_id' => 'int',
        'item_id' => 'int'
    ];

    protected $fillable = [
        'customer_id',
        'item_id',
        'name'
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function item()
    {
        return $this->belongsTo(Item::class);
    }

    public function logo()
    {
        return $this->morphOne(Logo::class, 'logoable');
    }
}
