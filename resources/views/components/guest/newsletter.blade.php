@isset($section)

    <div class="footer-newsletter">

        <div class="container">

            <div class="row justify-content-center">

                <div class="col-lg-6">

                    <h4>{{ $section->name }}</h4>

                    <p>{{ $section->description }}</p>

                    <form action="{{ route('newsletter') }}" method="post" id="newsletter_form">

                        @csrf

                        <input type="email" name="newsletter_email">

                        <input type="submit" value="Subscribe">

                    </form>

                    <div class="my-3">

                        <span class="text-danger error-text newsletter_email_error"></span>

                        <div id="newsletter"></div>

                    </div>

                </div>

            </div>

        </div>

    </div>

@endisset
