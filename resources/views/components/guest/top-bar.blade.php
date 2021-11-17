<section id="topbar" class="d-flex align-items-center">

    <div class="container d-flex justify-content-center justify-content-md-between">

        <div class="contact-info d-flex align-items-center">

            @if ($contacts)

                @foreach ($contacts as $contact)

                    <i
                        class="bi bi-{{ $contact->contactType->icon->class }} d-flex align-items-center {{ $loop->last ? 'ms-4' : '' }}">

                        @if ($contact->contactType->name == 'Email')

                            <a href="mailto:{{ $contact->value }}">{{ $contact->value }}</a>

                        @else

                            <span>{{ $contact->value }}</span>

                        @endif

                    </i>

                @endforeach

            @endif

        </div>

        <div class="social-links d-none d-md-flex align-items-center">

            @if ($socialLinks)

                @foreach ($socialLinks as $link)

                    <a href="{{ $link->url }}" class="{{ $link->linkType->icon->class }}"><i
                            class="bi bi-{{ $link->linkType->icon->class }}"></i></a>

                @endforeach

            @endif

        </div>

    </div>

</section>
