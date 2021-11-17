@if ($section)

    <section id="counts" class="counts">

        <div class="container" data-aos="fade-up">

            <div class="row">

                @foreach ($section->items as $item)

                    <div class="col-lg-3 col-md-6">

                        <div class="count-box">

                            <i class="bi bi-{{ $item->iconableItem->icon->class }}"></i>

                            <span data-purecounter-start="0" data-purecounter-end="{{ $item->iconableItem->value }}"
                                data-purecounter-duration="1" class="purecounter">
                            </span>

                            <p>{{ $item->iconableItem->title }}</p>

                        </div>

                    </div>

                @endforeach

            </div>

        </div>

    </section>

@endif
