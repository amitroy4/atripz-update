<html lang="en" data-qb-installed="true">

<head>
    <meta charset="UTF-8">
    @php
   $tags = DB::table('product_tags')->distinct()->pluck('tag')->implode(', ');
   // $description = DB::table('user-profile')->pluck('company_short_details')->first();
   $userData = DB::table('web_infos')->first();
   $seoData = DB::table('seo_settings')->first();
   $socialinfos = DB::table('socialinfos')->get();
   $contactinfo = DB::table('contactinfos')->first();
   // echo $description;
   @endphp
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="csrf-token" content="{{ csrf_token() }}">
   <!--=== Link Of CSS Files ===-->
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/bootstrap.min.css">
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/fonts/flaticon.css">
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/nice-select.min.css">
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/boxicons.min.css">
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/meanmenu.css">
   <link rel="stylesheet" type="text/css" href="{{asset('')}}frontend/assets/css/settings.css">
   <link rel="stylesheet" type="text/css" href="{{asset('')}}frontend/assets/css/layers.css">
   <link rel="stylesheet" type="text/css" href="{{asset('')}}frontend/assets/css/navigation.css">
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/owl.carousel.min.css">
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/owl.theme.default.min.css">
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/modal-video.min.css">
   <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
   <link rel="stylesheet" type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">



   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/style.css">
   <link rel="stylesheet" href="{{asset('')}}frontend/assets/css/responsive.css">




   <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet">


   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
   <!-- or -->
   <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">



   <!--=== Title & Favicon ===-->
   <title>@yield('title') - {{ $userData->appName }}</title>
   {{-- <link rel="icon" type="image/png" href="{{asset('')}}frontend/assets/images/favicon-1.png"> --}}


       <!--Font-->
       @livewireStyles

       <!-- Google Tag Manager -->
       <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
       new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
       j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
       'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
       })(window,document,'script','dataLayer','GTM-MTWGTJB6');</script>
       <!-- End Google Tag Manager -->
       @stack('viewItem')
</head>

