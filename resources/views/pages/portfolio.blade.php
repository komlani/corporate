<x-guest.layout>

    <x-guest.main>

        @isset($projects)

            <section id="portfolio-details" class="portfolio-details">

                <div class="container">

                    @forelse ($projects as $project)

                        <div class="row gy-4">

                            <div class="col-lg-8">

                                <div class="portfolio-details-slider swiper">

                                    <div class="swiper-wrapper align-items-center">

                                        @foreach ($project->medias as $media)

                                            <div class="swiper-slide">

                                                <img src="{{ asset('storage') . '/' . $media->link }}" alt="img">

                                            </div>

                                        @endforeach


                                    </div>

                                    <div class="swiper-pagination"></div>

                                </div>

                            </div>

                            <div class="col-lg-4">

                                <div class="portfolio-info">

                                    <h3>Project information</h3>

                                    <ul>

                                        <li><strong>Category</strong>: {{ $project->projectCategory->name }}</li>

                                        @if ($project->customer->client)

                                            <li><strong>Client</strong>:
                                                {{ $project->customer->client->official->human->full_name }}</li>

                                        @else

                                            <li><strong>Client</strong>: {{ $project->customer->enterprise->name }}
                                            </li>

                                        @endif

                                        <li><strong>Project date</strong>:
                                            {{ $project->realization_date->format('Y-m-d') }}</li>

                                        <li><strong>Project URL</strong>: <a target="_blank"
                                                href="{{ $project->link->url }}">{{ $project->link->url }}</a></li>

                                    </ul>

                                </div>

                                <div class="portfolio-description">

                                    <h2>{{ $project->description->title }}</h2>

                                    <p>
                                        {{ $project->description->content }}
                                    </p>

                                </div>

                            </div>

                        </div>

                    @empty

                        No item yet.

                    @endforelse

                </div>

            </section>

        @endisset

    </x-guest.main>

</x-guest.layout>
