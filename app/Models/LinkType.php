<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class LinkType
 *
 * @property int $id
 * @property int $icon_id
 * @property string $name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Icon $icon
 * @property Collection|Link[] $links
 *
 * @package App\Models
 */
class LinkType extends Model
{
	protected $table = 'link_types';

	protected $casts = [
		'icon_id' => 'int'
	];

	protected $fillable = [
		'icon_id',
		'name'
	];

	public function icon()
	{
		return $this->belongsTo(Icon::class);
	}

    public function links()
	{
        return $this->hasMany(Link::class);
	}

}
