<section id="hero" class="d-flex align-items-center"
    style="background: url({{ asset('storage') . '/' . $heroBackground }})">

    <div class="container" data-aos="zoom-out" data-aos-delay="100">

        <h1>Welcome to <span>{{ $corporation->name }}</span></h1>

        <h2>{{ $corporation->slogan }}</h2>

        <div class="d-flex">

            <a href="#featured-services" class="btn-get-started scrollto">Get Started</a>

            <a href="{{ $youtubeLink }}" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>Watch
                    Video</span></a>

        </div>

    </div>

</section>
