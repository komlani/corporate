<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Link
 *
 * @property int $id
 * @property int $link_type_id
 * @property int $linkable_id
 * @property string $linkable_type
 * @property string $url
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property LinkType $link_type
 *
 * @package App\Models
 */
class Link extends Model
{
	protected $table = 'links';

	protected $casts = [
		'link_type_id' => 'int',
		'linkable_id' => 'int'
	];

	protected $fillable = [
		'link_type_id',
		'linkable_id',
		'linkable_type',
		'url'
	];

    public function linkable()
    {
        return $this->morphTo();
    }

	public function linkType()
	{
		return $this->belongsTo(LinkType::class);
	}
}
