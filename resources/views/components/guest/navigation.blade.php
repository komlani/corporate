<header id="header" class="d-flex align-items-center">

    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="/">{{ $corporationName }}<span>.</span></a></h1>

      <!-- Uncomment below if you prefer to use an image logo -->
    {{-- <a href="/" class="logo"><img src="{{ asset('storage').'/'.$corporationLogo }}" alt="img"></a> --}}

      <nav id="navbar" class="navbar">

        <ul>

          <li><a class="nav-link scrollto {{ request()->route()->named('home') ? 'active' : '' }}" href="{{ request()->route()->named('home') ? '#hero' : route('home') }}">Home</a></li>

          <li><a class="nav-link scrollto {{ request()->route()->named('about') ? 'active' : '' }}" href="{{ request()->route()->named('home') ? '#about' : route('about') }}">About</a></li>

          <li><a class="nav-link scrollto {{ request()->route()->named('service') ? 'active' : '' }}" href="{{ request()->route()->named('home') ? '#services' : route('service') }}">Services</a></li>

          <li><a class="nav-link scrollto {{ request()->route()->named('portfolio') ? 'active' : '' }}" href="{{ request()->route()->named('home') ? '#portfolio' : route('portfolio') }}">Portfolio</a></li>

          <li><a class="nav-link scrollto {{ request()->route()->named('team') ? 'active' : '' }}" href="{{ request()->route()->named('home') ? '#team' : route('team') }}">Team</a></li>

          <li><a class="nav-link scrollto {{ request()->route()->named('contact') ? 'active' : '' }}" href="{{ request()->route()->named('home') ? '#contact' : route('contact') }}">Contact</a></li>

        </ul>

        <i class="bi bi-list mobile-nav-toggle"></i>

      </nav>

    </div>

</header>
