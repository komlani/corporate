@isset($section)

    <section id="testimonials" class="testimonials">

        <div class="container" data-aos="zoom-in">

            <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">

                <div class="swiper-wrapper">

                    @forelse ($section->items as $item)

                        <div class="swiper-slide">

                            <div class="testimonial-item">

                                <img src="{{ asset('storage') . '/' . $item->client->avatar }}" class="testimonial-img"
                                    alt="{{ $item->client->official->human->full_name }}">

                                <h3>{{ $item->client->official->human->full_name }}</h3>

                                <h4>{{ $item->client->official->work->name }}</h4>

                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    {{ $item->client->message }}
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>

                            </div>

                        </div>

                    @empty

                        No item yet.

                    @endforelse

                </div>

                <div class="swiper-pagination"></div>

            </div>

        </div>

    </section>

@endisset