<body cz-shortcut-listen="true" style="" class="">

   <style>
      .bx-x:hover {
         color: red !important;
         cursor: pointer;
         transform: scale(1.2);
         /* Slightly enlarge the icon */
         transition: transform 0.3s ease;
      }
      .middle {
        text-align: center; /* Centers the content horizontally */
        font-size: 16px;    /* Adjust the font size as needed */
        color: white;       /* Sets the font color to white */
        padding: 10px;      /* Optional: Add padding for spacing */
        }

   </style>

   <div class="header-area">
      <div class="container-fluid">
         <div class="row align-items-center">
            <div class="col-sm-4 col-lg-4">
               <div class="left">
                  <ul>
                    @if($contactinfo)
                     <li>
                        <i class='bx bx-phone'></i>
                        <span class="top-header-link"><a href="tel:{{$contactinfo->phone}}">{{$contactinfo->phone}}</a></span>
                     </li>
                     <li>
                        <i class='bx bx-mail-send'></i>
                        <span class="top-header-link"><a href="mailto:{{$contactinfo->email}}">{{$contactinfo->email}}</a></span>
                     </li>
                     @endif
                     <!--<li>-->
                     <!--   <i class='bx bx-map'></i>-->
                     <!--   <span class="top-header-link">Twin Tower Concord Shopping Complex, Shantinagar, Dhaka.</span>-->
                     <!--</li>-->
                  </ul>
               </div>
            </div>
            <div class="col-sm-4 col-lg-4">
                <div class="middle">
                   <ul>
                     @if($contactinfo)
                      <li>
                         <marquee behavior="" direction="">{{ $userData->marquee }}</marquee>
                      </li>
                      @endif
                   </ul>
                </div>
             </div>
            <div class="col-sm-4 col-lg-4">
               <div class="middle">
                  <div class="header-info header-info-right">
                     <ul>
                        <li>
                           <a class="language-dropdown-active track-order-btn" href="{{route('trackorder')}}"> <i
                                 class="fi-rs-world"></i>
                              Track My Order</a>
                        </li>
                        <li>
                            <i class="fa-regular fa-user"></i>
                            @auth('customer')
                                @php
                                $user = Auth::guard('customer')->user();
                                $fullName = $user->customer->firstName . ' ' . $user->customer->lastName;
                                @endphp
                            <a class="customer_info " href="{{route('customer.dashboard')}}" >{{ $fullName }}</a>
                            @else
                                {{-- Show login/register links --}}
                                <a href="#" data-bs-toggle="modal" data-bs-target="#login">Log In / </a>
                                <a href="#" data-bs-toggle="modal" data-bs-target="#signup"> Sign Up</a>
                            @endauth
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- TOP Header End-->
   <!-- Navbar -->
   <div class="navbar-area sticky-top">
      <!-- Menu For Mobile Device -->
      <div class="mobile-nav">
        <div class=" ">
             <ul>

                <li class="search-container-mobile me-5">
                    <!-- Search Icon -->
                    <button type="button" id="search-toggle-mobile" class="btn wishlist cart-popup-btn">
                        <i class='bx bx-search'></i>
                    </button>

                    <!-- Search Dropdown -->
                    <div id="search-box-mobile" class="dropdown hidden">
                        <input type="text" class="form-control my-2" placeholder="Search product by name or sku" id="search-input-mobile" />
                        <!-- Loading Indicator -->
                        <div id="loading-indicator-mobile" style="display: none; text-align: center; padding: 10px;">
                            <span>Loading...</span>
                        </div>
                        <!-- Search Results -->
                        <div id="search-results-mobile">
                            <ul></ul>
                        </div>
                    </div>
                </li>
                <li>
                    @livewire('cart-icon-mobile-component')
                </li>
                <!-- Button to toggle the offcanvas -->
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fa-solid fa-bars"></i></span>
                </button>
                <a href="{{route('home')}}" class="logo">
                    <img src="{{asset('storage/logos/'.$userData->weblogo)}}" alt="{{$userData->appName}}">
                </a>

                <!-- Offcanvas Menu -->
                <div class="offcanvas offcanvas-start text-bg-light" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel" style="width: 247px;">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title text-uppercase" id="offcanvasDarkNavbarLabel">Menu</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <!-- Offcanvas Content -->
                        <ul class="list-unstyled list-category">
                            <!-- All Categories -->
                            <li style="text-align: center; margin-bottom: 10px;">
                                {{-- <a class="text-dark fw-bold" href="">All Categories</a> --}}
                                <a class="language-dropdown-active track-order-btn text-uppercase" href="{{ route('filters.show', ['slug' => 'all']) }}"> <i
                                    class="fi-rs-world "></i>All Categories</a>
                            </li>

                            <!-- Categories Loop -->
                            @foreach ($categories as $category)
                                <li>
                                    @if ($category->children->count() > 0)
                                        <!-- Expandable Category -->
                                        <a class="text-dark d-flex justify-content-between align-items-center text-uppercase"
                                            data-bs-toggle="collapse"
                                            href="#category-{{ $category->id }}"
                                            role="button"
                                            aria-expanded="false"
                                            aria-controls="category-{{ $category->id }}">
                                            {{ $category->category_name }}
                                            <b class="ms-2">+</b>
                                        </a>
                                        <!-- Subcategories -->
                                        <div class="collapse ms-3" id="category-{{ $category->id }}">
                                            <ul class="list-unstyled text-uppercase">
                                                @foreach ($category->children as $subcategory)
                                                    <li>
                                                        <a class="text-dark text-uppercase" href="{{ route('filters.show', ['slug' => $subcategory->slug]) }}">
                                                            {{ $subcategory->category_name }}
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @else
                                        <!-- Non-expandable Category -->
                                        <a class="text-dark text-uppercase" href="{{ route('filters.show', ['slug' => $category->slug]) }}">
                                            {{ $category->category_name }}
                                        </a>
                                    @endif
                                </li>
                            @endforeach
                        </ul>
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item" style="text-align: center; margin-bottom: 10px; margin-top: 20px;">
                                <a class="language-dropdown-active track-order-btn text-uppercase" href="{{route('trackorder')}}"> <i
                                    class="fi-rs-world"></i>
                                 Track My Order</a>
                            </li>
                            <li class="nav-item mb-2">
                                <i class="fa-regular fa-user"></i>
                                @auth('customer')
                                    @php
                                    $user = Auth::guard('customer')->user();
                                    $fullName = $user->customer->firstName . ' ' . $user->customer->lastName;
                                    @endphp
                                <a class="customer_info " href="{{route('customer.dashboard')}}" >{{ $fullName }}</a>
                                @else
                                    {{-- Show login/register links --}}
                                    <a class="text-dark" href="#" data-bs-toggle="modal" data-bs-target="#login">Log In / </a>
                                    <a class="text-dark" href="#" data-bs-toggle="modal" data-bs-target="#signup"> Sign Up</a>
                                @endauth
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ request()->is('/') ? 'active' : '' }}" href="{{('/')}}">Home</a>
                             </li>
                             <li class="nav-item">
                                <a class="nav-link {{ request()->is('aboutus') ? 'active' : '' }}" href="{{route('aboutus')}}">About Us</a>
                             </li>
                             <li class="nav-item">
                                <a class="nav-link {{ request()->is('shop') ? 'active' : '' }}" href="{{route('shop')}}">Shop</a>
                             </li>
                             {{-- <li class="nav-item">
                                <a class="nav-link {{ request()->is('faq_information') ? 'active' : '' }}" href="{{url('/faq_information')}}">FAQ's</a>
                             </li> --}}
                             <li class="nav-item">
                                <a class="nav-link {{ request()->is('contactus') ? 'active' : '' }}" href="{{route('contactus')}}">Contact Us</a>
                             </li>
                        </ul>
                    </div>
                </div>
             </ul>
        </div>
      </div>
      <!-- Menu For Desktop Device -->
      <div class="main-nav">
         <div class="container-fluid">
            <nav class="navbar navbar-expand-md navbar-light justify-content-between">
               <div class="left">
                  <a href="{{route('home')}}">
                     <img src="{{asset('storage/logos/'.$userData->weblogo)}}" style="height: 55px!important;" alt="{{$userData->appName}}">
                  </a>
               </div>
            <style>
                  .list-category li{
                    padding-top: 5px;
                    padding-bottom: 5px;
                  }
                  .active{
                    color: #300c47 !important;
                    font-weight: bold;
                  }
                  .offcanvas-body > ul > li:hover > a {
                    color: #300c47 !important;
                    font-weight: bold;
                    transition: color 0.4s ease, font-weight 0.4s ease;
                  }
                  .offcanvas-body > ul > li div > ul> li:hover>a {
                    color: #300c47 !important;
                    font-weight: bold;
                    transition: color 0.4s ease, font-weight 0.4s ease;
                  }
                  .offcanvas-body > ul > li div > ul> li:hover>a {
                    border-bottom: 1px solid #300c47;
                    transition: color 0.4s ease, font-weight 0.4s ease;
                  }
                  .offcanvas-body > ul > li:hover{
                    border-bottom: 1px solid #300c47;
                    transition: color 0.4s ease, font-weight 0.4s ease;
                  }
                .navbar-toggler{
                    text-decoration: none;
                    position: absolute;
                    top: 11px;
                    z-index: 1010;
                    left: 10px;
                    color: #545454;
                    font-weight: 600;
                    text-transform: uppercase;
                    font-size: 30px;
                }
                .meanmenu-reveal{
                    display: none !important;
                }
                .nice-select .list{
                    overflow: visible !important;
                }
                /* Initially hide the submenu */
                .subdropdown {
                    display: none;
                }

                /* Show the submenu when the parent category is hovered */
                .option:hover .subdropdown {
                    display: block;
                }

                /* Optionally, you can adjust the submenu's appearance (e.g., adding padding, background, etc.) */
                .sublist {
                    background-color: #f8f9fa; /* Light background color */
                    border: 1px solid #ddd; /* Border around the submenu */
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Optional: Add shadow for better visibility */
                }

            </style>
               <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent" style="display: block;">
                  <ul class="navbar-nav">
                     <div class="left">
                        <div class="nice-select" tabindex="0">
                           <span class="current">All Categories</span>
                           <ul class="list">
                                <li data-value="All Categories" class="option selected">
                                    <a class="text-dark" href="{{ route('filters.show', ['slug' => 'all']) }}">All Categories</a>
                                </li>

                                @foreach ($categories as $category)
                                    <li data-value="{{$category->category_name}}" class="option selected position-relative">
                                        @if ($category->children->count() > 0)
                                        <a class="text-dark" href="{{ route('filters.show', ['slug' => $category->slug]) }}">{{$category->category_name}} <b>></b></a>
                                        @else
                                        <a class="text-dark" href="{{ route('filters.show', ['slug' => $category->slug]) }}">{{$category->category_name}}</a>
                                        @endif
                                        @if ($category->children->count() > 0)
                                            <!-- Submenu will be shown on hover -->
                                            <div class="subdropdown position-absolute start-100 top-0">
                                                <ul class="sublist list-unstyled">
                                                    @foreach ($category->children as $subcategory)
                                                        <li data-value="{{$subcategory->category_name}}" class="option selected">
                                                            <a class="text-dark" href="{{ route('filters.show', ['slug' => $subcategory->slug]) }}">
                                                                {{$subcategory->category_name}}
                                                            </a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif
                                    </li>
                                @endforeach
                           </ul>
                        </div>
                     </div>
                     <li class="nav-item">
                        <a class="nav-link {{ request()->is('/') ? 'active' : '' }}" href="{{('/')}}">Home</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link {{ request()->is('aboutus') ? 'active' : '' }}" href="{{route('aboutus')}}">About Us</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link {{ request()->is('shop') ? 'active' : '' }}" href="{{route('shop')}}">Shop</a>
                     </li>
                     {{-- <li class="nav-item">
                        <a class="nav-link {{ request()->is('faq_information') ? 'active' : '' }}" href="{{url('/faq_information')}}">FAQ's</a>
                     </li> --}}
                     <li class="nav-item">
                        <a class="nav-link {{ request()->is('contactus') ? 'active' : '' }}" href="{{route('contactus')}}">Contact Us</a>
                     </li>
                  </ul>

               </div>
               <div class="side-nav">
                    <ul>
                        <li class="search-container">
                            <!-- Search Icon -->
                            <button type="button" id="search-toggle" class="btn wishlist cart-popup-btn">
                                <i class='bx bx-search'></i>
                            </button>
                            <!-- Search Dropdown -->
                            <div id="search-box" class="dropdown hidden">
                                <input type="text" class="form-control my-2" placeholder="Search product by name or sku" id="search-input" />
                                <!-- Loading Indicator -->
                                <div id="loading-indicator" style="display: none; text-align: center; padding: 10px;">
                                    <span>Loading...</span>
                                </div>
                                <!-- Search Results -->
                                <div id="search-results">
                                    <ul></ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            @livewire('cart-icon-component')
                        </li>
                        {{-- <li>
                            @livewire('wishlist-icon-component')
                        </li> --}}
                    </ul>
                </div>

             </div>
            </nav>
         </div>
      </div>
   </div>
   <!-- End Navbar -->




    @if(View::hasSection('main'))
        @yield('main')
    @else
        {{ $slot }}
    @endif

      <!-- Footer -->
      <footer class="footer-area">
        <div class="footer-shape">
           <img src="{{asset('')}}frontend/assets/images/footer-right-shape.png" alt="Shape">
           <img src="{{asset('')}}frontend/assets/images/shape5.png" alt="Shape">
        </div>
        <div class="container">
           <div class="row justify-content-center">
              <div class="col-sm-6 col-lg-4">
                 <div class="footer-item">
                    <div class="footer-logo">
                       <a class="logo" href="{{route('home')}}">
                       <img src="{{asset('storage/logos/'.$userData->footerlogo)}}" style="height: 55px!important;">
                       </a>
                       <ul>
                          <!--<li>-->
                          <!--   <i class='bx bx-map' ></i>-->
                          <!--   <a href="#">Twin Tower Concord Shopping Complex<br/>Shantinagar, Dhaka.</a>-->
                          <!--</li>-->
                          <li>
                             <i class='bx bx-phone' ></i>
                             <a href="tel:{{$contactinfo->phone}}">{{$contactinfo->phone}}</a>
                          </li>
                          <li>
                             <i class='bx bx-mail-send'></i>
                             <a href="mailto:{{$contactinfo->email}}">{{$contactinfo->email}}</a>
                          </li>
                       </ul>
                    </div>
                 </div>
              </div>
              <div class="col-sm-6 col-lg-2">
                 <div class="footer-item">
                    <div class="footer-services">
                       <h3>Quick Links</h3>
                       <ul>
                          <li>
                             <a href="{{url('/aboutus')}}">About Us</a>
                          </li>
                          {{-- <li>
                             <a href="{{url('/cancellation_and_return')}}">Payment & Returns</a>
                          </li> --}}
                          <li>
                            <a href="{{url('/delivery_information')}}">Delivery Information</a>
                         </li>
                          <li>
                             <a href="{{url('/privacy_and_policy')}}">Privacy Policy</a>
                          </li>
                          <li>
                             <a href="{{url('/terms-and-condition')}}">Terms & Conditions</a>
                          </li>
                          {{-- <li>
                             <a href="{{url('/delivery_information')}}">FAQ</a>
                          </li> --}}
                          <li>
                             <a href="{{route('contactus')}}">Contact Us</a>
                          </li>
                       </ul>
                    </div>
                 </div>
              </div>
              <div class="col-sm-6 col-lg-2">
                 <div class="footer-item">
                    <div class="footer-services">
                       <h3>My Accounts</h3>
                       <ul>
                          <li>
                             <a href="{{route('cart')}}">View Cart</a>
                          </li>
                          {{-- <li>
                             <a href="#">My Wishlist</a>
                          </li> --}}
                          <li>
                             <a href="{{url('/trackorder')}}">Order Tracking</a>
                          </li>
                          <li>
                            @auth('customer')
                                @php
                                $user = Auth::guard('customer')->user();
                                $fullName = $user->customer->firstName . ' ' . $user->customer->lastName;
                                @endphp
                            <a class="customer_info " href="{{route('customer.dashboard')}}" >My Account({{ $fullName }})</a>
                            @else
                                {{-- Show login/register links --}}
                                <a href="#" data-bs-toggle="modal" data-bs-target="#login">My Account</a>
                            @endauth
                          </li>
                       </ul>
                    </div>
                 </div>
              </div>
              <div class="col-sm-6 col-lg-4">
                 <div class="footer-item">
                    <div class="footer-services">
                       <h3>Help Desk</h3>
                       <ul>
                           <li>
                              <a href="{{url('/terms-and-condition')}}">Terms of Use</a>
                           </li>
                           <li>
                              <a href="{{url('/privacy_and_policy')}}">Privacy Policy</a>
                           </li>
                           {{-- <li>
                              <a href="{{url('/cancellation_and_return')}}">Payment & Returns</a>
                           </li> --}}
                           <li>
                              <a href="{{url('/delivery_information')}}">Delivery Information</a>
                           </li>
                           {{-- <li>
                              <a href="{{url('/faq_information')}}">Help/FAQ</a>
                           </li> --}}
                       </ul>
                    </div>
                 </div>
              </div>
           </div>
           <div class="row align-items-center">
              <div class="col-sm-6 col-lg-6">
                  <div class="social-links">
                    <ul>
                       <li>
                          <a href="https://www.facebook.com/" target="_blank">
                          <i class="bx bxl-facebook"></i>
                          </a>
                       </li>
                       <li>
                          <a href="https://www.twitter.com/" target="_blank">
                          <i class="bx bxl-twitter"></i>
                          </a>
                       </li>
                       <li>
                          <a href="https://www.linkedin.com/" target="_blank">
                          <i class="bx bxl-linkedin"></i>
                          </a>
                       </li>
                       <li>
                          <a href="https://www.skype.com/" target="_blank">
                          <i class="bx bxl-skype"></i>
                          </a>
                       </li>
                       <li>
                          <a href="https://www.youtube.com/" target="_blank">
                          <i class="bx bxl-youtube"></i>
                          </a>
                       </li>
                    </ul>
                 </div>
              </div>
              <div class="col-sm-6 col-lg-6">
                 <div class="payment-cards">
                    <ul>
                       <li>
                          <a href="#" target="_blank">
                          <img src="{{asset('')}}frontend/assets/images/payment1.png" alt="Payment">
                          </a>
                       </li>
                       <li>
                          <a href="#" target="_blank">
                          <img src="{{asset('')}}frontend/assets/images/payment2.png" alt="Payment">
                          </a>
                       </li>
                       <li>
                          <a href="#" target="_blank">
                          <img src="{{asset('')}}frontend/assets/images/payment3.png" alt="Payment">
                          </a>
                       </li>
                       <li>
                          <a href="#" target="_blank">
                          <img src="{{asset('')}}frontend/assets/images/payment4.png" alt="Payment">
                          </a>
                       </li>
                    </ul>
                 </div>
              </div>
           </div>
        </div>
     </footer>
     <!-- End Footer -->
     <!-- Copyright -->
     <div class="copyright-area">
        <div class="container">
           <div class="copyright-item">
              <p>{{ $userData->copyright }}. Developed by <a href="https://qbit-tech.com/" target="_blank">QBit Tech</a>.</p>
           </div>
        </div>
     </div>
     <!-- End Copyright -->

     <!--=== Go Top ===-->
     <div class="go-top active">
        <i class="bx bxs-up-arrow-circle"></i>
        <i class="bx bxs-up-arrow-circle"></i>
     </div>
     <!--=== End Go Top ===-->
     @include('auth.registermodal')

     @include('auth.loginmodal')
     <!--=== Essential JS Files ===-->
     <script src="{{asset('')}}frontend/assets/js/jquery.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/bootstrap.bundle.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/form-validator.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/contact-form-script.js"></script>
     <script src="{{asset('')}}frontend/assets/js/jquery.ajaxchimp.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/jquery.nice-select.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/jquery.meanmenu.js"></script>
     <script src="{{asset('')}}frontend/assets/js/jquery.themepunch.tools.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/jquery.themepunch.revolution.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.actions.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.carousel.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.kenburn.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.layeranimation.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.migration.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.navigation.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.parallax.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.slideanims.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/extensions/revolution.extension.video.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/jquery.mixitup.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/owl.carousel.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/jquery-modal-video.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/thumb-slide.js"></script>

     <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script> -->
     <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
     <script src="{{asset('')}}frontend/assets/js/custom.js"></script>
     @stack('dashboard')
     @stack('checkout')
     @stack('shop')
     @stack('camp')
     @stack('order')

    @livewireScripts

     <!-- Script Code for  Product details -->
     <script>
     $(document).ready(function () {
        // Handle color selection
        $('.color-option').on('click', function (e) {
           e.preventDefault(); // Prevent default anchor behavior

           // Remove active state and hide all stock previews
           $('.color-option').removeClass('active').css('border', '4px solid white');
           $('.color-stock-preview').hide();

           // Show the stock preview of the selected color and add active class with red border
           $(this).addClass('active').css('border', '4px solid #434E6E');
           $(this).closest('li').find('.color-stock-preview').show();
        });

        // Handle size selection
        $('.size-option').on('click', function (e) {
           e.preventDefault(); // Prevent default anchor behavior

           // Remove active state from all size options and hide all stock previews
           $('.size-option').removeClass('active').css('border', '2px solid #808080');
           $('.size-option').removeClass('activebg').css({'background': 'white', 'color': 'black'});
           $('.size-stock-preview').hide();

           // Show the stock preview of the selected size and add active class with border
           $(this).addClass('activebg').css('background', '#808080');
           $(this).closest('li').find('.size-stock-preview').show();
        });
     });
     </script>

