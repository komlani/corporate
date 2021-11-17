<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class FeaturePricing
 * 
 * @property int $id
 * @property int $pricing_id
 * @property int $feature_id
 * @property bool $is_active
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Feature $feature
 * @property Pricing $pricing
 *
 * @package App\Models
 */
class FeaturePricing extends Model
{
	protected $table = 'feature_pricing';

	protected $casts = [
		'pricing_id' => 'int',
		'feature_id' => 'int',
		'is_active' => 'bool'
	];

	protected $fillable = [
		'pricing_id',
		'feature_id',
		'is_active'
	];

	public function feature()
	{
		return $this->belongsTo(Feature::class);
	}

	public function pricing()
	{
		return $this->belongsTo(Pricing::class);
	}
}
