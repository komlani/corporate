<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TeamController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\NewsletterController;
use App\Http\Controllers\PrivacyPolicyController;
use App\Http\Controllers\TermsOfServiceController;
use App\Http\Controllers\VisitorRequestController;

Route::get('/', HomeController::class)->name('home');

Route::get('about', AboutController::class)->name('about');

Route::get('contact', ContactController::class)->name('contact');

Route::get('faq', FaqController::class)->name('faq');

Route::get('portfolio', PortfolioController::class)->name('portfolio');

Route::get('privacy-policy', PrivacyPolicyController::class)->name('privacy_policy');

Route::get('terms-of-service', TermsOfServiceController::class)->name('terms_of_service');

Route::get('service', ServiceController::class)->name('service');

Route::get('team', TeamController::class)->name('team');

Route::post('visitor-request', VisitorRequestController::class)->name('visitor_request');

Route::post('newsletter', NewsletterController::class)->name('newsletter');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
