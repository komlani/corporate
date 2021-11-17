@isset($section)

    <section id="pricing" class="pricing">

        <div class="container" data-aos="fade-up">

            <div class="section-title">

                <h2>{{ $section->title }}</h2>

                <h3>Check our <span>{{ $section->name }}</span></h3>

                <p>{{ $section->description }}</p>

            </div>

            <div class="row">

                @forelse ($section->items as $item)

                    <div class="col-lg-3 col-md-6 mt-lg-0" data-aos="fade-up" data-aos-delay="100">

                        <div class="box {{ $item->pricing->is_featured ? 'featured' : '' }}">

                            @if ($item->pricing->is_advanced)

                                <span class="advanced">Advanced</span>

                            @endif

                            <h3>{{ $item->pricing->title }}</h3>

                            <h4><sup>{{ $item->pricing->currency->name }}</sup>{{ $item->pricing->month_price }}<span> /
                                    month</span></h4>

                            <ul>

                                @foreach ($item->pricing->features as $feature)

                                    <li class="{{ $feature->pivot->is_active ? '' : 'na' }}">{{ $feature->name }}</li>

                                @endforeach

                            </ul>

                            <div class="btn-wrap">

                                <a href="#pricing" class="btn-buy">Buy Now</a>

                            </div>

                        </div>

                    </div>

                @empty

                    No item yet.

                @endforelse

            </div>

        </div>

    </section>

@endisset
