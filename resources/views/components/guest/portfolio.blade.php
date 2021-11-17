@isset($section)

    <section id="portfolio" class="portfolio">
        <div class="container" data-aos="fade-up">

            <div class="section-title">

                <h2>{{ $section->title }}</h2>

                <h3>Check our <span><a href="{{ route('portfolio') }}">{{ $section->name }}</a></span></h3>

                <p>{{ $section->description }}</p>

            </div>

            @isset($projectCategories)

                <div class="row" data-aos="fade-up" data-aos-delay="100">

                    <div class="col-lg-12 d-flex justify-content-center">

                        <ul id="portfolio-flters">

                            <li data-filter="*" class="filter-active">All</li>

                            @foreach ($projectCategories as $projectCategory)

                                <li data-filter=".filter-{{ Str::lower($projectCategory->name) }}">
                                    {{ $projectCategory->name }}</li>

                            @endforeach

                        </ul>

                    </div>

                </div>

                <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

                    @foreach ($section->items as $item)

                        <div
                            class="col-lg-4 col-md-6 portfolio-item filter-{{ Str::lower($item->project->projectCategory->name) }}">

                            <img src="{{ asset('storage') . '/' . $item->project->media->link }}" class="img-fluid"
                                alt="{{ $item->project->media->link }}">

                            <div class="portfolio-info">

                                <h4>{{ $item->project->name }}</h4>

                                <p>{{ $item->project->projectCategory->name }}</p>

                                <a href="{{ asset('storage') . '/' . $item->project->media->link }}"
                                    data-gallery="portfolioGallery" class="portfolio-lightbox preview-link"
                                    title="{{ $item->project->name }}"><i class="bx bx-plus"></i></a>

                                <a href="{{ route('portfolio', ['id' => $item->project->id]) }}" class="details-link"
                                    title="More Details"><i class="bx bx-link"></i></a>

                            </div>

                        </div>

                    @endforeach

                </div>

            @endisset

        </div>

    </section>

@endisset
