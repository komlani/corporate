<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Logo
 *
 * @property int $id
 * @property int $logo_categoy_id
 * @property int $logoable_id
 * @property string $logoable_type
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property LogoCategory $logo_category
 *
 * @package App\Models
 */
class Logo extends Model
{
	protected $table = 'logos';

	protected $casts = [
		'logo_categoy_id' => 'int',
		'logoable_id' => 'int'
	];

	protected $fillable = [
		'logo_categoy_id',
		'logoable_id',
		'logoable_type'
	];

	public function logoCategory()
	{
		return $this->belongsTo(LogoCategory::class, 'logo_categoy_id');
	}

    public function logoable()
    {
        return $this->morphTo();
    }
}
