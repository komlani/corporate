<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ItemType
 * 
 * @property int $id
 * @property string $name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Collection|Item[] $items
 *
 * @package App\Models
 */
class ItemType extends Model
{
	protected $table = 'item_types';

	protected $fillable = [
		'name'
	];

	public function items()
	{
		return $this->hasMany(Item::class);
	}
}
