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
                            <h2>{{$cancelReturn->title}}</h2>
                        </div>

                        <div class="single-content">{!! $cancelReturn->description !!}</div>
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
