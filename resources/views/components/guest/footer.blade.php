 <footer id="footer">

     <x-guest.newsletter />

     <div class="footer-top">

         <div class="container">

             <div class="row">

                 <div class="col-lg-3 col-md-6 footer-contact">

                     <h3>{{ $corporationName }}<span>.</span></h3>

                     <p>
                         @isset($footerContacts)

                             @foreach ($footerContacts as $contact)

                                 @if ($contact->contactType->name == 'Address')

                                     @foreach (Str::of($contact->value)->explode(' ') as $word)
                                         {{ $word }}
                                         @if ($loop->iteration % 3 == 0)
                                             <br>
                                         @endif

                                     @endforeach

                                 @endif

                             @endforeach


                             <br><br>

                             @foreach ($footerContacts as $contact)
                                 
                                 @if ($contact->contactType->name != 'Address')

                                     <strong>{{ $contact->contactType->name }}:</strong>
                                     {{ $contact->value }}<br>

                                 @endif

                             @endforeach

                         @endisset

                     </p>

                 </div>


                 <div class="col-lg-3 col-md-6 footer-links">

                     <h4>Useful Links</h4>

                     <ul>

                         <li><i class="bx bx-chevron-right"></i> <a href="/">Home</a></li>

                         <li><i class="bx bx-chevron-right"></i> <a href="{{ route('about') }}">About us</a></li>

                         <li><i class="bx bx-chevron-right"></i> <a href="{{ route('service') }}">Services</a></li>

                         <li><i class="bx bx-chevron-right"></i> <a href="{{ route('terms_of_service') }}">Terms of
                                 service</a></li>

                         <li><i class="bx bx-chevron-right"></i> <a href="{{ route('privacy_policy') }}">Privacy
                                 Policy</a></li>

                     </ul>

                 </div>

                 <div class="col-lg-3 col-md-6 footer-links">

                     <h4>Our Services</h4>

                     <ul>

                         @isset($services)

                             @forelse ($services as $service)

                                 <li><i class="bx bx-chevron-right"></i> <a
                                         href="#">{{ $service->iconableItem->title }}</a></li>

                                 @if ($loop->last)
                                     <li><i class="bx bx-chevron-right"></i> <a href="{{ route('service') }}"> Other
                                             ...</a></li>
                                 @endif

                             @empty

                                 No item yet.

                             @endforelse

                         @endisset

                     </ul>

                 </div>

                 <div class="col-lg-3 col-md-6 footer-links">

                     <h4>Our Social Networks</h4>

                     <p>Visit our social networks !! </p>

                     <div class="social-links mt-3">

                         @isset($socialLinks)

                             @forelse ($socialLinks as $link)

                                 <a target="_blank" href="{{ $link->url }}"
                                     class="{{ $link->linkType->icon->class }}"><i
                                         class="bx {{ $link->linkType->icon->is_extended ? 'bxl-' : 'bx-' }}{{ $link->linkType->icon->class }}"></i></a>

                             @empty

                                 No item yet.

                             @endforelse

                         @endisset

                     </div>

                 </div>

             </div>

         </div>

     </div>

     <div class="container py-4">

         <div class="copyright">

             &copy; Copyright <strong><span>{{ $corporationName }}</span></strong>. All Rights Reserved

         </div>

         <div class="credits">

             Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>

         </div>

     </div>

 </footer>
