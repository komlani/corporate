<?php

namespace App\Services;

class PageTitleService
{
    public function __invoke()
    {
        switch (request()) {
            case request()->route()->named('about'):
                $pageTitle = "About us";
                break;
            case request()->route()->named('contact'):
                $pageTitle = "Contact us";
                break;
            case request()->route()->named('faq'):
                $pageTitle = "F.A.Q";
                break;
            case request()->route()->named('portfolio'):
                $pageTitle = "Portfolio";
                break;
            case request()->route()->named('privacy_policy'):
                $pageTitle = "Privacy Policy";
                break;
            case request()->route()->named('terms_of_service'):
                $pageTitle = "Terms Of Service";
                break;
            case request()->route()->named('service'):
                $pageTitle = "Services";
                break;
            case request()->route()->named('team'):
                $pageTitle = "Team";
                break;
            default:
                $pageTitle = 'Home';
                break;
        }
        return $pageTitle;
    }
}
