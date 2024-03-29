@extends('layouts.home.app')
@section('title', ' Restaurants')
@Section('main_content')
<main>
    <div class="bg_gray">
        <div class="container margin_60_40">
            <div class="row add_bottom_25">
                <div class="main_title">
                    <span><em></em></span>
                    <h2>Restaurants</h2>
                    {{-- <p>OUR TOP RATED RESTAURANT.</p> --}}
                    {{-- <a href="#">View All &rarr;</a> --}}
                </div>
                @forelse ($restaurants as $restaurant)
                <div class="col-lg-6">
                    <div class="list_home">
                        <ul>
                            <li>
                                <a href="{{ route('user.restaurent_details', ['id' => $restaurant->id]) }}">
                                    <figure>
                                        <img src="{{ asset('storage/app/public/restaurant/cover') }}/{{ $restaurant['cover_photo'] }}"
                                            data-src="{{ asset('storage/app/public/restaurant/cover') }}/{{ $restaurant['cover_photo'] }}"
                                            alt="" class="lazy" width="350"
                                            onerror="this.src='{{ asset('/home_assets/img/cat_listing_placeholder.png') }}'"
                                            height="118">
                                    </figure>
                                    <div class="score">
                                                @for ($i = 1; $i <= 5; $i++)
                                                    @if ($i <= round($restaurant->order_reviews_avg_rating))
                                                        <i class="fa-solid fa-star" style="color: #f3723b"></i>
                                                    @else
                                                        <i class="fa-regular fa-star"></i>
                                                    @endif
                                                @endfor
                                                <span>{{ $restaurant->order_reviews_count }}
                                                    {{ Str::plural('Review', $restaurant->order_reviews_count) }}</span>
                                            </div>
                                    <!--<em>{{ $restaurant['cuisine'] }}</em>-->
                                    <h3>{{ $restaurant['name'] }}</h3>
                                    <small>{{ $restaurant['address'] }}</small>
                                    <ul>
                                        <li><span
                                                class="ribbon off">{{ $restaurant['delivery_time'] }}</span>
                                        </li>
                                        <!--<li>Average price ${{ $restaurant['average_price'] }}</li>-->
                                    </ul>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            @empty
            <div class="col-md-12">
                <div class="list_home">
                    <ul>
                        <li class="text-center">
                            No Restaurant found in your selected area.
                        </li>
                    </ul>
                </div>
            </div>
            @endforelse
        </div>
    </div>
</main>
@endsection