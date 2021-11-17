<x-guest.layout>

    <x-guest.main>

        @if ($employees)

            <section id="team" class="team section-bg">

                <div class="container" data-aos="fade-up">

                    <div class="row">

                        @foreach ($employees as $employee)

                            <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up"
                                data-aos-delay="100">

                                <div class="member">

                                    <div class="member-img">

                                        <img src="{{ asset('storage') . '/' . $employee->profile }}"
                                            class="img-fluid" alt="profile">

                                        <div class="social">

                                            @foreach ($employee->official->human->links as $link)

                                                <a href="{{ $link->url }}"><i
                                                        class="bi bi-{{ $link->linkType->icon->class }}"></i></a>

                                            @endforeach

                                        </div>

                                    </div>

                                    <div class="member-info">

                                        <h4>{{ $employee->official->human->full_name }}</h4>

                                        <span>{{ $employee->official->work->name }}</span>

                                    </div>

                                </div>

                            </div>

                        @endforeach

                    </div>

                </div>

            </section>

        @endif

    </x-guest.main>

</x-guest.layout>
