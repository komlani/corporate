<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Description
 *
 * @property int $id
 * @property int $descriptionable_id
 * @property string $descriptionable_type
 * @property string $title
 * @property string $subtitle
 * @property string $content
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @package App\Models
 */
class Description extends Model
{
	protected $table = 'descriptions';

	protected $casts = [
		'descriptionable_id' => 'int'
	];

	protected $fillable = [
		'descriptionable_id',
		'descriptionable_type',
		'title',
		'subtitle',
		'content'
	];

    public function descriptionable()
    {
        return $this->morphTo();
    }
}
