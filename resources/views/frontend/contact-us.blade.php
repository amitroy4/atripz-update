@extends('layouts.home')
@section('title','Contact us')
@section('main')
<main class="main">
    <!-- Contact -->
    <div class="contact-area" style="padding-top: 150px; padding-bottom: 100px">
        <div class="container">
            <div class="section-title">
                <h2>Get In Touch</h2>
            </div>
            <div class="row">

                <div class="col-sm-6 col-lg-8">
                    <form id="contactForm" action="{{route('webmessage.store')}}" method="post">
                        @csrf
                        @method('POST')
                        <div class="row">
                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="name" class="form-label">Name:</label>
                                    <input type="text" name="name" id="name" class="form-control" placeholder="Name"
                                        required data-error="Please enter your name">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="email" class="form-label">Email:</label>
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Email"
                                        required data-error="Please enter your email">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="phone_number" class="form-label">Phone:</label>
                                    <input type="text" name="phone" id="phone_number" placeholder="Phone" required
                                        data-error="Please enter your number" class="form-control">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-12 col-lg-6">
                                <div class="form-group">
                                    <label for="msg_subject" class="form-label">Subject:</label>
                                    <input type="text" name="subject" id="msg_subject" class="form-control"
                                        placeholder="Subject" required data-error="Please enter your subject">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="message" class="form-label">Message:</label>
                                    <textarea name="message" class="form-control" id="message" cols="30" rows="8"
                                        placeholder="Write message" required data-error="Write your message"></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>


                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3">
                                        <label class="form-check-label" for="flexCheckDefault3">
                                            I accept all <a href="terms-conditions.html">Terms & Conditions</a>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="text-center">
                                    <button type="submit submit-auto-width" class="btn common-btn">
                                        Send Message
                                    </button>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>

                <div class="col-sm-6 col-lg-4">
                    @php
                    $contactinfos = DB::table('contactinfos')->first();
                    @endphp
                    <div class="contact-info">
                        <h3>Contact Information:</h3>
                        <ul class="info">
                            <li>
                                <i class="bx bx-map"></i>
                                <a href="#">{{$contactinfos->address}}</a>
                            </li>
                            <li>
                                <i class="bx bx-phone"></i>
                                <a href="tel:9908314326">{{$contactinfos->phone}}</a>
                            </li>
                            <li>
                                <i class="bx bx-mail-send"></i>
                                <a href="/cdn-cgi/l/email-protection#8ae2efe6e6e5caefe9e5faa4e9e5e7"><span
                                        class="__cf_email__"
                                        data-cfemail="d3bbb6bfbfbc93b6b0bca3fdb0bcbe">{{$contactinfos->email}}</span></a>
                            </li>
                        </ul>
                        <div class="social-links">
                            <ul>
                                <li>
                                    <a href="https://www.facebook.com/" target="_blank">
                                        <i class='bx bxl-facebook'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.twitter.com/" target="_blank">
                                        <i class='bx bxl-twitter'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.linkedin.com/" target="_blank">
                                        <i class='bx bxl-linkedin'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.skype.com/" target="_blank">
                                        <i class='bx bxl-skype'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/" target="_blank">
                                        <i class='bx bxl-youtube'></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- End Contact -->

    <!-- Map -->
    <div class="map-area pb-100">
        <div class="container">
            {!! $contactinfos->google_map !!}
        </div>
    </div>
    <!-- End Map -->




</main>
@endsection
