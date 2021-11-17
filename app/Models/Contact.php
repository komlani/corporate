<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Contact
 *
 * @property int $id
 * @property int $contact_type_id
 * @property int $contactable_id
 * @property string $contactable_type
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property ContactType $contact_type
 *
 * @package App\Models
 */
class Contact extends Model
{
	protected $table = 'contacts';

	protected $casts = [
		'contact_type_id' => 'int',
		'contactable_id' => 'int'
	];

	protected $fillable = [
		'contact_type_id',
		'contactable_id',
		'contactable_type',
        'value'
	];

    public function contactable()
    {
        return $this->morphTo();
    }

	public function contactType()
	{
		return $this->belongsTo(ContactType::class);
	}

    public function description()
    {
        return $this->hasOne(Description::class, 'descriptionable_id');
    }
}
