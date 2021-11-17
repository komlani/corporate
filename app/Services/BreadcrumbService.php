<?php

namespace App\Services;

class BreadcrumbService
{
    public function __invoke()
    {
        switch (request()) {
            case request()->route()->named('about'):
                $title = "About";
                break;
            case request()->route()->named('contact'):
                $title = "Contact Us";
                break;
            case request()->route()->named('home'):
                $title = "Home";
                break;
            case request()->route()->named('privacy_policy'):
                $title = "Privacy Policy";
                break;
            case request()->route()->named('portfolio'):
                $title = "Projects";
                break;
            case request()->route()->named('service'):
                $title = "Services";
                break;
            case request()->route()->named('team'):
                $title = "Team";
                break;
            case request()->route()->named('terms_of_service'):
                $title = "Terms of service";
                break;
        }
        return $title;
    }
}
