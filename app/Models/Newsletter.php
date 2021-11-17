<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Newsletter
 * 
 * @property int $id
 * @property int $corporation_id
 * @property string $email
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Corporation $corporation
 *
 * @package App\Models
 */
class Newsletter extends Model
{
	protected $table = 'newsletters';

	protected $casts = [
		'corporation_id' => 'int'
	];

	protected $fillable = [
		'corporation_id',
		'email'
	];

	public function corporation()
	{
		return $this->belongsTo(Corporation::class);
	}
}
