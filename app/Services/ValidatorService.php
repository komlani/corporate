<?php

namespace App\Services;

use Illuminate\Support\Facades\Validator;

class ValidatorService
{
    protected $validator;

    public function __construct(Validator $validator)
    {
        $this->validator = $validator;
    }

    public function makeNewsletterRequest($request)
    {
        return $this->validator::make($request->all(), [
            'newsletter_email' => [
                'required',
                'email',
                'max:60',
                'unique:newsletters,email'
            ],
        ]);
    }

    public function makeVisitorRequest($request)
    {
        return $this->validator::make($request->all(), [
            'first_name' => ['required', 'string', 'max:50'],
            'last_name' => ['required', 'string', 'max:50'],
            'email' => [
                'required',
                'email',
                'max:60',
                'unique:contacts,value'
            ],
            'subject' => ['required', 'max:80'],
            'message' => ['required', 'max:255']
        ]);
    }
}
