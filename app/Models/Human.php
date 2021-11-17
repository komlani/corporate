<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Human
 *
 * @property int $id
 * @property int $human_type_id
 * @property int $corporation_id
 * @property string $first_name
 * @property string $last_name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property HumanType $human_type
 * @property Corporation $corporation
 * @property Collection|Official[] $officials
 * @property Collection|Visitor[] $visitors
 *
 * @package App\Models
 */
class Human extends Model
{
	protected $table = 'humans';

	protected $casts = [
		'human_type_id' => 'int',
		'corporation_id' => 'int'
	];

	protected $fillable = [
		'human_type_id',
		'corporation_id',
		'first_name',
		'last_name'
	];

    public function getFullNameAttribute()
    {
        return ucfirst($this->first_name).' '.ucfirst($this->last_name);
    }

    /** Morphs */
    public function links()
    {
        return $this->morphMany(Link::class, 'linkable');
    }

	public function humanType()
	{
		return $this->belongsTo(HumanType::class);
	}

	public function corporation()
	{
		return $this->belongsTo(Corporation::class);
	}

	public function officials()
	{
		return $this->hasMany(Official::class);
	}

	public function visitors()
	{
		return $this->hasMany(Visitor::class);
	}
}
