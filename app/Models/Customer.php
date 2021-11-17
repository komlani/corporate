<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Customer
 *
 * @property int $id
 * @property int $corporation_id
 * @property int $customer_type_id
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Corporation $corporation
 * @property CustomerType $customer_type
 * @property Collection|Enterprise[] $enterprises
 *
 * @package App\Models
 */
class Customer extends Model
{
    protected $table = 'customers';

    protected $casts = [
        'corporation_id' => 'int',
        'customer_type_id' => 'int'
    ];

    protected $fillable = [
        'corporation_id',
        'customer_type_id'
    ];

    public function corporation()
    {
        return $this->belongsTo(Corporation::class);
    }

    public function client()
    {
        return $this->hasOne(Client::class);
    }

    public function customerType()
    {
        return $this->belongsTo(CustomerType::class);
    }

    public function enterprise()
    {
        return $this->hasOne(Enterprise::class);
    }

    public function project()
    {
        return $this->hasOne(Project::class);
    }
}
