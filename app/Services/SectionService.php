<?php

namespace App\Services;

use App\Repositories\SectionRepository;

class SectionService
{
    protected $section;

    public function __construct(SectionRepository $section)
    {
        $this->section = $section;
    }

    public function aboutSectionData()
    {
        return $this->section->about_morphMediaDescriptionWithItemIconableItemIcon();
    }

    public function contactSectionData()
    {
        return $this->section->contact_withSitePageCorporationMorphDescriptionContactsContactTypeWithIcon();
    }

    public function countSectionData()
    {
        return $this->section->count_withItemIconableItemIcon();
    }

    public function faqSectionData()
    {
        return $this->section->faq_withItemMorphDescription();
    }

    public function newsletterSectionData()
    {
        return $this->section->newsletter();
    }

    public function portfolioData()
    {
        return $this->section->project_withItemProjectMorphMedia_ProjectCategory();
    }

    public function serviceSectionData()
    {
        return $this->section->service_withItemIconableItemIcon();
    }

    public function teamSectiondata()
    {
        return $this->section->team_withItemEmployeeOfficial_workHumanWithLinksLinkTypeIcon();
    }

    public function testimonialSectionData()
    {
        return $this->section->testimonial_withItemClientOfficial_humanWork();
    }

    public function pricingSectionData()
    {
        return  $this->section->pricing_ItemPricingCurrencyFeatures();
    }

    public function socialLinks()
    {
        return $this->section->facebookInstagramLinkedinTwitterYoutubeWithIcons();
    }

}
