<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class SitePage
 *
 * @property int $id
 * @property int $corporation_id
 * @property string $name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Corporation $corporation
 * @property Collection|Section[] $sections
 *
 * @package App\Models
 */
class SitePage extends Model
{
	protected $table = 'site_pages';

	protected $casts = [
		'corporation_id' => 'int'
	];

	protected $fillable = [
		'corporation_id',
		'name'
	];

	public function corporation()
	{
		return $this->belongsTo(Corporation::class);
	}

	public function section()
	{
		return $this->hasOne(Section::class);
	}
}
