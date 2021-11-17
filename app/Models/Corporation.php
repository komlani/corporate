<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Corporation
 *
 * @property int $id
 * @property string $name
 * @property string $description
 * @property string $slogan
 * @property Carbon $created_at
 * @property Carbon $updated_at
 *
 * @property Collection|Customer[] $customers
 * @property Collection|Human[] $humans
 * @property Collection|SitePage[] $site_pages
 * @property Collection|Team[] $teams
 *
 * @package App\Models
 */
class Corporation extends Model
{
	protected $table = 'corporations';

	protected $fillable = [
		'name',
		'description',
		'slogan'
	];

	public function customers()
	{
		return $this->hasMany(Customer::class);
	}

	public function humans()
	{
		return $this->hasMany(Human::class);
	}

	public function sitePages()
	{
		return $this->hasMany(SitePage::class);
	}

	public function team()
	{
		return $this->hasOne(Team::class);
	}

    public function termsOfService()
	{
		return $this->hasOne(TermsOfService::class);
	}

    public function privacyPolicy()
	{
		return $this->hasOne(PrivacyPolicy::class);
	}

    public function medias()
	{
		return $this->morphMany(Media::class, 'mediaable');
	}

    public function links()
    {
        return $this->morphMany(Link::class, 'linkable');
    }

    public function contacts()
    {
        return $this->morphMany(Contact::class, 'contactable');
    }

    public function logo()
    {
        return $this->morphOne(Logo::class, 'logoable');
    }
}
