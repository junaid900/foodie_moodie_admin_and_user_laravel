@extends('layouts.home.app')
@section('title', ' home')
@Section('main_content')
@php
        $user = Auth()->user();
    @endphp
    <main>
        <style>
            @media (max-width: 767.98px) {
                .border-sm-start-none {
                    border-left: none !important;
                }
            }
            /*CART STYLE*/
            .quantity {
                display: flex;
                width: 78px;
                height: 25px;
                border: 2px solid #3498db;
                border-radius: 4px;
                overflow: hidden;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            } 
            
            .quantity button {
                background-color: #36888b;
                color: #fff;
                border: none;
                cursor: pointer;
                /* font-size: 20px; */
                width: 23px;
                /* height: 25px; */
                text-align: center;
                transition: background-color 0.2s;
            }
            
            .quantity button:hover {
              background-color: #2980b9;
            }
            
            .input-box {
                width: 30px;
                text-align: center;
                border: none;
                /*padding: 8px 10px;*/
                font-size: 12px;
                outline: none;
            }
            
            /* Hide the number input spin buttons */
            .input-box::-webkit-inner-spin-button,
            .input-box::-webkit-outer-spin-button {
              -webkit-appearance: none;
              margin: 0;
            }
            
            .input-box[type="number"] {
              -moz-appearance: textfield;
            }
              /*CART STYLE END*/
        </style>

        <div class="hero_in detail_page background-image"
            data-background="url({{ asset('storage/app/public/restaurant/cover/' . $restaurent['response']['cover_photo']) }})">
            <div class="wrapper opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                <div class="container">
                    <div class="main_info">
                        <div class="row">
                            <div class="col-xl-4 col-lg-5 col-md-6">
                                <div class="head">
                                    <div class="score"> 
                                        <img src='{{ asset('storage/app/public/restaurant/' . $restaurent['response']['logo']) }}'
                                            height="50px" width="50px"
                                            {{--onerror="this.src='{{ asset('home_assets/img/cat_listing_placeholder.png') }}'"--}}
                                            >
                                    </div>
                                </div>
                                <h1>{{ $restaurent['response']['name'] }}</h1>
                                {{ $restaurent['response']['address'] }} - <a
                                    href="https://www.google.com/maps?q={{ $restaurent['response']['latitude'] }},{{ $restaurent['response']['longitude'] }}"
                                    target="blank">Get directions</a>
                            </div>
                            <div class="col-xl-8 col-lg-7 col-md-6 position-relative">
                                <div class="buttons clearfix">
                                    <span class="magnific-gallery">
                                        {{-- <a href="{{ asset('public/home_assets/img/detail_1.jpg')}}" class="btn_hero" title="Photo title" data-effect="mfp-zoom-in"><i class="icon_image"></i>View photos</a> --}}
                                        <a href="{{ asset('public/home_assets/img/detail_2.jpg') }}" title="Photo title"
                                            data-effect="mfp-zoom-in"></a>
                                        <a href="{{ asset('public/home_assets/img/detail_3.jpg') }}" title="Photo title"
                                            data-effect="mfp-zoom-in"></a>
                                    </span>
                                    {{-- <a href="javascript:;" class="btn_hero wishlist"><i class="icon_heart"></i>Wishlist</a> --}}
                                </div>
                            </div>
                        </div>
                        @if ($user)
                            <button id="btn-favorite" class="btn-favorite" 
                                data-restaurant="{{ $restaurent['response']['id'] }}">
                                @if ($isFavorite)
                                    <i id="favorite-icon" class="fa-solid fa-heart"
                                        style="color: #f3723b; padding-right: 8px;"></i>
                                @else
                                    <i id="favorite-icon" class="fa-regular fa-heart"
                                        style="color: #f3723b; padding-right: 8px;"></i>
                                @endif

                                <span id="favorite-text">
                                    @if ($isFavorite)
                                        Added to Favourites
                                    @else
                                        Add to Favourites
                                    @endif
                                </span>
                            </button>
                        @endif
                    </div>
                    <!-- /main_info -->
                </div>
            </div>
        </div>
        <!--/hero_in-->

        {{-- <nav class="secondary_nav sticky_horizontal">
            <div class="container">
                <ul id="secondary_nav">
                    <li><a href="#section-1">Starters</a></li>
                    <li><a href="#section-2">Main Courses</a></li>
                    <li><a href="#section-3">Desserts</a></li>
                    <li><a href="#section-4">Drinks</a></li>
                    <li><a href="#section-5"><i class="icon_chat_alt"></i>Reviews</a></li>
                </ul>
            </div>
            <span></span>
        </nav> --}}
        <!-- /secondary_nav -->

        <div class="bg_gray">
            <div class="container margin_detail">
                <div class="row" id="product_cart_detail">
                    <div class="col-lg-8 list_menu">
                        {{-- start deals --}}
                        {{-- <div class="row "> --}}
                        <h4>Special Deals</h4>
                        @forelse($restaurent['response']['special_deals'] as $deals)
                            <div class="col-md-12">
                                <div class="card shadow-0 border rounded-3">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-12 col-lg-3 col-xl-3 mb-4 mb-lg-0">
                                                <div class="bg-image hover-zoom ripple rounded ripple-surface">
                                                    <img src="{{ asset('storage/app/public/product/' . $deals['image']) }}"
                                                        class="rounded" width="100" height="100" />
                                                    <a href="#!">
                                                        <div class="hover-overlay">
                                                            <div class="mask"
                                                                style="background-color: rgba(253, 253, 253, 0.15);"></div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-6 col-xl-6">
                                                <h5>{{ $deals['title'] }}</h5>
                                                <p class=" my-1 mb-md-0">
                                                    {{ $deals['description'] }}
                                                </p>
                                            </div>
                                            <div class="col-md-6 col-lg-3 col-xl-3 border-sm-start-none border-start">
                                                <div class="d-flex flex-row align-items-center mb-1">
                                                    <h4 class="mb-1 me-1">Rs. {{ $deals['price'] }}</h4>
                                                </div>
                                                {{-- <h6 class="text-success">Free shipping</h6> --}}
                                                <div class="d-flex flex-column mt-4">
                                                    <button class="btn btn-teal btn-sm" type="button"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#dealsModel{{ $deals['id'] }}">Add to
                                                        Cart</button>
                                                    {{-- <button class="btn btn-outline-primary btn-sm mt-2" type="button">
                                                Add to Cart
                                            </button> --}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{-- start deals modal --}}
                            <div class="modal fade" style="z-index:50000;" id="dealsModel{{ $deals['id'] }}"
                                data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Deal Comment</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-12">
                                                    <label for="comment{{ $deals['id'] }}">Comment</label>
                                                    <textarea class="form-control" id="comment{{ $deals['id'] }}" rows="4" style="height:80%;"
                                                        placeholder="Write your comment here"></textarea>
                                                </div>
                                                <div class="col-md-4 col-7 mt-2">
                                                    <label for="quantity{{ $deals['id'] }}">Quantity</label>
                                                    <div class="input-group ">
                                                        <span class="input-group-btn">
                                                            <button type="button"
                                                                class="btn btn-secondary rounded-circle  btn-number"
                                                                data-type="minus" data-field="quantity{{ $deals['id'] }}">
                                                                <span class="fa fa-minus"></span>
                                                            </button>
                                                        </span>
                                                        <input type="number" name="quantity{{ $deals['id'] }}"
                                                            class="form-control border-none input-number quantity"
                                                            style="border:none;box-shadow:none;padding-left:29px"
                                                            value="1" min="1" max="10">
                                                        <span class="input-group-btn p-0">
                                                            <button type="button"
                                                                class="btn btn-teal btn-number rounded-circle"
                                                                data-type="plus" data-field="quantity{{ $deals['id'] }}">
                                                                <span class="fa fa-plus"></span>
                                                            </button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-orange"
                                                onclick="add_to_deals({{ $deals['id'] }},'{{ $deals['title'] }}','{{ $deals['image'] }}',{{ $deals['price'] }},{{ $deals['restaurant_id'] }});">Add
                                                to Cart</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {{-- end deals modal --}}
                        @empty
                            <div class="col-md-12 text-center">Deals not found</div>
                        @endforelse


                        {{-- </div> --}}
                        {{-- /end deals --}}

                        @php
                            $categories = $categories['response']['data'];
                        @endphp
                        @if (!empty($categories))
                            @foreach ($categories as $c => $category)
                                @if (!empty($category['category_products']))
                                    <section id="section-1">
                                        <h4> {{ $category['name'] }}</h4>
                                        <div class="table_wrapper">
                                            <table class="table table-borderless cart-list menu-gallery">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            Item
                                                        </th>
                                                        <th>
                                                            Price
                                                        </th>
                                                        <th>
                                                            Order
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @if (!empty($category['category_products']))
                                                        @foreach ($category['category_products'] as $p => $product)
                                                            <tr>
                                                                <td class="d-md-flex align-items-center">
                                                                    <figure>
                                                                        {{-- onerror="this.src='{{ asset('home_assets/img/cat_listing_placeholder.png') }}'" --}}
                                                                        {{-- {{ asset('storage/app/public/product/' . $product['image']) }} --}}
                                                                        <a href="javascript:;" title="Photo title"
                                                                            data-effect="mfp-zoom-in">
                                                                            <img src="{{ asset('storage/app/public/product/' . $product['image']) }}"
                                                                                data-src="{{ asset('storage/app/public/product/' . $product['image']) }}"
                                                                                alt="thumb" class="lazy"
                                                                                onerror="this.src='{{ asset('home_assets/img/cat_listing_placeholder.png') }}'"></a>
                                                                    </figure>
                                                                    <div class="flex-md-column">
                                                                        <h4>{{ $product['name'] }}</h4>
                                                                        <p>
                                                                            {{ $product['description'] }}
                                                                        </p>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <strong>{{ $product['price'] }}</strong>
                                                                </td>
                                                                <td class="options">
                                                                    <div class="dropdown dropdown-options">
                                                                        <a href="javascript:;" class="dropdown-toggle"
                                                                            onclick="get_item_detail({{ $product['id'] }})"
                                                                            data-bs-toggle="dropdown"
                                                                            aria-expanded="true"><i
                                                                                class="icon_plus_alt2"></i></a>
                                                                        <div class="dropdown-menu drop_down_p"
                                                                            id="drop_down_{{ $product['id'] }}">

                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    @endif
                                                </tbody>
                                            </table>
                                        </div>
                                    </section>
                                @endif
                            @endforeach
                        @endif

                    </div>
                    <!-- /col -->

                    <div class="col-lg-4" id="sidebar_fixed">
                        <div class="box_order mobile_fixed">
                            <div class="head">
                                <h3>Cart</h3>
                                <a href="javascript:;" class="close_panel_mobile"><i class="icon_close"></i></a>
                            </div>
                            <!-- /head -->
                            <div class="main" id="order_summary_details">
                                <div id="order_summary"></div>
                                <!--<h3>Offers</h3>-->
                                <div id="order_summary_offers"></div>
                                <ul class="clearfix" id="total_records_parent">
                                    <li class="total">Subtotal<span id="sub_total">Rs. 0</span></li>
                                    <li>Delivery fee<span>Rs. 0</span></li>
                                    <li class="total">Total<span id="total">Rs. 0</span></li>
                                </ul>

                               
                                <!-- /dropdown -->
                                <div class="btn_1_mobile">
                                    <button href="javascript:void();" class="btn_1 gradient full-width mb_5"
                                        id="check_out_btn">Check out</button>
                                      
                                    <div class="text-center"><small>No money charged on this steps</small></div>
                                </div>
                            </div>
                        </div>
                        <!-- /box_order -->
                        <div class="btn_reserve_fixed"><a href="javascript:;" class="btn_1 gradient full-width">View
                                Basket</a></div>
                    </div>
                </div>
                <!-- /row -->
                {{-- checkout detail page show --}}
                <div class="row my-3" id="check_out_detail">
                    <div class="col-md-12">
                        <button class="btn btn-teal" id="go_back_to_products">Go back!</button>

                    </div>
                    {{-- <div class="col-md-3">lkasdj dk</div> --}}

                    <div class="col-md-8 my-2">
                        <div class="table_wrapper">
                            <table class="table table-borderless cart-list menu-gallery">
                                <thead>
                                    <tr>
                                        <th>
                                            Item
                                        </th>
                                        <th>
                                            Quantity
                                        </th>
                                        <th>
                                            Price
                                        </th>
                                        <th>
                                            Total
                                        </th>
                                        <th>
                                            Remove
                                        </th>
                                    </tr>
                                </thead>
                                <tbody id="second_cart_product_show">

                                </tbody>
                            </table>
                        </div>
                    </div>
                    {{-- <div class="col-md-4 my-2">
                        <div class="card border">
                            <div class="card-header bg-secondary text-center">
                                Place Order
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-6"><b>Cart Total</b></div>
                                    <div class="col-6" id="total_second_cart">Rs. 0</div>
                                    <div class="col-6"><b>Delivery Charges</b></div>
                                    <div class="col-6">Rs. 0</div>
                                    <div class="col-6"><b>Total Amount</b></div>
                                    <div class="col-6" id="total_amount_second_cart">Rs. 0</div>
                                </div>
                            </div>

                            <div class=" m-2">
                                <div class="col-sm-4">
                                    <label class="container_radio">Delivery
                                        <input type="radio" value="option1" name="opt_order" checked>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="col-sm-4">
                                    <label class="container_radio">Take away
                                        <input type="radio" value="option1" name="opt_order">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="col-sm-4">
                                    <label class="container_radio">Dine in
                                        <input type="radio" value="option1" name="opt_order">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                    </div> --}}

                    <div class="col-md-4 my-2">
                        <div class="box_order ">
                            <div class="head">
                                <h3>Place Order</h3>
                                <a href="javascript:;" class="close_panel_mobile"><i class="icon_close"></i></a>
                            </div>
                            <!-- /head -->
                            <div class="main">

                                <ul class="clearfix" id="total_records_parent">
                                    <li class="total">Cart Total<span id="total_second_cart">Rs. 0</span></li>
                                    <li class="total">Delivery Charges<span id="delivery_charges_show">Rs. 0</span></li>
                                    <li class="total">Discount<span id="coupon_discount">Rs. 0</span></li>
                                    <li class="total">Total Amount<span id="total_amount_second_cart">Rs. 0</span></li>

                                </ul>
                                <ul class="clearfix" id="">
                                    <li class="h6"><i class="fa-solid fa-location-dot"></i> Delivery Address<span
                                            id=""> <button type="button" id="update_address_btn"
                                                class="btn text-info m-0 p-0"><u>Update Address</u></button></span></li>
                                    <li class="" id="selected_address">
                                        No Address Selected
                                    </li>
                                    <li id="update_address">
                                        <div class="input-group">
                                            {{--<input type="text" id="autocomplete" class="form-control"
                                                placeholder="Enter address" aria-label="location"
                                                aria-describedby="updateLocation">
                                            <button class="btn btn-orange" type="button"
                                                id="updateLocation">Update</button>
                                            <button class="btn" id="close_btn"><i
                                                    class="fa-solid fa-xmark"></i></button>--}}
                                        </div>

                                    </li>

                                </ul>
                                <div class="row opt_order">
                                    <h6>Choose Delivery Method</h6>
                                    <div class="col-12">
                                        <label class="container_radio">Delivery
                                            <input type="radio" value="delivery" name="delivery_method">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="col-12">
                                        <label class="container_radio">Take away
                                            <input type="radio" value="take_away" name="delivery_method">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    {{--<div class="col-12">
                                        <label class="container_radio">Dine In
                                            <input type="radio" value="dine_in" name="delivery_method">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>--}}
                                </div>
                                <div class="row">
                                    <h6>Choose Payment Method</h6>
                                    <div class="col-12">
                                        <label class="container_radio">Cash On Delivery
                                            <input type="radio" value="cash_on_delivery" name="payment">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="col-12">
                                        <label class="container_radio" >Online payment
                                            <input type="radio" id="online_payment" value="digital_payment" name="payment">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="col-12 my-1 text-orange">
                                        <i class="fa-solid fa-gift fs-6 "></i>
                                        <button class="btn px-0 text-orange border-white" id="apply_a_voucher">Apply a
                                            voucher</button>
                                        <div class="input-group " id="voucher_section">
                                            <input type="text" id="voucher_code_input" class="form-control"
                                                placeholder="Enter Coupon" aria-label="location"
                                                aria-describedby="apply-voucher">
                                            <button class="btn btn-teal" type="button"
                                                id="submit-voucher">Apply</button>
                                            <button class="btn" id="close_voucher_btn"><i
                                                    class="fa-solid fa-xmark"></i></button>
                                        </div>
                                    </div>

                                </div>



                                <button class="btn_1 gradient full-width mb_5" id="place_order">Place Order</button>
                                <div id="success-message" class="alert alert-success" style="display: none;"></div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <!-- /container -->
        </div>
        <!-- /bg_gray -->

        <div class="container">
            <div class="review-container">
                <div class="review-header">
                    <h4>Reviews</h4>
                    <p>All ratings ({{ $restaurent['response']['rating_count'] }})</p>
                </div>
                <div class="rating-info">
                    <h4>{{ number_format($restaurent['response']['avg_rating'], 1) }}</h4>
                    <span>
                        @for ($i = 1; $i <= 5; $i++)
                            @if ($i <= round($restaurent['response']['avg_rating']))
                                <i class="fa-solid fa-star" style="color: #f3723b"></i>
                            @else
                                <i class="fa-regular fa-star"></i>
                            @endif
                        @endfor
                    </span>
                </div>
            </div>

            <div class="row">
                @forelse ( $reviews as $key => $review )
                @continue(!isset($review->user))
                <div class="rating-container  col-lg-4 col-md-6 col-sm-12">
                        <div class="rating-card">
                            <h4>{{ $review->user->f_name }} {{ $review->user->l_name }}</h4>
                            <div class="rating-row">
                                <div class="star-rating">
                                    @for ($i = 1; $i <= 5; $i++)
                                        @if ($i <= round($review->rating))
                                            <i class="fa-solid fa-star" style="color: #f3723b"></i>
                                        @else
                                            <i class="fa-regular fa-star"></i>
                                        @endif
                                    @endfor
                                </div>
                                <p class="time-ago">{{ $review->created_at->diffForHumans() }}</p>
                            </div>
                            <p class="review">{{ $review->comment }}</p>
                            <p class="liked-category"><i class="fa-regular fa-thumbs-up"
                                    style="color: #f3723b;padding-right:10px"></i>Liked
                                Category: {{ $review->liked_category }}</p> 
                        </div>
                    </div>
                
                    
                @empty
                    <div></div>
                @endforelse



            </div>

        </div>
      @include('home.commons.order_map_modal',["zone_id"=>$restaurent['response']['zone_id']])
        <!-- /container -->
    </main>
