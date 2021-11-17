<?php

namespace App\Repositories;

use App\Models\LinkType;
use App\Models\ContactType;
use App\Models\Corporation;
use App\Models\MediaCategory;

class CorporationRepository
{
    protected $corporation;

    public function __construct(Corporation $corporation)
    {
        $this->corporation = $corporation;
    }

    public function id()
    {
        return $this->corporation->latest()->get('id')->first()->id;
    }

    public function addressPhone()
    {
        return $this->corporation->with(['contacts' => function ($query) {
            $query->select(['id', 'contact_type_id', 'contactable_id', 'value'])
                ->whereIn('contact_type_id', ContactType::whereIn('name', [
                    'email', 'phone'
                ])->pluck('id'))->with(['contactType' => function ($query) {
                    $query->select(['id', 'icon_id', 'name'])
                        ->with(['icon:id,class,is_extended']);
                }]);
        }])->latest()->get(['id'])->first()->contacts;
    }

    public function instagramFacebookLinkedinTwitter()
    {
        return $this->corporation->with(['links' => function ($query) {
            $query->select(['id', 'link_type_id', 'linkable_id', 'url'])
                ->whereIn('link_type_id', LinkType::whereIn('name', [
                    'instagram', 'facebook', 'linkedin', 'twitter', 'youtube'
                ])->pluck('id'))->with(['linkType' => function ($query) {
                    $query->select(['id', 'icon_id', 'name'])
                        ->with(['icon:id,class,is_extended']);
                }]);
        }])->latest()->get(['id'])->first()->links->shuffle();
    }

    public function heroBackgroundLink()
    {
        return $this->corporation->with(['medias' => function ($query) {
            $query->select(['id', 'media_category_id', 'mediaable_id', 'link'])
                ->where('media_category_id', MediaCategory::where('name', 'hero')
                    ->pluck('id'))->with(['mediaCategory' => function ($query) {
                    $query->select(['id', 'name']);
                }]);
        }])->latest()->get(['id'])->first()->medias->first()->link;
    }

    public function geolocalizationLink()
    {
        return $this->corporation->with(['links' => function ($q) {
            $q->select(['id', 'link_type_id', 'linkable_id', 'url'])
                ->where('link_type_id', LinkType::where('name', 'geolocalization url')
                    ->pluck('id'))->with(['linkType' => function ($q) {
                    $q->select(['id', 'name']);
                }]);
        }])->latest()->get(['id'])->first()->links->first()->url;
    }

    public function logoLink()
    {
        return $this->corporation->with(['logo' => function ($query) {
            $query->select(['id', 'logoable_id', 'link']);
        }])->latest()->get(['id'])->first()->logo->link;
    }

    public function name()
    {
        return $this->corporation->latest()->get(['name'])->first()->name;
    }

    public function nameSlogan()
    {
        return $this->corporation->latest()->get(['name', 'slogan'])->first();
    }

    public function youtubeLink()
    {
        return $this->corporation->with(['links' => function ($query) {
            $query->select(['id', 'link_type_id', 'linkable_id', 'url'])
                ->where('link_type_id', LinkType::where('name', 'youtube')
                    ->pluck('id'))->with(['linkType' => function ($query) {
                    $query->select(['id', 'name']);
                }]);
        }])->latest()->get(['id'])->first()->links->first()->url;
    }

    public function addressEmailPhone()
    {
        return $this->corporation->with(['contacts' => function ($query) {
            $query->select(['id', 'contact_type_id', 'contactable_id', 'value'])
                ->whereIn('contact_type_id', ContactType::whereIn('name', [
                    'address', 'email', 'phone'
                ])->pluck('id'))->with(['contactType' => function ($query) {
                    $query->select(['id', 'name']);
                }]);
        }])->latest()->get(['id', 'name'])->first()->contacts;
    }

    public function morphContacts_addressEmailPhoneWithIconMorphDescription()
    {
        return $this->corporation->with(['contacts' => function ($query) {
            $query->select(['id', 'contact_type_id', 'contactable_id', 'value'])
                ->whereIn('contact_type_id', ContactType::whereIn('name', [
                    'address', 'email', 'phone'
                ])->pluck('id'))->with(['contactType' => function ($query) {
                    $query->select(['id', 'icon_id', 'name'])
                        ->with(['icon:id,class,is_extended']);
                }, 'description' => function ($query) {
                    $query->select(['id', 'descriptionable_id', 'title']);
                }]);
        }])->latest()->get(['id', 'name'])->first()->contacts;
    }

    public function withFacebookInstagramLinkedinTwitterYoutubeWithIcons()
    {
        return $this->corporation->with(['links' => function ($query) {
            $query->select(['id', 'link_type_id', 'linkable_id', 'url'])
                ->whereIn('link_type_id', LinkType::whereIn('name', [
                    'linkedin', 'facebook', 'instagram', 'twitter', 'youtube'
                ])->pluck('id'))->with(['linkType' => function ($query) {
                    $query->select(['id', 'icon_id'])
                        ->with(['icon:id,class,is_extended']);
                }]);
        }])->latest()->get(['id'])->first()->links;
    }
}
