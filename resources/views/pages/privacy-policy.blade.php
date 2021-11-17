<x-guest.layout>

    <x-guest.main>

        @isset($privacyPolicy)

        <section id="contact" class="contact">

            <div class="container" data-aos="fade-up">

                <div class="row">

                    <div class="col-12 mb-3">

                        {{ $privacyPolicy->intro }}

                    </div>

                    <div class="col-12">

                        <ol class="list-group list-group-numbered">

                            @forelse ($privacyPolicy->descriptions as $description)

                                <li class="list-group-item d-flex justify-content-between align-items-start">

                                    <div class="ms-2 me-auto">

                                        <div class="fw-bold">{{ $description->title }}</div>

                                        {{ $description->content }}

                                    </div>

                                </li>

                            @empty


                                <div class="ms-2 me-auto">

                                    No item yet.

                                </div>

                            @endforelse

                        </ol>
                    </div>

                </div>

            </div>

        </section>

    @endisset

    </x-guest.main>

</x-guest.layout>
