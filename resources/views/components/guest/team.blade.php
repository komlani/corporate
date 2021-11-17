@isset($section)

    <section id="team" class="team section-bg">

        <div class="container" data-aos="fade-up">

            <div class="section-title">

                <h2>{{ $section->title }}</h2>

                <h3>Our Hardworking <span><a href="{{ route('team') }}">{{ $section->name }}</a></span></h3>

                <p>{{ $section->description }}</p>

            </div>

            <div class="row">

                @forelse ($section->items as $item)

                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                      
                        <div class="member">

                            <div class="member-img">

                                <img src="{{ asset('storage') . '/' . $item->employee->profile }}" class="img-fluid"
                                    alt="{{ $item->employee->profile }}">

                                <div class="social">

                                    @foreach ($item->employee->official->human->links as $link)

                                        <a href="{{ $link->url }}"><i
                                                class="bi bi-{{ $link->linkType->icon->class }}"></i></a>

                                    @endforeach

                                </div>

                            </div>

                            <div class="member-info">

                                <h4> <a
                                        href="{{ route('team', ['id' => $item->employee->id]) }}">{{ $item->employee->official->human->full_name }}</a>
                                </h4>

                                <span>{{ $item->employee->official->work->name }}</span>

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
