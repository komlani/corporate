<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Team
 * 
 * @property int $id
 * @property int $corporation_id
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Corporation $corporation
 * @property Collection|Employee[] $employees
 *
 * @package App\Models
 */
class Team extends Model
{
	protected $table = 'teams';

	protected $casts = [
		'corporation_id' => 'int'
	];

	protected $fillable = [
		'corporation_id'
	];

	public function corporation()
	{
		return $this->belongsTo(Corporation::class);
	}

	public function employees()
	{
		return $this->hasMany(Employee::class);
	}
}
