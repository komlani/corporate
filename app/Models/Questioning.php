<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Questioning
 * 
 * @property int $id
 * @property int $visitor_id
 * @property string $title
 * @property string $subject
 * @property string $message
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Visitor $visitor
 *
 * @package App\Models
 */
class Questioning extends Model
{
	protected $table = 'questionings';

	protected $casts = [
		'visitor_id' => 'int'
	];

	protected $fillable = [
		'visitor_id',
		'title',
		'subject',
		'message'
	];

	public function visitor()
	{
		return $this->belongsTo(Visitor::class);
	}
}
