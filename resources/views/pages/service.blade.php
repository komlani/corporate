<x-guest.layout>

    <x-guest.main>

        @isset($services)

        <section id="services" class="services">

            <div class="container" data-aos="fade-up">

                <div class="row row-cols-1 row-cols-md-3 g-4">

                    @forelse ($services as $service)

                    <div class="col" data-aos="zoom-in" data-aos-delay="200">

                        <div class="card mt-2">

                            <div class="card-body p-0">

                                <div class="icon-box">

                                    <div class="icon">

                                        <i
                                        class="bx {{ $service->iconableItem->icon->is_extended ? 'bxl-' : 'bx-' }}{{ $service->iconableItem->icon->class }}"></i>

                                    </div>

                                    <h4 class="card-title">

                                        <a
                                            href="#">{{ $service->iconableItem->title }}</a>

                                    </h4>

                                    <p class="card-text"> {{ $service->iconableItem->value }} </p>

                                </div>

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

    </x-guest.main>

</x-guest.layout>
