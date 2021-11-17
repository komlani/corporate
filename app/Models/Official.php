<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Official
 * 
 * @property int $id
 * @property int $human_id
 * @property int $work_id
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Human $human
 * @property Work $work
 * @property Collection|Client[] $clients
 *
 * @package App\Models
 */
class Official extends Model
{
	protected $table = 'officials';

	protected $casts = [
		'human_id' => 'int',
		'work_id' => 'int'
	];

	protected $fillable = [
		'human_id',
		'work_id'
	];

	public function human()
	{
		return $this->belongsTo(Human::class);
	}

	public function work()
	{
		return $this->belongsTo(Work::class);
	}

	public function clients()
	{
		return $this->hasMany(Client::class);
	}
}
