@isset($section)

    <section id="about" class="about section-bg">

        <div class="container" data-aos="fade-up">

            <div class="section-title">

                <h2>{{ $section->name }}</h2>

                <h3>Find Out More <span> <a href="{{ route('about') }}">{{ $section->title }}</a></span></h3>

                <p>{{ $section->description }}</p>

            </div>

            <div class="row">

                <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">

                    <img src="{{ asset('storage') . '/' . $section->media->link }}" class="img-fluid" alt="">

                </div>

                <div class="col-lg-6 pt-4 pt-lg-0 content d-flex flex-column justify-content-center" data-aos="fade-up"
                    data-aos-delay="100">

                    <h3>{{ $section->descriptionable->title }}</h3>

                    <p class="fst-italic">

                        {{ $section->descriptionable->subtitle }}

                    </p>

                    <ul>

                        @forelse ($section->items as $item)

                            <li>

                                <i
                                    class="bx {{ $item->iconableItem->icon->is_extended ? 'bxl-' : 'bx-' }}{{ $item->iconableItem->icon->class }}"></i>

                                <div>

                                    <h5>{{ $item->iconableItem->title }}</h5>

                                    <p>{{ $item->iconableItem->value }}</p>

                                </div>

                            </li>

                        @empty

                            No item yet.

                        @endforelse

                    </ul>

                    <p>

                        {{ $section->descriptionable->content }}

                    </p>

                </div>

            </div>

        </div>

    </section>

@endisset
