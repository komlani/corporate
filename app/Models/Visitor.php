<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Visitor
 * 
 * @property int $id
 * @property int $human_id
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Human $human
 * @property Collection|Questioning[] $questionings
 *
 * @package App\Models
 */
class Visitor extends Model
{
	protected $table = 'visitors';

	protected $casts = [
		'human_id' => 'int'
	];

	protected $fillable = [
		'human_id'
	];

	public function human()
	{
		return $this->belongsTo(Human::class);
	}

	public function questionings()
	{
		return $this->hasMany(Questioning::class);
	}
}
