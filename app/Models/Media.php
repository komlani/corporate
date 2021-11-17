<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Media
 *
 * @property int $id
 * @property int $media_type_id
 * @property int $media_category_id
 * @property int $mediaable_id
 * @property string $mediaable_type
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property MediaType $media_type
 * @property MediaCategory $media_category
 *
 * @package App\Models
 */
class Media extends Model
{
	protected $table = 'medias';

	protected $casts = [
		'media_type_id' => 'int',
		'media_category_id' => 'int',
		'mediaable_id' => 'int'
	];

	protected $fillable = [
		'media_type_id',
		'media_category_id',
		'mediaable_id',
		'mediaable_type'
	];

    public function mediaable()
    {
        return $this->morphTo();
    }

	public function mediaType()
	{
		return $this->belongsTo(MediaType::class);
	}

	public function mediaCategory()
	{
		return $this->belongsTo(MediaCategory::class);
	}
}
