@isset($section)

    <section id="contact" class="contact">

        <div class="container" data-aos="fade-up">

            <div class="section-title">

                <h2>{{ $section->name }}</h2>

                <h3><span><a href="{{ route('contact') }}">{{ $section->title }}</a></span></h3>

                <p>{{ $section->description }}</p>

            </div>

            <div class="row" data-aos="fade-up" data-aos-delay="100">

                @forelse ($section->sitePage->corporation->contacts as $contact)

                    <div class="col-lg-{{ $contact->contactType->name == 'Address' ? '6' : '3' }}">

                        <div class="info-box mb-4">

                            <i
                                class="bx {{ $contact->contactType->icon->is_extended ? 'bxl-' : 'bx-' }}{{ $contact->contactType->icon->class }}"></i>

                            <h3>{{ $contact->description->title }}</h3>

                            <p>{{ $contact->value }}</p>
                        </div>

                    </div>

                @empty

                    No item yet.

                @endforelse

            </div>

            <div class="row" data-aos="fade-up" data-aos-delay="100">

                <div class="col-lg-6 ">

                    <iframe class="mb-4 mb-lg-0"
                        src="{{ $geolocalizationLink ?? 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621' }}"
                        frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>

                </div>

                <x-guest.form.visitor-request />

            </div>

        </div>

    </section>

@endisset
