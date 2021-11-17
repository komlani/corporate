<x-guest.layout>

    <x-guest.main>

        @isset($section)

            <section id="portfolio-details" class="portfolio-details">

                <div class="container text-justify">

                    <div class="clearfix">
                        <img src="{{ asset('storage') . '/' . $section->media->link }}"
                            class="col-md-4 float-md-end mb-3 ms-md-3 img-thumbnail rounded" alt="img">

                        <p>
                            {{ $section->descriptionable->title }}
                        </p>

                        <p>
                            {{ $section->descriptionable->subtitle }}
                        </p>

                        <p>
                            {{ $section->descriptionable->content }}
                        </p>

                    </div>

                </div>

            </section>

        @endisset

    </x-guest.main>

</x-guest.layout>
