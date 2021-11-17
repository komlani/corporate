@if ($section)

    <section id="services" class="services">

        <div class="container" data-aos="fade-up">

            <div class="section-title">

                <h2>{{ $section->name }}</h2>

                <h3>Check our <span> <a href="{{ route('service') }}">{{ $section->title }}</a></span></h3>

                <p>{{ $section->description }}</p>

            </div>

            <div class="row row-cols-1 row-cols-md-3 g-4">

                @if ($section->items)

                    @foreach ($section->items as $item)

                        <div class="col" data-aos="zoom-in" data-aos-delay="200">

                            <div class="card mt-2">

                                <div class="card-body p-0">

                                    <div class="icon-box">

                                        <div class="icon">

                                            <i
                                                class="bx {{ $item->iconableItem->icon->is_extended ? 'bxl-' : 'bx-' }}{{ $item->iconableItem->icon->class }}"></i>

                                        </div>

                                        <h4 class="card-title">

                                            <a
                                                href="{{ route('service', ['id' => $item->iconableItem->service->id]) }}">{{ $item->iconableItem->title }}</a>

                                        </h4>

                                        <p class="card-text"> {{ $item->iconableItem->value }} </p>

                                    </div>

                                </div>

                            </div>

                        </div>

                    @endforeach

                @endif

            </div>

        </div>

    </section>

@endif