<!-- for cart -->
<script>
$(document).ready(function () {
   // When the modal is about to show
   $('#cartModal').on('show.bs.modal', function () {
       // Slide in from the right
       $(this).find('.modal-dialog').css({
           'transform': 'translateX(100%)',
           'transition': 'transform 0.1s ease-out'
       });
   });

   // When the modal is fully shown
   $('#cartModal').on('shown.bs.modal', function () {
       // Reset the transform to bring it to its original position
       $(this).find('.modal-dialog').css('transform', 'translateX(0)');
   });

   // When the modal is being hidden
   $('#cartModal').on('hide.bs.modal', function () {
       // Slide out to the right
       $(this).find('.modal-dialog').css('transform', 'translateX(100%)');
   });
   // When the modal is about to show
   $('#wishlistModal').on('show.bs.modal', function () {
       // Slide in from the right
       $(this).find('.modal-dialog').css({
           'transform': 'translateX(100%)',
           'transition': 'transform 0.1s ease-out'
       });
   });

   // When the modal is fully shown
   $('#wishlistModal').on('shown.bs.modal', function () {
       // Reset the transform to bring it to its original position
       $(this).find('.modal-dialog').css('transform', 'translateX(0)');
   });

   // When the modal is being hidden
   $('#wishlistModal').on('hide.bs.modal', function () {
       // Slide out to the right
       $(this).find('.modal-dialog').css('transform', 'translateX(100%)');
   });
});

