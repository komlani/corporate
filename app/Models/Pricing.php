<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Pricing
 * 
 * @property int $id
 * @property int $item_id
 * @property int $currency_id
 * @property string $title
 * @property float $month_price
 * @property bool $is_featured
 * @property bool $is_advanced
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Item $item
 * @property Currency $currency
 * @property Collection|Feature[] $features
 *
 * @package App\Models
 */
class Pricing extends Model
{
	protected $table = 'pricings';

	protected $casts = [
		'item_id' => 'int',
		'currency_id' => 'int',
		'month_price' => 'float',
		'is_featured' => 'bool',
		'is_advanced' => 'bool'
	];

	protected $fillable = [
		'item_id',
		'currency_id',
		'title',
		'month_price',
		'is_featured',
		'is_advanced'
	];

	public function item()
	{
		return $this->belongsTo(Item::class);
	}

	public function currency()
	{
		return $this->belongsTo(Currency::class);
	}

	public function features()
	{
		return $this->belongsToMany(Feature::class)
					->withPivot('id', 'is_active')
					->withTimestamps();
	}
}
