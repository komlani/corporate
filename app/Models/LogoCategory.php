<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class LogoCategory
 *
 * @property int $id
 * @property string $name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Collection|Logo[] $logos
 *
 * @package App\Models
 */
class LogoCategory extends Model
{
	protected $table = 'logo_categories';

	protected $fillable = [
		'name'
	];

	public function logos()
	{
		return $this->hasMany(Logo::class, 'logo_categoy_id');
	}
}
