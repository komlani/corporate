<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CustomerType
 * 
 * @property int $id
 * @property string $name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Collection|Customer[] $customers
 *
 * @package App\Models
 */
class CustomerType extends Model
{
	protected $table = 'customer_types';

	protected $fillable = [
		'name'
	];

	public function customers()
	{
		return $this->hasMany(Customer::class);
	}
}
