<x-guest.layout>

    <x-guest.main>

        @if ($faqs)

            <section id="faq" class="faq section-bg">

                <div class="container" data-aos="fade-up">

                    <div class="row justify-content-center">

                        <div class="col-xl-10">

                            <ul class="faq-list">

                                @foreach ($faqs as $faq)

                                    <li>

                                        <div data-bs-toggle="collapse" class="collapsed question"
                                            href="#faq{{ $faq->id }}">{{ $faq->description->title }}<i
                                                class="bi bi-chevron-down icon-show"></i><i
                                                class="bi bi-chevron-up icon-close"></i>
                                        </div>
                                        <div id="faq{{ $faq->id }}" class="collapse"
                                            data-bs-parent=".faq-list">

                                            <p>
                                                {{ $faq->description->content }}
                                            </p>

                                        </div>

                                    </li>

                                @endforeach

                            </ul>

                        </div>

                    </div>

                </div>

            </section>

        @endif

    </x-guest.main>

</x-guest.layout>
