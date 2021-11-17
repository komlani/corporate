<section id="featured-services" class="featured-services">

    <div class="container" data-aos="fade-up">

        <div class="row">

            @if ($services)

                @foreach ($services as $service)

                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">

                        <div class="icon-box" data-aos="fade-up" data-aos-delay="200">

                            <div class="icon">

                                <i
                                    class="bx {{ $service->iconableItem->icon->is_extended ? 'bxl-' : 'bx-' }}{{ $service->iconableItem->icon->class }}"></i>

                            </div>

                            <h4 class="title">

                                <a
                                    href="{{ route('service', ['id' => $service->id]) }}">{{ $service->iconableItem->title }}</a>

                            </h4>

                            <p class="description">{{ $service->iconableItem->value }}</p>

                        </div>

                    </div>

                @endforeach

            @endif

        </div>

    </div>

</section>
