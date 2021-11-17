<x-guest.layout>

    <x-guest.main>

        <section id="contact" class="contact">

            <div class="container" data-aos="fade-up">

                <div class="row">

                    <h3>{{ $corporationName }}</h3>

                    <div class="col-12 mb-3">

                        @isset($corporationSocialLinks)

                        <div class="social-links mb-3">

                            @forelse ($corporationSocialLinks as $link)

                            <a href="{{ $link->url }}" class=""><i class="bx {{ $link->linkType->icon->is_extended ? 'bxl-' : 'bx-'  }}{{ $link->linkType->icon->class }}"></i></a>

                            @empty

                            No item yet.

                            @endforelse
                        </div>

                        @endisset


                    </div>

                    <div class="col-12">

                        <div class="row">

                            <div class="col-6">

                                <div class="row">

                                    @isset($corporationContacts)

                                    @forelse ($corporationContacts as $contact)

                                            <div class="col-md-12">

                                                <div class="info-box  mb-4">

                                                    <i class="bx {{ $contact->contactType->icon->is_extended ? 'bxl-' : 'bx-' }}{{ $contact->contactType->icon->class }}"></i>
                                                    <h3>{{ $contact->description->title }}</h3>
                                                    <p>{{ $contact->value }}</p>
                                                </div>

                                            </div>

                                    @empty

                                        No item yet.

                                    @endforelse

                                    @endisset

                                </div>

                            </div>

                            <x-guest.form.visitor-request/>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </section>

    </x-guest.main>

</x-guest.layout>
