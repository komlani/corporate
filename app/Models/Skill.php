<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Skill
 * 
 * @property int $id
 * @property int $item_id
 * @property string $title
 * @property string $value
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Item $item
 *
 * @package App\Models
 */
class Skill extends Model
{
	protected $table = 'skills';

	protected $casts = [
		'item_id' => 'int'
	];

	protected $fillable = [
		'item_id',
		'title',
		'value'
	];

	public function item()
	{
		return $this->belongsTo(Item::class);
	}
}
