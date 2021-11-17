<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TermsOfService
 *
 * @property int $id
 * @property int $corporation_id
 * @property string $intro
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Corporation $corporation
 *
 * @package App\Models
 */
class TermsOfService extends Model
{
	protected $table = 'terms_of_services';

	protected $casts = [
		'corporation_id' => 'int'
	];

	protected $fillable = [
		'corporation_id',
		'intro'
	];

	public function corporation()
	{
		return $this->belongsTo(Corporation::class);
	}

    public function descriptions()
    {
        return $this->morphMany(Description::class, 'descriptionable');
    }
}
