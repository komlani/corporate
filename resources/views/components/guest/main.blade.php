<main id="main">

    @unless (request()->route()->named('home'))
         <x-guest.breadcrumb/>
    @endunless

    {{ $slot }}

</main>