</script>

<script>
  function highlightRow(radio) {
     // Remove bold class from all rows
     const rows = document.querySelectorAll("#sizeTable tr");
     rows.forEach(row => row.classList.remove("table-active", "fw-bold"));

     // Add bold class to the selected row
     const selectedRow = radio.closest("tr");
     selectedRow.classList.add("table-active", "fw-bold");
  }
</script>

@if(Session::has('success'))
<script>
    $.Notification.autoHideNotify('success', 'top right', 'Success', '{{ Session::get('success') }}');
</script>
@endif
@if(Session::has('danger'))
    <script>
        $.Notification.autoHideNotify('danger', 'top right', 'Danger', '{{ Session::get('danger') }}');
    </script>
@endif
@if(Session::has('warning'))
<script>
    $.Notification.autoHideNotify('warning', 'top right', 'Warning', '{{ Session::get('warning') }}');
</script>
@endif
<script>
    $(document).ready(function () {
        $('#search-toggle').on('click', function () {
            $('#search-box').toggleClass('visible');
        });

        function searchHandel(searchInput, showProductDiv, loadingIndicator) {
            var searchTerm = searchInput.val().trim();
            console.log(searchTerm);

            if (searchTerm !== '') {
                loadingIndicator.show();

                $.ajax({
                    url: "{{ route('search') }}",
                    type: 'GET',
                    dataType: 'json',
                    data: {
                        search: searchTerm
                    },
                    success: function(data) {
                        console.log(data);
                        var ul = showProductDiv.find('ul');
                        ul.empty();

                        if (data.products.length === 0) {
                            ul.append('<li>No products found</li>');
                        } else {
                            data.products.forEach(function(product) {
                                var imageUrl = product.product_image; // The first product image URL
                                var slug = product.slug;
                                var productUrl = '{{ url('products') }}' + '/' + slug;
                                var li = $('<li>' +
                                    '<a href="' + productUrl + '">' +
                                    '<div class="item_img">' +
                                    '<img src="' + imageUrl + '" alt="' + product.slug + '" width="60px" >' +
                                    '</div>' +
                                    '<div class="item_tile">' +
                                    '<h4 class="product_title"><strong>' + product.product_name + '</strong></h4>' +
                                    '<p class="text-sm">Price: ৳' + product.regular_price + '</p>' +
                                    '<p class="text-sm">Sku: ' + product.sku + '</p>' +
                                    '</div>' +
                                    '</a>' +
                                    '</li>');

                                ul.append(li);
                            });
                        }

                        loadingIndicator.hide();
                        showProductDiv.show();
                    },
                    error: function(xhr, status, error) {
                        console.error('Error fetching product suggestions:', error);
                        loadingIndicator.hide();
                    }
                });
            } else {
                showProductDiv.hide();
            }
        }

        // Trigger search handling on keyup
        $('#search-input').keyup(function(event) {
            searchHandel($('#search-input'), $('#search-results'), $('#loading-indicator'));
        });
    });
