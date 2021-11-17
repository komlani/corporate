<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Feature
 *
 * @property int $id
 * @property string $content
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Collection|Pricing[] $pricings
 *
 * @package App\Models
 */
class Feature extends Model
{
	protected $table = 'features';

	protected $fillable = [
		'name'
	];

	public function pricings()
	{
		return $this->belongsToMany(Pricing::class)
					->withPivot('id', 'is_active')
					->withTimestamps();
	}
}
