<?php

namespace App\Repositories;

use App\Models\ContactType;
use App\Models\Section;
use App\Models\LinkType;
use App\Models\Corporation;

class SectionRepository
{
    protected $section;

    public function __construct(Section $section)
    {
        $this->section = $section;
    }

    public function about_morphMediaDescription()
    {
        return $this->section->whereName('about')
            ->with(['media' => function ($query) {
                $query->select(['id', 'mediaable_id', 'link']);
            }, 'descriptionable' => function ($query) {
                $query->select(['id', 'descriptionable_id', 'title', 'subtitle', 'content']);
            }])->get(['id'])->first();
    }

    public function about_morphMediaDescriptionWithItemIconableItemIcon()
    {
        return $this->section->whereName('about')
            ->with(['media' => function ($query) {
                $query->select(['id', 'mediaable_id', 'link']);
            }, 'descriptionable' => function ($query) {
                $query->select(['id', 'descriptionable_id', 'title', 'subtitle', 'content']);
            }, 'items' => function ($query) {
                $query->select(['id', 'section_id'])
                    ->with(['iconableItem' => function ($query) {
                        $query->select(['id', 'item_id', 'icon_id', 'title', 'value'])
                            ->with(['icon:id,class,is_extended']);
                    }]);
            }])->get(['id', 'name', 'title', 'description'])->first();
    }

    public function count_withItemIconableItemIcon()
    {
        return $this->section->whereName('count')
            ->with(['items' => function ($query) {
                $query->select(['id', 'section_id'])
                    ->with(['iconableItem' => function ($query) {
                        $query->select(['id', 'item_id', 'icon_id', 'title', 'value'])
                            ->with(['icon:id,class,is_extended']);
                    }]);
            }])->get(['id', 'name', 'title', 'description'])->first();
    }

    public function faq_withItemMorphDescription()
    {
        return $this->section->whereName('f.a.q')->with(['items' => function ($query) {
            $query->select(['id', 'section_id'])
                ->with(['faq' => function ($query) {
                    $query->select(['id', 'item_id'])
                        ->with(['description' => function ($query) {
                            $query->select(['id', 'descriptionable_id', 'title', 'content']);
                        }]);
                }]);
        }])->get(['id', 'name', 'title', 'description'])->first();
    }

    public function newsletter()
    {
        return $this->section->whereName('newsletter')
            ->get(['id', 'name', 'title', 'description'])->first();
    }

    public function service_withItemIconableItemIcon()
    {
        return $this->section->whereName('service')
            ->with(['items' => function ($query) {
                $query->select(['id', 'section_id'])
                    ->with(['iconableItem' => function ($query) {
                        $query->select(['id', 'item_id', 'icon_id', 'title', 'value'])
                            ->with(['icon:id,class,is_extended', 'service:id,iconable_item_id']);
                    }]);
            }])->get(['id', 'name', 'title', 'description'])->first();
    }

    public function testimonial_withItemClientOfficial_humanWork()
    {
        return $this->section->whereName('testimonial')
            ->with(['items' => function ($query) {
                $query->select(['id', 'section_id'])
                    ->with(['client' => function ($query) {
                        $query->select(['id', 'item_id', 'official_id', 'avatar', 'message'])
                            ->with(['official' => function ($query) {
                                $query->select(['id', 'human_id', 'work_id'])
                                    ->with(['work:id,name', 'human:id,first_name,last_name']);
                            }]);
                    }]);
            }])
            ->get(['id', 'name', 'title', 'description'])->first();
    }

    public function project_withItemProjectMorphMedia_ProjectCategory()
    {
        return $this->section->whereName('portfolio')
            ->with(['items' => function ($query) {
                $query->select(['id', 'section_id'])
                    ->with(['project' => function ($query) {
                        $query->select(['id', 'item_id', 'project_category_id', 'name'])
                            ->with(['projectCategory' => function ($query) {
                                $query->select(['id', 'name']);
                            }, 'media' => function ($query) {
                                $query->select(['id', 'mediaable_id', 'link']);
                            }]);
                    }]);
            }])->get(['id', 'name', 'title', 'description'])->first();
    }

    public function team_withItemEmployeeOfficial_workHumanWithLinksLinkTypeIcon()
    {
        return $this->section->whereName('team')
            ->with(['items' => function ($query) {
                $query->select(['id', 'section_id'])
                    ->with(['employee' => function ($query) {
                        $query->select(['id', 'item_id', 'official_id', 'profile'])
                            ->with(['official' => function ($query) {
                                $query->select(['id', 'human_id', 'work_id'])
                                    ->with([
                                        'work:id,name',
                                        'human' => function ($query) {
                                            $query->select(['id', 'first_name', 'last_name'])
                                                ->with(['links' => function ($query) {
                                                    $query->select(['id', 'link_type_id', 'linkable_id', 'url'])
                                                        ->with(['linkType' => function ($query) {
                                                            $query->select(['id', 'icon_id'])
                                                                ->with(['icon:id,class,is_extended']);
                                                        }]);
                                                }]);
                                        },
                                    ]);
                            }]);
                    }]);
            }])->get(['id', 'name', 'title', 'description'])->first();
    }

    public function pricing_ItemPricingCurrencyFeatures()
    {
        return $this->section->whereName('pricing')
            ->with(['items' => function ($query) {
                $query->select(['id', 'section_id'])
                    ->with(['pricing' => function ($query) {
                        $query->select([
                            'id',
                            'item_id',
                            'currency_id',
                            'title',
                            'month_price',
                            'is_featured',
                            'is_advanced'
                        ])->with(['currency:id,name', 'features']);
                    }]);
            }])->get(['id', 'name', 'title', 'description'])->first();
    }

    public function contact_withSitePageCorporationMorphDescriptionContactsContactTypeWithIcon()
    {
        return $this->section->whereName('contact')
            ->with(['sitePage' => function ($query) {
                $query->select(['id', 'corporation_id'])
                    ->with(['corporation' => function ($query) {
                        $query->select(['id'])
                            ->with(['contacts' => function ($query) {
                                $query->select(['id', 'contact_type_id', 'contactable_id', 'value'])
                                    ->whereIn('contact_type_id', ContactType::whereIn('name', [
                                        'address', 'email', 'phone'
                                    ])->pluck('id'))->with(['contactType' => function ($query) {
                                        $query->select(['id', 'icon_id', 'name'])
                                            ->with(['icon:id,class,is_extended']);
                                    }, 'description' => function ($query) {
                                        $query->select(['id', 'descriptionable_id', 'title']);
                                    }]);
                            }]);
                    }]);
            }])->get(['id', 'site_page_id', 'name', 'title', 'description'])->first();
    }

    // this resolve eager loading caused by this method in corporation repository
    public function facebookInstagramLinkedinTwitterYoutubeWithIcons()
    {
        return Corporation::with(['links' => function ($query) {
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
