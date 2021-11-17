<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use App\Models\Media;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Project
 *
 * @property int $id
 * @property int $project_category_id
 * @property int $customer_id
 * @property int $item_id
 * @property Carbon $realization_date
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property ProjectCategory $project_category
 * @property Customer $customer
 * @property Item $item
 *
 * @package App\Models
 */
class Project extends Model
{
    protected $table = 'projects';

    protected $casts = [
        'project_category_id' => 'int',
        'customer_id' => 'int',
        'item_id' => 'int'
    ];

    protected $dates = [
        'realization_date'
    ];

    protected $fillable = [
        'project_category_id',
        'customer_id',
        'item_id',
        'name',
        'realization_date'
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function description()
    {
        return $this->morphOne(Description::class, 'descriptionable');
    }

    public function item()
    {
        return $this->belongsTo(Item::class);
    }

    public function link()
    {
        return $this->morphOne(Link::class, 'linkable');
    }

    public function media()
    {
        return $this->morphOne(Media::class, 'mediaable');
    }

    public function medias()
    {
        return $this->morphMany(Media::class, 'mediaable');
    }

    public function projectCategory()
    {
        return $this->belongsTo(ProjectCategory::class);
    }
}
