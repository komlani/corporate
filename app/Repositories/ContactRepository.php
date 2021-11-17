<?php

namespace App\Repositories;

use App\Models\Contact;
use App\Models\ContactType;

class ContactRepository
{
    protected $contact;

    public function __construct(Contact $contact)
    {
        $this->contact = $contact;
    }

    public function create($request, $human)
    {
        return  $this->contact->create([
            'contact_type_id' => ContactType::where('name', 'Email')->get('id')->first()->id,
            'contactable_id' => $human->id,
            'contactable_type' => 'App\\Models\\Human',
            'value' => $request->email,
        ]);
    }
}