</script>
<style>
    .search-container {
        position: relative;
    }
    #search-box {
        position: absolute;
        top: 50px;
        right: 0;
        width: 400px;
        background-color: #ffffff;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        visibility: hidden;
        opacity: 0;
        pointer-events: none;
        transition: opacity 0.3s ease, visibility 0.3s ease;
        z-index: 1000;
    }
    #search-box.visible {
        visibility: visible;
        opacity: 1;
        pointer-events: auto;
        padding: 10px

    }
    #search-input {
        width: 100%;
        padding: 10px;
        outline: none;
        font-size: 14px;
        border: 1px solid #621991
    }
    #search-results {
        max-height: 300px;
        overflow-y: auto;
    }
    #search-results ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    #search-results li {
        display: flex;
        align-items: center;
        padding: 10px;
        border-bottom: 1px solid #f0f0f0;
    }

    #search-results li a {
        display: flex;
        align-items: center;
        text-decoration: none;
        color: #333;
    }

    #search-results li img {
        width: 50px;
        height: 50px;
        margin-right: 10px;
        border-radius: 5px;
        object-fit: cover;
    }

    #search-results li span {
        font-size: 14px;
    }

    #search-results li:hover {
        background-color: #efe7f4;
        cursor: pointer;
    }
</style>


<script>
    $(document).ready(function () {
        $('#search-toggle-mobile').on('click', function () {
            $('#search-box-mobile').toggleClass('visible');
        });

        function searchHandel(searchInput, showProductDiv, loadingIndicator) {
            var searchTerm = searchInput.val().trim();
            console.log(searchTerm);

            if (searchTerm !== '') {
                loadingIndicator.show();

                $.ajax({
                    url: "{{ route('search') }}",
                    type: 'GET',
                    dataType: 'json',
                    data: {
                        search: searchTerm
                    },
                    success: function(data) {
                        console.log(data);
                        var ul = showProductDiv.find('ul');
                        ul.empty();

                        if (data.products.length === 0) {
                            ul.append('<li>No products found</li>');
                        } else {
                            data.products.forEach(function(product) {
                                var imageUrl = product.product_image; // The first product image URL
                                var slug = product.slug;
                                var productUrl = '{{ url('products') }}' + '/' + slug;
                                var li = $('<li>' +
                                    '<a href="' + productUrl + '">' +
                                    '<div class="item_img">' +
                                    '<img src="' + imageUrl + '" alt="' + product.slug + '" width="60px" >' +
                                    '</div>' +
                                    '<div class="item_tile">' +
                                    '<h4 class="product_title"><strong>' + product.product_name + '</strong></h4>' +
                                    '<p class="text-sm">Price: ৳' + product.regular_price + '</p>' +
                                    '<p class="text-sm">Sku: ' + product.sku + '</p>' +
                                    '</div>' +
                                    '</a>' +
                                    '</li>');

                                ul.append(li);
                            });
                        }

                        loadingIndicator.hide();
                        showProductDiv.show();
                    },
                    error: function(xhr, status, error) {
                        console.error('Error fetching product suggestions:', error);
                        loadingIndicator.hide();
                    }
                });
            } else {
                showProductDiv.hide();
            }
        }

        // Trigger search handling on keyup
        $('#search-input-mobile').keyup(function(event) {
            searchHandel($('#search-input-mobile'), $('#search-results-mobile'), $('#loading-indicator-mobile'));
        });
    });
