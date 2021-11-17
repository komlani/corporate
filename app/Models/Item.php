<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Item
 *
 * @property int $id
 * @property int $item_type_id
 * @property int $section_id
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Section $section
 * @property ItemType $item_type
 * @property Collection|Client[] $clients
 * @property Collection|Employee[] $employees
 * @property Collection|Enterprise[] $enterprises
 * @property Collection|Faq[] $faqs
 * @property Collection|Icon[] $icons
 * @property Collection|Pricing[] $pricings
 * @property Collection|Project[] $projects
 * @property Collection|Skill[] $skills
 *
 * @package App\Models
 */
class Item extends Model
{
	protected $table = 'items';

	protected $casts = [
		'item_type_id' => 'int',
		'section_id' => 'int'
	];

	protected $fillable = [
		'item_type_id',
		'section_id'
	];

	public function section()
	{
		return $this->belongsTo(Section::class);
	}

	public function itemType()
	{
		return $this->belongsTo(ItemType::class);
	}

	public function client()
	{
		return $this->hasOne(Client::class);
	}

	public function employee()
	{
		return $this->hasOne(Employee::class);
	}

	public function enterprises()
	{
		return $this->hasMany(Enterprise::class);
	}

	public function faq()
	{
		return $this->hasOne(Faq::class);
	}

	public function icons()
	{
		return $this->belongsToMany(Icon::class, 'iconable_items')
					->withPivot('id', 'title', 'value')
					->withTimestamps();
	}

	public function pricing()
	{
		return $this->hasOne(Pricing::class);
	}

    public function iconableItem()
	{
		return $this->hasOne(IconableItem::class);
	}

	public function project()
	{
		return $this->hasOne(Project::class);
	}

	public function skills()
	{
		return $this->hasMany(Skill::class);
	}
}
