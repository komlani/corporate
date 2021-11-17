<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Faq
 *
 * @property int $id
 * @property int $item_id
 * @property string $slugable
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Item $item
 *
 * @package App\Models
 */
class Faq extends Model
{
    protected $table = 'faqs';

    protected $casts = [
        'item_id' => 'int'
    ];

    protected $fillable = [
        'item_id'
    ];

    public function description()
    {
        return $this->morphOne(Description::class, 'descriptionable');
    }

    public function item()
    {
        return $this->belongsTo(Item::class);
    }
}
