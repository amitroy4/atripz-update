@extends('layouts.home')
@section('title','Delivery Information')
@section('main')
<main class="main">
    <section class="mb-50" style="padding-top: 100px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="single-page pr-30 mb-lg-0 mb-sm-5">
                        <div class="single-header style-2">
                            <h2>{{$deliveryInformation->title}}</h2>
                        </div>

                        <div class="single-content">{!! $deliveryInformation->description !!}</div>
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

