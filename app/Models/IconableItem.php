<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class IconableItem
 *
 * @property int $id
 * @property int $item_id
 * @property int $icon_id
 * @property string $title
 * @property string $value
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Icon $icon
 * @property Item $item
 * @property Collection|Service[] $services
 *
 * @package App\Models
 */
class IconableItem extends Model
{
	protected $table = 'iconable_items';

	protected $casts = [
		'item_id' => 'int',
		'icon_id' => 'int'
	];

	protected $fillable = [
		'item_id',
		'icon_id',
		'title',
		'value'
	];

	public function icon()
	{
		return $this->belongsTo(Icon::class);
	}

	public function item()
	{
		return $this->belongsTo(Item::class);
	}

	public function service()
	{
		return $this->hasOne(Service::class);
	}
}
