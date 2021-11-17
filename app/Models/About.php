<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class About
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
class About extends Model
{
	protected $table = 'abouts';

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
