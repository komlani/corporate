<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Service
 *
 * @property int $id
 * @property int $iconable_item_id
 * @property bool $is_featured
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property IconableItem $iconable_item
 *
 * @package App\Models
 */
class Service extends Model
{
	protected $table = 'services';

	protected $casts = [
		'iconable_item_id' => 'int',
		'is_featured' => 'bool'
	];

	protected $fillable = [
		'iconable_item_id',
		'is_featured'
	];

	public function iconableItem()
	{
		return $this->belongsTo(IconableItem::class);
	}
}
