<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class MediaType
 * 
 * @property int $id
 * @property string $name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Collection|Media[] $media
 *
 * @package App\Models
 */
class MediaType extends Model
{
	protected $table = 'media_types';

	protected $fillable = [
		'name'
	];

	public function media()
	{
		return $this->hasMany(Media::class);
	}
}
