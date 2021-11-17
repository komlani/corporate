<section class="breadcrumbs">

    <div class="container">

        <div class="d-flex justify-content-between align-items-center">

            <h2>{{ $title }} Details</h2>

            <ol>

                <li><a href="{{ route('home') }}">Home</a></li>

                <li>

                    <a href="{{ route(request()->route()->getName()) }}">
                        {{ $title }}
                    </a>

                </li>

                <li>{{ $title }} Details</li>

            </ol>

        </div>

    </div>

</section>
