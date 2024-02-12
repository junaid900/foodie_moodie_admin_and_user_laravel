@extends('layouts.home.app')
@section('title', ' Favorites Restaurants')
@Section('main_content')

    <div class="container" style="padding-top: 80px;">
        @if(!$restaurants->isEmpty())
        <h2 style="padding: 10px 0px">Your Favorites Restaurants</h2>
        @endif
        
        @forelse ($restaurants as $restaurant)
        <?php
                    $services = [];
                    if ($restaurant->delivery == true) {
                        $services[] = 'Delivery';
                    }
                    if ($restaurant->take_away == true) {
                        $services[] = 'Take Away';
                    }
                    if ($restaurant->dine_in == true) {
                        $services[] = 'DineIn';
                    }
                    
                    ?>
                    <div class="col-lg-4 col-md-6 col-sm-16">
                        <a href="{{ route('user.restaurent_details', $restaurant->id) }}">
                            <div class="restaurant-card">
                                <div class="restaurant-content">
                                    <div style="position: relative;width:100%">
                                        <img src="https://img.freepik.com/premium-photo/cozy-restaurant-with-people-waiter_175935-230.jpg"
                                            style="object-fit: cover; width:100%" class="restaurant-image" />
                                        <div style="position: absolute;top:3%;">
                                            @foreach ($services as $service)
                                                <p class="restaurant-service-badge">{{ $service }}</p>
                                            @endforeach

                                        </div>
                                    </div>
                                    <h2 class="restaurant-title">{{ $restaurant->name }}</h2>
                                    <span class="restaurant-delivery-time"><i class="fa-solid fa-motorcycle"
                                            style="color: #f3723b; padding-right:8px"></i>{{ $restaurant->delivery_time }}
                                        mins</span>
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
                                </div>
                            </div>
                        </a>
                    </div>
    @empty
        <div style="margin:auto;width:100%;text-align:center">
                <h2 style="padding-top: 50px;">No Favourites Saved</h2>
                <p>You’ll see all your favorites here, to make ordering even faster.</p>
                <a href="{{ route('user.home.restaurants') }}">
                    <button id="btn-favorite" class="btn-favorite">
                        <span id="find-favorite">Let's find some favourites</span>
                    </button>
                </a>
            </div>
    @endforelse
        
        
        
        
        
        
        
        
        
        

    </div>
@endsection