</script>
<style>
    .search-container-mobile {
        position: relative;
    }
    #search-box-mobile {
        position: absolute;
        top: 50px;
        right: 0;
        width: 400px;
        background-color: #ffffff;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        visibility: hidden;
        opacity: 0;
        pointer-events: none;
        transition: opacity 0.3s ease, visibility 0.3s ease;
        z-index: 1000;
    }
    #search-box-mobile.visible {
        visibility: visible;
        opacity: 1;
        pointer-events: auto;
        padding: 10px

    }
    #search-input-mobile {
        width: 100%;
        padding: 10px;
        outline: none;
        font-size: 14px;
        border: 1px solid #621991
    }
    #search-results-mobile {
        max-height: 300px;
        overflow-y: auto;
    }
    #search-results-mobile ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    #search-results-mobile li {
        display: flex;
        align-items: center;
        padding: 10px;
        border-bottom: 1px solid #f0f0f0;
    }

    #search-results-mobile li a {
        display: flex;
        align-items: center;
        text-decoration: none;
        color: #333;
    }

    #search-results-mobile li img {
        width: 50px;
        height: 50px;
        margin-right: 10px;
        border-radius: 5px;
        object-fit: cover;
    }

    #search-results-mobile li span {
        font-size: 14px;
    }

    #search-results-mobile li:hover {
        background-color: #efe7f4;
        cursor: pointer;
    }
</style>
  </body>
</html>
