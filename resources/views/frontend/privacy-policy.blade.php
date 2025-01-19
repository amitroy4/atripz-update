@extends('layouts.home')
@section('title','Privacy and Policy')
@section('main')
    <main class="main">
        <section class="mb-50" style="padding-top: 100px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="single-page pr-30">
                            <div class="single-header style-2">
                                <h2>{{$privacyPolicy->title}}</h2>
                            </div>
                            <div class="single-content">
                                {!! $privacyPolicy->description !!}
                            </div>
                        </div>
                    </div>

                </div>
                <style>
                    ol {
                        list-style-type: decimal;
                    }
                </style>
            </div>
        </section>
    </main>

@endsection