@endsection

@section('scripts')
    <script>
        
        $(document).ready(function(){
            loadCart(); 
            showAddress();
            initCart();
            function initCart(){
                let cart = getCart();
                if(cart == null || cart == undefined){
                    return;
                }
                if(cart.rest_id){
                    delete cart.coupon;
                    delete cart.delivery_charges;
                    saveCart(cart);
                    loadCart();
                }
            }
        });
        function displaySuccessMessage(message,withClass) {
            
            const successMessage =$('success-message');// document.getElementById('success-message');
            if (message == '') {
                $(successMessage).hide();
            } else {
                var innerHtml=`
                <div class="alert ${withClass} alert-dismissible fade show">
 
                ${message}

                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>

                </div>    `;
                successMessage.textContent = message;
                $(successMessage).empty();
                $(successMessage).show();
                $(successMessage).append(message);
            }
        }

        function get_item_detail(id) {
            $('#loading').show();
            $(".drop_down_p").hide();
            $('#drop_down_' + id).show();
            // console.log(id);
            $.ajax({
                type: "get",
                url: "{{ url('api/v1/products/details/') }}" + "/" + id,
                // data: {'id':id}, 
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr(
                        'content'),
                    'Authorization': "Bearer {{ Session::get('token') }}",
                    contentType: "application/json",
                    'ZoneId': `[{{ session()->get('s_zone_id') }}]`,
                },
                success: function(response_data) {
                    $('#loading').hide();
                    // console.log(response_data);

                    window.scrollBy(0, 1);
                    var dropdownHtml = `
                            <h5>Select a variation</h5>
                            <ul class="clearfix">`;

                    //execute loop here
                    if (response_data.response.variations) {
                        $.each(response_data.response.variations, function(index, item) {
                            // console.log(item);
                            $('input[name="myRadio"]').first().prop('checked', true);
                            dropdownHtml += `
                            <li>
                                <label class="container_radio">${item.type}<small> +Rs ${item.price}</small>
                                    <input type="radio" checked class="variations" name="vari"   data-price="${item.price}" data-type="${item.type}" >
                                    <span class="checkmark"></span>
                                </label>
                                
                            </li>`;
                        });

                    } else {
                        dropdownHtml += 'Variation not available.';
                    }
                    // loop end

                    dropdownHtml += `  </ul>
                    <h5>Add ons</h5>
                    <ul class="clearfix">  `;
                    if (response_data.response.add_ons) {
                        $.each(response_data.response.add_ons, function(index, item) {
                            // console.log(item);

                            dropdownHtml += `
                    <li>
                        <label class="container_check"> ${item.name} <small>+Rs ${item.price}</small>
                            <input type="checkbox" id="add_ons_${response_data.response.id}" class="add_ons" value="${item.name}" data-id="${item.id}" data-price="${item.price}" data-name="${item.name}">
                            <span class="checkmark"></span>                            
                        </label>
                    </li>`;
                        });
                    }
                    if (response_data.response.variations) {


                        dropdownHtml +=
                            `</ul>
                    <a href="javascript:;" class="btn_1" onclick="add_to_cart_btn(${response_data.response.id},${response_data.response.price},'${response_data.response.name}',${response_data.response.restaurant_id},'${response_data.response.image}')">Add to cart</a> `;
                    }
                    var drop_down_id = "#drop_down_" + id;
                    $(drop_down_id).empty();
                    $(drop_down_id).append(dropdownHtml);
                },
                error: function(error) {
                    $('#loading').hide();
                    console.error(error);
                }
            });
        }
        // Define an empty cart as an object
        // CART FUNCTIONS
        function showError(message){
                 Swal.fire({
                icon: 'error',
                title: 'Error',
                text: message,
            });
            // alert(message);
        }
        function getCart(){
            let cart = lsget(lccart);
            console.log(cart);
            if(!cart){
                return {};
            }
            if(cart.length < 1){
                return {};
            }
            try{
                cart = JSON.parse(cart);
                if(cart.rest_id){
                    return cart;
                }
                return {};
            }catch(e){
                console.log(e);
                return {};
            }
        }
        
        function getCurrentAddress(){
            let address = lsget(lccaddress);
            console.log('MK: address is: ', address);
            if(!address){
                return null;
            }
            try{
                address = JSON.parse(address);
                if(address.zone_id){
                    return address;
                }
                return null;
            }catch(e){
                console.log(e);
                return null;
            }
        }
        function saveCart(cart){
            // console.log("mcart",cart);
            if(cart.rest_id){
                 let res = lsadd(lccart,JSON.stringify(cart));
            }else{
                showError("cannot save cart");
            }
        }
        function clearCart(){
            lsremove(lccart);
        }
        function saveProductCart(rest_id,product){
            let cart = getCart();
            if(!cart){
                cart = {};
            }
            if(!rest_id){
                showError("invalid restaurant");
                return;                   
            }
            
            if(!cart.hasOwnProperty("rest_id")){
                cart["rest_id"] = rest_id;
            }
            if(rest_id != cart.rest_id){
                showAlert('warning',"Non Empty Cart?",
                        'you have exising items in cart of other restaurant are you sure you want to remove them?',
                    ()=>{
                        // OK Call Back
                        clearCart();
                        setTimeout(()=>{
                           saveProductCart(rest_id, product);  
                           loadCart();
                        },10);
                        
                    });
                    return;
            }
            if(!cart.hasOwnProperty("cart_products")){
                cart["cart_products"] = [];
            }
            if(!cart.hasOwnProperty("cart_offers")){
                cart["cart_offers"] = [];
            }
            cart.cart_products.push(product);
            saveCart(cart);
            // localStorage.setItem("cart",);
            
        }
        function getProductsFromCart(){
            let products = lsget("cart");
            console.log("products",products);
        }
        function cartTotal(){
            let cart = getCart();
            if(!cart.cart_products && !cart.cart_offers){
                console.log("products don't exist.")
                // return;
            }
            // calculateTotal
            if(!cart.delivery_charges){
                cart.delivery_charges = 0;
            }
            let cartProductData = cart.cart_products;
            var sub_total = 0;
            var coupon_discount = 0;
            var coupon_min_purchase = 0;
            var coupon_max_discount = 0;
            var delivery_charges_total = cart.delivery_charges;
            var add_ons_price = 0; // Reset add_ons_price for each item            
            if(!cart.cart_products){
                console.log("products don't exist.")
                cart.cart_products = [];
            }
            if(!cart.cart_offers){
                console.log("offers don't exist.")
                cart.cart_offers = [];
            }
            // Cart DISCOUNT
            
            let cartOffersData = cart.cart_offers;
            $.each(cartOffersData, function(index, item) {
                sub_total += (item.double_price * item.qty);
            });
            $.each(cartProductData, function(index, item) {
                $.each(item.add_ons, function(key, add_on) {
                    isNaN(add_on.price) ? add_ons_price += 0 : add_ons_price += add_on.price;
                });
                total_price = 0;
                variation_price = isNaN(item.variations.price) ? 0 : item.variations.price;
                total_price = parseFloat(add_ons_price) + parseFloat(variation_price);
                sub_total += (total_price * item.qty);

            });
            // CHECK COUPON
            if(cart.hasOwnProperty("coupon")){
                let coupon = cart.coupon;
                coupon_max_discount = coupon.max_discount;
                coupon_min_purchase = coupon.min_purchase;
                if (coupon.discount_type == 'amount') {
                    coupon_discount = coupon.discount;
                } else if (coupon.discount_type == 'percentage') {
                        var discountRate = coupon.discount / 100; // 10% discount
                        var discountedPrice = sub_total * (discountRate);
                        if (discountedPrice > coupon_max_discount) {
                            discountedPrice = coupon_max_discount;
                        }
                        coupon_discount = discountedPrice;
                }
            }
            // END COUPON
            // if(!isNaN(parseFloat(delivery_charges_total)) && isFinite(delivery_charges_total)){
            //     delivery_charges_total = 0;
            // }
            // if(!isNaN(parseFloat(coupon_discount)) && isFinite(coupon_discount)){
            //     coupon_discount = 0;
            // }
            // if(!isNaN(parseFloat(sub_total)) && isFinite(sub_total)){
            //     sub_total = 0;
            // }
            total = sub_total + delivery_charges_total - coupon_discount;
            return {coupon_discount: coupon_discount,sub_total: sub_total, total:total, delivery_charges_total: delivery_charges_total };
        }
        function calculateTotal(){
            let {coupon_discount, sub_total, total, delivery_charges_total} = cartTotal();
            console.log(coupon_discount);
            console.log("subtotal "+sub_total,total);
            $('#sub_total').text("Rs." + sub_total);
            $('#total').text("Rs. "+ total);
            $('#total_amount_second_cart').text("Rs." + total);
            $('#delivery_charges_show').text("Rs." + delivery_charges_total);
            $('#coupon_discount').text("Rs." + coupon_discount)
            // delivery_charges_show
            $('#total_second_cart').text("Rs." + sub_total);
        }
        function saveOfferCart(rest_id,offer){
            let cart = getCart();
            if(!cart){
                cart = {};
            }
            if(!rest_id){
                showError("invalid restaurant");
                return;                   
            } 
            if(!cart.hasOwnProperty("rest_id")){
                cart["rest_id"] = rest_id;
            }
            if(rest_id != cart.rest_id){
                showAlert('warning',"Non Empty Cart?",
                        'you have exising items in cart of other restaurant are you sure you want to remove them?',
                    ()=>{
                        // OK Call Back
                        clearCart();
                        setTimeout(()=>{
                           saveOfferCart(rest_id, offer);
                           loadCart();
                        },10);
                    });
                return;
            }
            if(!cart.hasOwnProperty("rest_id")){
                cart["rest_id"] = rest_id;
            }
            if(!cart.hasOwnProperty("cart_products")){
                cart["cart_products"] = [];
            }
            if(!cart.hasOwnProperty("cart_offers")){
                cart["cart_offers"] = [];
            }
            cart.cart_offers.push(offer);
            saveCart(cart);
            // localStorage.setItem("cart",);
            
        }
        // CART FUNCTIONS END
        function loadCart(){
            orderShow();
            dealsOrderShow();
            checkOutContentShow();
            calculateTotal();
        }
        function updateQtyCart(index, qty,type){
            let cart = getCart();
            if(type == "product"){
                if(!cart.cart_products){
                    console.log("products don't exist.")
                    return;
                }
                let cartProductData = cart.cart_products;
                if(cart.cart_products && cart.cart_products.length > 0){
                    cartProductData[index].qty = qty;
                    cart.cart_products = cartProductData;
                    saveCart(cart);
                    loadCart();
                }
                
            }else if(type == "offer"){
                if(!cart.cart_offers){
                    console.log("products don't exist.")
                    return;
                }
                let cartOffersData = cart.cart_offers;
                if(cart.cart_offers && cart.cart_offers.length > 0){
                    cartOffersData[index].qty = qty;
                    cart.cart_offers = cartOffersData;
                    saveCart(cart);
                    loadCart();
                }
            }
        }
        function qtyChanged(id){
            console.log("changed");
            let arr = id.split("_");
            if(arr.length > 0){
                let index = arr[arr.length - 1];
                let qty = $("#"+id).val();
                let type = arr[0] == "p" ? "product" : "offer";
                updateQtyCart(index, qty, type);
            }
        }
        function updateQty(type, id){
            try{
                let qty = Number($("#"+id).val());
                if(type == "add"){
                    qty = Number(qty) + 1;
                    $("#"+id).val(qty);
                    qtyChanged(id);
                }
                if(type == "remove"){
                    if(Number(qty) == 1){
                        return;
                    }
                    qty = Number(qty) - 1;
                    $("#"+id).val(qty);
                    qtyChanged(id);
                }
                // console.log(id.split("_"));
            }catch(e){
                $("#"+id).val(qty);
            }
        }
        function add_to_cart_btn(id, product_price, product_name, restaurant_id, image) {
            $('#drop_down_' + id).show();

            // Collect selected addons
            var selectedAddOns = $('.add_ons:checked').map(function() {
                return {
                    id: $(this).data('id'),
                    name: $(this).data('name'),
                    price: parseFloat($(this).data('price'))
                };
            }).get();

            // Collect selected variations (radio buttons)
            var selectedVariations = {
                // id: $('.variations:checked').data('id'),
                type: $('.variations:checked').data('type'),
                price: parseFloat($('.variations:checked').data('price'))
            };
            if (selectedVariations.type === undefined) {
                selectedVariations = '';
            }

            // Create an object with selected values
            var selected_value = {
                'product_id': id,
                'restaurant_id': restaurant_id,
                'product_name': product_name,
                'product_price': product_price,
                'image': image,
                "qty": 1,
                'variations': selectedVariations,
                'add_ons': selectedAddOns,
                
            }
            $('#drop_down_' + id).hide();
            $('.add_ons:checked').prop('checked', false);
            $('.variations:checked').prop('checked', false);
            saveProductCart(restaurant_id,selected_value);
            loadCart();
            // console.log("cart",getCart());
            // Show order summary
        }
        function orderShow() {
            let cart = getCart();
            console.log('cart to show ', cart);
            if(!cart.cart_products){
                console.log("products don't exist.")
                return;
            }
            let cartProductData = cart.cart_products;
            var orderSummary = `<ul class="clearfix" id="order_record">`;
            var variation_price = 0;
            $.each(cartProductData, function(index, item) {
                    
                    orderSummary +=
                        `<li  id="${item.product_id}${index}">
                            <div class="d-flex justify-content-between">
                                <span class="d-flex align-items-center">
                                    <a href="javascript:void(0);" onclick="removeFromCart(${index},'product')" ></a>
                                    <p class="mb-2">${item.product_name}</p>
                                </span>
                                <div class="quantity">
                                  <button class="minus" aria-label="Decrease" onclick=updateQty("remove","p_qty_${index}")>&minus;</button>
                                  <input type="number" disabled id="p_qty_${index}" class="input-box" onKeyup='qtyChanged("p_qty_${index}")' value="${item.qty}" min="1" max="60">
                                  <button class="plus" aria-label="Increase" onclick=updateQty("add","p_qty_${index}")>&plus;</button>
                                </div>
                            </div>
                            <small>variation: <div class="badge bg-teal">${item.variations.type}</div> add ons: `;
                    let total_price = 0;
                    let add_ons_price = 0;
                    let variation_price = isNaN(item.variations.price) ? 0 : item.variations.price;
                    $.each(item.add_ons, function(key, add_on) {
                        isNaN(add_on.price) ? add_ons_price += 0 : add_ons_price += add_on.price;
                        orderSummary += `<div class="badge bg-orange px-1">${add_on.name} </div>`;
                    });
                    
                    total_price = parseFloat(add_ons_price) + parseFloat(variation_price);

                    orderSummary += `</small> <span>Rs.${total_price}</span><hr>
                        </li>`;
                // }
            });
            
            orderSummary += `</ul>`;
            calculateTotal();
            // Update sub_total and total elements in the UI
            // Prepend order summary to the designated element
            $("#order_summary").html(orderSummary);
            // second cart show
            var cart_products;
        }
        function checkOutContentShow(){
            let cart = getCart();
            if(!cart.hasOwnProperty("cart_products")){
                cart["cart_products"] = [];
            }
            if(!cart.hasOwnProperty("cart_offers")){
                cart["cart_offers"] = [];
            }
            if(cart.cart_products.length < 1 && cart.cart_offers.length < 1){
                $("#go_back_to_products").click();
                return; 
            }
            let cart_products = '';
            $.each(cart.cart_products, function(i, item) {
                    cart_products += `
                    <tr id="second_cart_${item.product_id}${i}">
                        <td class="d-md-flex align-items-center">
                            <figure>
                                <a href="javascript:void(0);" title="Photo title" data-effect="mfp-zoom-in">
                                    <img src="{{ asset('storage/app/public/product') }}/${item.image}"
                                        data-src="{{ asset('storage/app/public/product') }}/${item.image}"
                                        alt="thumb" class="lazy"
                                        onerror="this.src='{{ asset('home_assets/img/cat_listing_placeholder.png') }}'"></a>
                            </figure>
                            <div class="flex-md-column">
                                <h4>${item.product_name}</h4>`;

                    if (item.variations.type != undefined) {
                        cart_products += `
                        <p>
                            variant <small class="badge bg-teal">${item.variations.type}</small>
                        </p>
                        `;
                    }
                    if (item.add_ons) {

                        cart_products += ` <p> Add on : `;

                        $.each(item.add_ons, function(indexInArray, add_on) {
                            cart_products += `<small class="badge bg-orange">${add_on.name}</small>`;
                        });
                        cart_products += '</p>';

                    }
                    cart_products += `
                        </div>
                    </td>
                    <td>
                            <strong>${item.qty}</strong>
                    </td>
                    <td>
                        <strong>RS. ${total_price}</strong>
                    </td>
                    <td>
                        <i><strong>RS. ${(Number(item.qty) * total_price) && Number(item.qty) * total_price}</strong></i>
                    </td>
                    <td class="options">
                        <i onclick="removeFromCart(${i},'product')" class="icon_minus_alt2"></i>
                    </td>
                </tr>`;
                
                // delivery_method_change();
            });
            let cart_offers = '';
            $.each(cart.cart_offers, function(i, item) {
                    cart_offers += `
                    <tr id="second_cart_offer_${item.deal_id}${i}">
                        <td class="d-md-flex align-items-center">
                            <figure>
                                <a href="javascript:void(0);" title="Photo title" data-effect="mfp-zoom-in">
                                    <img src="{{ asset('storage/app/public/product') }}/${item.image}"
                                        data-src="{{ asset('storage/app/public/product') }}/${item.image}"
                                        alt="thumb" class="lazy"
                                        onerror="this.src='{{ asset('home_assets/img/cat_listing_placeholder.png') }}'"></a>
                            </figure>
                            <div class="flex-md-column">
                                <h4>${item.title}</h4>
                            </div>
                        </td>
                        <td>
                            <strong>${item.qty}</strong>
                        </td>
                        <td>
                            <strong>RS. ${item.double_price}</strong>
                        </td>
                        <td>
                            <i><strong>RS. ${(Number(item.qty) * item.double_price) && Number(item.qty) * item.double_price}</strong></i>
                        </td>
                        <td class="options">
                            <i onclick="removeFromCart(${i},'deals')" class="icon_minus_alt2"></i>
                        </td>
                    </tr>`;
                
                // delivery_method_change();
            });
            
             $('#second_cart_product_show').html(cart_offers+cart_products);
        }
        //start deals add to cart
        var deals = {};

        function add_to_deals(deal_id, deal_title, image, price,rest_id) {
            var quantity = $('.quantity').val();
            var comment = $(`#comment${deal_id}`).val();
            var total_price = price * quantity;
            selected_value = {
                "restaurant_id": rest_id,
                "deal_id": deal_id,
                "title": deal_title,
                "image": image,
                "qty": quantity,
                "total_price": price,
                "double_price": total_price,
                "comment": comment,
                "tax_amount": 0,
                "required_products": [],
                "optional_products": []
            }
            $('.modal').modal('hide');
            $('.quantity').val(1);
            $(`#comment${deal_id}`).val('');
            // If the deals ID is not in the deals, create an empty array for it
            if (!deals[deal_id]) {
                deals[deal_id] = [];
            }
            saveOfferCart(rest_id, selected_value);
            loadCart();
            // Add the selected item to the deals
            // deals[deal_id].push(selected_value);
            // console.log(deals);
            // dealsOrderShow(deal_id);
        }

        function dealsOrderShow() {
            let cart = getCart();
            console.log('cart to show ', cart);
            if(!cart.cart_offers){
                console.log("offers don't exist.")
                return;
            }
            let cartOffersData = cart.cart_offers;
            var orderSummary = `<hr><ul class="clearfix" id="order_record">`;
            var variation_price = 0;
            $.each(cartOffersData, function(index, item) {
                    sub_total += item.double_price;
                    orderSummary +=
                        `<li id="deal${index}">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <a href="javascript:void(0);" onclick="removeFromCart(${index},'deals')" ></a>${item.title}
                                </div>
                                <div style="font-right">
                                    <div class="quantity">
                                        <button class="minus" aria-label="Decrease" onclick=updateQty("remove","o_qty_${index}")>&minus;</button>
                                        <input type="number" disabled id="o_qty_${index}" class="input-box" onKeyup="qtyChanged('o_qty_${index}')" value="${item.qty}" min="1" max="60">
                                        <button class="plus" aria-label="Increase" onclick=updateQty("add","o_qty_${index}")>&plus;</button>
                                    </div>
                                    <span>RS. ${item.double_price}</span>
                                </div>
                            </div>
                         </li>`;
            });

            orderSummary += `</ul>`;
            // Prepend order summary to the designated element
            $("#order_summary_offers").html(orderSummary);
        }
        //end deals add to cart

        function removeFromCart(index, type = '') {
            let cart = getCart();
            // if (cart[id][index]) {
            // console.log('cart[id][index] ', cart[id][index]); 
            if (type == 'deals') {
                if(cart.cart_offers){
                    cart.cart_offers.splice(index, 1); 
                }
            } else {
                if(cart.cart_products){
                    cart.cart_products.splice(index, 1); 
                }
            }
            if(cart.rest_id){
                console.log("cart",cart);
                saveCart(cart)
                loadCart();
            }else{
                console.log("no restaurant");
            }
            
        }



        // show second things
        $('#check_out_detail').hide();

        $('#check_out_btn').click(function() {
            // console.log(cart[id]);
            let cart = getCart();
            var user = `{{ Auth()->check() }}`;
            if (!user) {
                
                showAlert('error',"Please login to proceed",
                        'Login is mandatory to proceed to checkout.',
                    ()=>{
                        location.href = `{{ route('user.login') }}`;
                    });
                
                
                
                return;
            }
            if (cart.rest_id && (cart.cart_products || cart.cart_offers) && (cart.cart_products.length > 0 || cart.cart_offers.length > 0)) {
                $('#product_cart_detail').hide();
                $('#check_out_detail').show();
                checkOutContentShow();
            } else {
                showError('Cart is empty!');
            }
        });


        // $.ajaxSetup({
            
        // });
        var s_lat = `{{ session()->get('lat') }}`;
        var s_lng = `{{ session()->get('lng') }}`;
        var s_zone_id = `{{ session()->get('s_zone_id') }}`;
         function showAddress(){
             var add = getCurrentAddress();
             console.log('MK: address: ', add)
             if(add){
                 if(add.address)
                    $("#selected_address").html(add.address);
             }
         }
         
        function getDeliveryCharges(business_id, distance,success_fn=null,error_fn=null){
              var data = {
                    'business_id': `${business_id}`,
                    'distance': distance, 
              }
            $.ajax({
                type: "post",
                url: "{{ url('api/v1/customer/order/order_shipping_charges') }}",
                data: data,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                    'Authorization': "Bearer {{ Session::get('token') }}",
                    contentType: "application/json",
                    'ZoneId': `[{{ session()->get('s_zone_id') }}]`,
                },
                success: function(response) {
                    try{
                        if(success_fn){
                            success_fn(response);
                        }
                    }catch(e){
                        
                    }
                },error: function(error) {
                    if(fn){
                        error_fn(error);
                    }
                    // this.checked = false;
                    console.error(error);
                }
            });            
        }
        $(document).ready(function() {
            // $('input[name=delivery_method]:checked').trigger('change');

            $('input[name=delivery_method]').change(function() { 
                var selectedValue = $('input[name=delivery_method]:checked').val();
                console.log('selected payment method ', selectedValue);
                var cart = getCart();
                delivery_charges_total = 0;
                cart['delivery_charges'] = 0;
                saveCart(cart);
                if (selectedValue == 'delivery') {
                            let address = getCurrentAddress();
                            if(!address){
                                showError("Please select address");
                                this.checked = false;
                                showAddressMap();
                                return;
                            }
                            if(!address.hasOwnProperty("lat") || !address.hasOwnProperty("lng")){
                                showError("Invalid address");
                                this.checked = false;
                                showAddressMap();
                                return;
                            }
                            var user_latitude = address.lat;
                            var user_longitude = address.lng;
                            // alert( latitude + ", " + longitude);
                            var restaurant_lat = `{{ $restaurent['response']['latitude'] }}`;
                            var restaurant_long = `{{ $restaurent['response']['longitude'] }}`;
                            
                            
                            var distance = calculateDistance(restaurant_lat, restaurant_long,
                                    user_latitude, user_longitude);
                            var restaurant_id = `{{ $restaurent['response']['id'] }}`;
                            getDeliveryCharges(`{{ $restaurent['response']['id'] }}` ,distance ,(response)=>{
                                console.log("response",response);
                                cart['delivery_charges'] = parseFloat(response.response.charges);
                                saveCart(cart);
                                loadCart();
                            },(error)=>{
                                this.checked = false;
                            } );
                   
                }
                loadCart();
            });


            // start plus minus qty
            $('.btn-number').click(function(e) {
                e.preventDefault();

                fieldName = $(this).attr('data-field');
                type = $(this).attr('data-type');
                var input = $("input[name='" + fieldName + "']");
                var currentVal = parseInt(input.val());

                if (!isNaN(currentVal)) {
                    if (type == 'minus') {
                        if (currentVal > input.attr('min')) {
                            input.val(currentVal - 1).change();
                        }
                        if (parseInt(input.val()) == input.attr('min')) {
                            $(this).attr('disabled', true);
                        }
                    } else if (type == 'plus') {
                        if (currentVal < input.attr('max')) {
                            input.val(currentVal + 1).change();
                        }
                        if (parseInt(input.val()) == input.attr('max')) {
                            $(this).attr('disabled', true);
                        }
                    }
                } else {
                    input.val(0);
                }
            });

            $('.input-number').focusin(function() {
                $(this).data('oldValue', $(this).val());
            });

            $('.input-number').change(function() {

                minValue = parseInt($(this).attr('min'));
                maxValue = parseInt($(this).attr('max'));
                valueCurrent = parseInt($(this).val());

                name = $(this).attr('name');
                if (valueCurrent >= minValue) {
                    $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
                } else {
                    alert('Sorry, the minimum value was reached');
                    $(this).val($(this).data('oldValue'));
                }
                if (valueCurrent <= maxValue) {
                    $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
                } else {
                    alert('Sorry, the maximum value was reached');
                    $(this).val($(this).data('oldValue'));
                }
            });
            // end plus minus qty

            $('#update_address_btn').click(function() {
                // $('#selected_address').hide();
                // $('#update_address').show();
                showAddressMap();
            });
            $('#apply_a_voucher').click(function() {
                $('#voucher_section').show();
            });
            // default voucher section is hide()
            $('#voucher_section').hide();
            $('#close_voucher_btn').click(function() {
                $('#voucher_section').hide();
            });
            $('#update_address').hide();

            $('#updateLocation').click(function() {
                $('#selected_address').show();
                $('#update_address').hide();
                $('#selected_address').text($('#autocomplete').val());
                $.ajax({
                    type: "get",
                    url: "{{ url('user/session-get') }}",
                    dataType: "json",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr(
                            'content'),
                        'Authorization': "Bearer {{ Session::get('token') }}",
                        contentType: "application/json",
                        'ZoneId': `[{{ session()->get('s_zone_id') }}]`,
                    },
                    success: function(response) {
                        console.log(response);
                        s_lat = response.response.lat;
                        s_lng = response.response.lng;
                        s_zone_id = response.response.s_zone_id;
                        if (s_zone_id != {{ $restaurent['response']['zone_id'] }}) {
                            showAlert('error',"Change your address",
                        'This restaurant is not delivering in your selected area.',
                    ()=>{});
                    
                            return;
                            // alert(
                            //     'Change your address this restaurant is not delivering in your selected area.'
                            // );
                        }

                    },
                    error: function(error) {
                        console.log(error);
                    }
                });

            });
            $('#close_btn').click(function() {
                $('#selected_address').show();
                $('#update_address').hide();

            });
            $('#go_back_to_products').click(function() {
                $('#check_out_detail').hide();
                $('#product_cart_detail').show();

            });


        });

        function calculateDistance(lat1, lon1, lat2, lon2) {
            var R = 6371; // Radius of the Earth in kilometers
            var dLat = (lat2 - lat1) * (Math.PI / 180);
            var dLon = (lon2 - lon1) * (Math.PI / 180);
            var a =
                Math.sin(dLat / 2) * Math.sin(dLat / 2) +
                Math.cos(lat1 * (Math.PI / 180)) * Math.cos(lat2 * (Math.PI / 180)) *
                Math.sin(dLon / 2) * Math.sin(dLon / 2);
            var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
            var distance = R * c; // Distance in kilometers

            return distance;
        }
        var coupon_code = '';
        $('#place_order').click(async function() { 
            loadCart();
            let cart = getCart();
            let address = getCurrentAddress();
            try{
                if(!JSON.parse(address.zone_id).includes({{ $restaurent['response']['zone_id'] }})){
                    showError("Change your address this restaurant is not delivering in your selected area.");
                    return;
                }
            }catch(e){
                console.log(e);
                showError("Invalid address");
                return;
            }
            if(!cart){
                 showError("Invalid Cart");
                 return;
            }
            let cartTotals = cartTotal();
            if(!cartTotals.total){
                showError("Invalid Cart Total");
                loadCart();
                return;
            }
            totals = 0;
            // console.log(deals);
            // return alert(s_lat);
            var selectedDeliveryMethod = $('input[name=delivery_method]:checked').val();
            if (!$('input[name="delivery_method"]').is(':checked')) {
                showError("Please select delivery Method");
                return;
            }
            var selectedPayment = $('input[name=payment]:checked').val();
            if (!$('input[name="payment"]').is(':checked')) {
                // alert('Please select Payment Method');
                showError("Please select Payment Method");
                return;
            }
            if(!cart.hasOwnProperty("cart_products") && !cart.hasOwnProperty("cart_products")){
                //  alert('no product found in cart');
                 showError("No products found in cart");
                 loadCart();
                return; 
            }
                $('#loading').show();
                if(cart.cart_products.length < 1 && cart.cart_offers.length < 1){
                    showError("cart is empty please select some product");
                    return;
                }
                var allDealsItem = [];
                console.log('MK: cart offers: ', cart)
                // for (var deal in cart.cart_offers) {
                //     console.log('MK: cart offers0: ', deal)
                //     if (deal.hasOwnProperty("deal_id")) {
                //         allDealsItem.push({...deal, quantity: deal.qty});
                //     }
                // }
                
                cart.cart_offers.forEach(function(deal) {
                    console.log('MK: cart offers: ', deal);
                    if (deal.hasOwnProperty("deal_id")) {
                        allDealsItem.push({ ...deal, quantity: deal.qty });
                    }
                });
                console.log('MK: cart offers2: ', allDealsItem)
                var newArray = [];
                var add_on_ids = [];
                var add_on_qty = [];
                cart.cart_products.forEach(function(item) {
                    $.each(item.add_ons, function(indexInArray, ad_on) {
                        console.log(ad_on);
                        var id = ad_on.id;
                        add_on_ids.push(id);
                        add_on_qty.push(1);
                    });
                    var variation = '';
                    if (item.variations.type != undefined) {
                        variation = item.variations;
                    }
                    var item = {
                        "food_id": item.product_id || '',
                        "variation": [variation] || '',
                        "add_on_ids": add_on_ids || [],
                        "add_on_qtys": add_on_qty || [],
                        "quantity":item.qty,
                        "variant": item.variations.type || ''
                    };
                    newArray.push(item);
                });
               
                // GET DELIVERY CHARGES
                var restaurant_id = `{{ $restaurent['response']['id'] }}`;
                var distance = calculateDistance({{ $restaurent['response']['latitude'] }},{{ $restaurent['response']['longitude'] }},
                                    address.lat, address.lng);
                await (async function(){
                    return new Promise((resolver,reject)=>{
                      getDeliveryCharges(`{{ $restaurent['response']['id'] }}` ,distance ,(response)=>{
                                cart['delivery_charges'] = parseFloat(response.response.charges);
                                saveCart(cart);
                                loadCart();
                                resolver(true);
                            },(error)=>{
                                this.checked = false;
                                resolver(false);
                            } );
                  })  
                })();
                coupon_code = '';
                if(cart.cart_coupon){
                    coupon_code = cart.cart_coupon.code;
                    data = {
                        'code': cart.cart_coupon.code,
                        'restaurant_id': `{{ $restaurent['response']['id'] }}`,
                     }
                }
                console.log("totals",allDealsItem);
                // return;
                        var data = {
                            'order_amount': cartTotals.total,
                            'payment_method': selectedPayment,
                            'address': address.address,
                            'order_type': selectedDeliveryMethod,
                            'restaurant_id': `{{ $restaurent['response']['id'] }}`,
                            'distance': distance,
                            'latitude': address.lat,
                            'longitude': address.lng,
                            'tax': `{{ $restaurent['response']['tax'] }}`,
                            'cart': JSON.stringify(newArray),
                            'deals': JSON.stringify(allDealsItem),
                            'coupon_code': coupon_code,
                        }
                        // return console.log(data);
                        // return 0;

                        $.ajax({
                            type: "post",
                            url: "{{ url('api/v1/customer/order/place') }}",
                            data: data,
                            dataType: 'json',
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr(
                                    'content'),
                                'Authorization': "Bearer {{ Session::get('token') }}",
                                contentType: "application/json",
                                'ZoneId': `[{{ session()->get('s_zone_id') }}]`,
                            },
                            success: function(response) {
                                $('#loading').hide();
                                console.log(response);
                                // alert(response.message);
                                // showError(response.message);
                                // Refresh the page
                                 clearCart();

                                if (response.response.payment_method == 'digital_payment') {
                                    // return console.log(response);
                                    var total_price = response.response.total_ammount;
                                    var order_id = response.response.order_id;
            
                                    // Combine data into a single string
                                    var dataString = total_price + '|' + order_id;
            
                                    // Encrypt the data using a shared key
                                    var encryptedData = btoa(dataString);
                                    // alert(encryptedData);
                                    // console.log('encrypted data', encryptedData);
                                    return window.location.href = `{{ url('admin/jazzcash/') }}?data=${encryptedData}`
                                }
                                toastr.success("Order placed successfully", "Success", {
                                    closeButton: true,
                                    progressBar: true
                                });
                                
                                window.location.href =
                                    `{{ route('user.home.running_orders') }}`;
                            },
                            error: function(errors) {
                                $('#loading').hide();
                                //  console.log('data after fails', data); 
                                console.error(errors);
                                console.log(errors.responseJSON.response.errors[0]
                                    .message);
                                    showError(errors.responseJSON.response.errors[0].message);
                                // alert(errors.responseJSON.response.errors[0].message);
                            }
                        });

        });
        
        async function getCoupon(data){
             return new Promise((resolver, reject)=>{
                  let cart = getCart();
                     $.ajax({
                        type: "post",
                        url: "{{ url('api/v1/coupon/apply') }}",
                        data: data,
                        dataType: "json",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr(
                                'content'),
                            'Authorization': "Bearer {{ Session::get('token') }}",
                            contentType: "application/json",
                            'ZoneId': `[{{ session()->get('s_zone_id') }}]`,
                        },
                        success: function(response) {
                            $('#loading').hide();
                            console.log(response);
                            coupon_max_discount = response.response.code.max_discount;
                            coupon_min_purchase = response.response.code.min_purchase;
                            if(response.response.code){
                                if(cart.rest_id){
                                    cart["coupon"] = response.response.code;
                                    saveCart(cart);
                                    loadCart();
                                }
                            }
                            if (coupon_min_purchase > sub_total) {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Oops...',
                                    text: "Minimum Rs." + coupon_min_purchase + ' to apply voucher.',
                                });
                                return /*alert("Minimum Rs." + coupon_min_purchase + ' to apply voucher.')*/;
                            }
                            // if (coupon_code != response.response.code.code) {
                            
                            if (response.response.code.discount_type == 'amount') {
                                // coupon_discount = response.response.code.discount;
                                
                                // $('#coupon_discount').text('Rs. ' + coupon_discount);
                                // var total = sub_total - coupon_discount + delivery_charges_total;
                                // $('#total_amount_second_cart').text("Rs." + total);
                                // $('#sub_total').text("Rs." + total);
        
                            } else if (response.response.code.discount_type == 'percentage') {
        
                                // var discountRate = response.response.code.discount / 100; // 10% discount
                                // var discountedPrice = sub_total * (discountRate);
                                // if (discountedPrice > coupon_max_discount) {
                                //     discountedPrice = coupon_max_discount;
                                // }
                                // $('#coupon_discount').text('Rs. ' + discountedPrice.toFixed(2));
                                // var total = sub_total - discountedPrice + delivery_charges_total;
                                // $('#total_amount_second_cart').text("Rs." + total);
        
                                // $('#discountedPrice').text(discountedPrice.);
                            }
                            // }
                            coupon_code = response.response.code.code;
                            displaySuccessMessage('Appllied coupon:  ' + coupon_code,'alert-success');
                            resolver(response.response.code);
                            
                        },
                        error: function(error) {
                            if(cart.coupon){
                                delete cart.coupon;
                                saveCart();
                                loadCart();
                            }
                            resolver(null);
                            $('#loading').hide();
                            console.error(error);
                            
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Coupon Error',
                                    text: error.responseJSON.errors[0].message,
                                });
                             
                            // alert(error.responseJSON.errors[0].message);
                            // coupon_code = '';
                            // displaySuccessMessage('','');
                            // coupon_discount = 0;
                            // $('#coupon_discount').text('Rs.  0');
                            // var total = sub_total + delivery_charges_total;
                            // $('#total_amount_second_cart').text("Rs." + total);
                            // $('#sub_total').text("Rs." + sub_total);
        
                        }
                    });
             });
            
        }
        $('#submit-voucher').click(function(e) {
            e.preventDefault();
            var voucher_input = $('#voucher_code_input').val();
            if (voucher_input == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'No coupon code provided!',
                });
                return;
                // return alert('please enter coupon before submit');
            }
            $('#loading').show();
            data = {
                'code': voucher_input,
                'restaurant_id': `{{ $restaurent['response']['id'] }}`,
            }

           getCoupon(data);

        });
    </script>
    <script>
        $(document).ready(function() {

            $('#btn-favorite').on('click', function() {

                var restaurantId = $(this).data('restaurant');
                var button = $(this);

                $.ajax({
                    type: 'POST',
                    url: "{{ route('user.restaurant.favorite', ['restaurant' => ':restaurantId']) }}"
                        .replace(':restaurantId', restaurantId),
                    data: {

                        _token: "{{ csrf_token() }}",
                    },
                    success: function(response) {

                        if (response.isFavorite) {
                            button.find('#favorite-text').text('Added to Favorites');
                            button.find('#favorite-icon').removeClass('fa-regular fa-heart')
                                .addClass(
                                    'fa-solid fa-heart');
                        } else {
                            button.find('#favorite-text').text('Add to Favorites');
                            button.find('#favorite-icon').removeClass('fa-solid fa-heart')
                                .addClass(
                                    'fa-regular fa-heart');
                        }
                    },
                    error: function(xhr, status, error) {
                        console.log(xhr.responseText);

                    }
                });
            });
        });
    </script>
@endsection
