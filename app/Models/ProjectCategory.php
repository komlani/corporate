<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ProjectCategory
 * 
 * @property int $id
 * @property string $name
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * 
 * @property Collection|Project[] $projects
 *
 * @package App\Models
 */
class ProjectCategory extends Model
{
	protected $table = 'project_categories';

	protected $fillable = [
		'name'
	];

	public function projects()
	{
		return $this->hasMany(Project::class);
	}
}
