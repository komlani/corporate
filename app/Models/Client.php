<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Client
 *
 * @property int $id
 * @property int $official_id
 * @property int $customer_id
 * @property int $item_id
 * @property string $avatar
 * @property string $message
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Customer $customer
 * @property Item $item
 * @property Official $official
 *
 * @package App\Models
 */
class Client extends Model
{
	protected $table = 'clients';

	protected $casts = [
		'official_id' => 'int',
		'customer_id' => 'int',
		'item_id' => 'int'
	];

	protected $fillable = [
		'official_id',
		'customer_id',
		'item_id',
		'avatar',
		'message'
	];

	public function customer()
	{
		return $this->belongsTo(Customer::class);
	}

	public function item()
	{
		return $this->belongsTo(Item::class);
	}

	public function official()
	{
		return $this->belongsTo(Official::class);
	}
    
}
