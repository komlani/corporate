<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Count
 *
 * @property int $id
 * @property int $iconable_item_id
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property IconableItem $iconable_item
 *
 * @package App\Models
 */
class Count extends Model
{
	protected $table = 'counts';

	protected $casts = [
		'iconable_item_id' => 'int'
	];

	protected $fillable = [
		'iconable_item_id'
	];

	public function iconableItem()
	{
		return $this->belongsTo(IconableItem::class);
	}
}
