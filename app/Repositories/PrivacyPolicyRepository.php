<?php

namespace App\Repositories;

use App\Models\Corporation;
use App\Models\PrivacyPolicy;

class PrivacyPolicyRepository
{
    protected $privacyPolicy;

    public function __construct(PrivacyPolicy $privacyPolicy)
    {
        $this->privacyPolicy = $privacyPolicy;
    }

    public function whereLastCorporationWithDescriptions()
    {
        return $this->privacyPolicy->with(['corporation' => function ($query) {
            $query->select('id')->whereId(Corporation::latest()->pluck('id'));
        }, 'descriptions' => function ($query) {
            $query->select(['id', 'descriptionable_id', 'title', 'content']);
        }])->get(['id', 'corporation_id', 'intro'])->first();
    }
}
