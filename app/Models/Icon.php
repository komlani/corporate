<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;

/**
 * Class Icon
 *
 * @property int $id
 * @property string $class
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Collection|ContactType[] $contact_types
 * @property Collection|LinkType[] $link_types
 *
 * @package App\Models
 */
class Icon extends Model
{
	protected $table = 'icons';

	protected $fillable = [
		'class',
        'is_extended'
	];

	public function contactType()
	{
		return $this->hasOne(ContactType::class);
	}

	public function linkType()
	{
		return $this->hasOne(LinkType::class);
	}

}
