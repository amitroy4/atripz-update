@extends('layouts.home')
@section('title','Return and Cacellation Policy')
@section('main')

<main class="main">
    <section class="mt-100 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="single-page pr-30 mb-lg-0 mb-sm-5">
                        <div class="single-header style-2">
                            <h2>Delivery Information</h2>
                        </div>

                        <div class="single-content">
                            <p>Nationwide delivery to all over Bangladesh by Steadfast Courier Service.</p>
                            <h4>Shipping Policy:</h4>
                            <ol>
                                <li><b>Processing Time:</b> Orders are typically processed within 1-2 business days after payment confirmation. During peak seasons or promotional periods, processing times may be slightly longer.</li>
                                <li><b>Shipping Methods:</b> We offer several shipping options to accommodate your needs. You can choose from standard shipping during checkout.</li>
                                <li><b>Shipping Rates:</b> Shipping rates vary depending on the weight of your package, your location, and the shipping method selected. You can view the shipping costs at checkout before completing your purchase. <br>
                                    <ul>
                                        <li>Inside Dhaka: 70tk</li>
                                        <li>Outside Dhaka: 130tk</li>
                                    </ul>
                                </li>
                                <li><b>Delivery Time:</b> Delivery times vary based on your location and the shipping method chosen But Approximate Time 2-3 Days. Once your order has been shipped, you will receive a tracking number via email to monitor the delivery status of your package.</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <style>
                    ol {
                        list-style-type: decimal;
                    }
                </style>

            </div>
        </div>
    </section>
</main>

@endsection
