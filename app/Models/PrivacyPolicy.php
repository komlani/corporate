<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class PrivacyPolicy
 *
 * @property int $id
 * @property int $item_id
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Item $item
 *
 * @package App\Models
 */
class PrivacyPolicy extends Model
{
    protected $table = 'privacy_policies';

    protected $casts = [
        'item_id' => 'int'
    ];

    protected $fillable = [
        'item_id'
    ];

    public function item()
    {
        return $this->belongsTo(Item::class);
    }

    public function corporation()
    {
        return $this->belongsTo(Corporation::class);
    }

    public function descriptions()
    {
        return $this->morphMany(Description::class, 'descriptionable');
    }
}
