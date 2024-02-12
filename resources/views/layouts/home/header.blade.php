<style>
    .logout-link {
        background-image: linear-gradient(to right, #ffcda2, #fff);
        border-radius: 25px;
        color: white;
        display: inline-block;
        padding: 5px 10px;
        text-decoration: none;
        transition: color 0.3s;
        /* Add a smooth transition effect */
    }

    .logout-link:hover {
        color: black;
    }
    .pac-container{
        z-index:99999999999;
    }
</style>


<header class="header black_nav clearfix element_to_stick">
    <div class="container">
        <div id="logo">
            <a href="{{ route('user.home') }}">
                <img src="{{ asset('public/home_assets/img/logo.png') }}" width="162" height="auto" alt="">
            </a>
        </div>
        <div class="layer"></div><!-- Opacity Mask Menu Mobile -->

        <!-- /top_menu -->
        <a href="#" class="open_close">
            <i class="icon_menu"></i><span>Menu</span>
        </a>
        <nav class="main-menu">
            <div id="header_menu">
                <a href="#" class="open_close">
                    <i class="icon_close"></i><span>Menu</span>
                </a>
                <a href="#"><img src="{{ asset('public/home_assets/img/logo.png') }}" width="162"
                        height="auto" alt=""></a>

            </div>
            <ul>
                <li class="submenu" id="home_address">

                </li>
                <!--<li class="submenu">-->
                <!--    <p class="show-submenu badge bg-orange py-2"> <i class="fa-solid fa-location-dot"></i> <span id="home_location_address">No Location</span> </p>-->
                <!--</li>-->
                
                
                <li class="">
                    <a href="{{ route('user.home') }}" class="show-submenu">Home</a>
                </li>
                <li class="">
                    <a href="{{ route('user.home.running_orders') }}" class="show-submenu">Order</a>
                </li>
                {{--<li class="">
                    <a href="#" class="show-submenu">Order</a>
                    <ul>

                        <li><a href="{{ route('user.home.running_orders') }}">All Orders</a></li>
                         <li><a href="{{ route('user.order') }}">Order</a></li>
                            <li><a href="{{ route('user.confirm-order') }}">Confirm Order</a></li> 
                    </ul>
                </li>--}}
                <li class="">
                    <a href="{{ route('user.home.restaurants') }}" class="show-submenu">Restaurants</a>
                    {{-- <ul>

                            <li><a href="{{ route('user.list-map') }}">List With Map</a></li>
                            <li><a href="{{ route('user.detail-raustaurent') }}">Detail Page 2</a></li>
                        </ul> --}}
                </li>

                @php
                    $isLoggedIn = session('loginId'); // Assuming you have a session variable indicating the user's login status
                @endphp
                @php
                    $user = auth()->user();
                @endphp
                @if(isset($user))
                    <li><a href="{{ route('user.home.favorites') }}">Favorites</a></li>
                @endif
                
                
                {{-- <li><a href="{{ route('user.contact') }}">Contact Us</a></li>
                <li><a href="{{ route('user.help') }}">Help & Faq</a></li> --}}
                <li><a href="{{ route('user.coupon') }}">Coupon</a></li>
              
                

                {{--@if ($isLoggedIn)
                    <ul id="top_menu" class="drop_user">
                        <li>
                            <div class="dropdown user clearfix">
                                <a href="header-user-logged.html#" data-bs-toggle="dropdown">
                                    <figure><img src="{{ asset('public/home_assets/img/avatar1.jpg') }}" alt="">
                                    </figure><span>Jhon Doe</span>
                                </a>
                                <div class="dropdown-menu">
                                    <div class="dropdown-menu-content">
                                        <ul>
                                            <li><a href="header-user-logged.html#0"><i
                                                        class="icon_cog"></i>Dashboard</a></li>
                                            <li><a href="header-user-logged.html#0"><i
                                                        class="icon_document"></i>Bookings</a></li>
                                            <li><a href="header-user-logged.html#0"><i class="icon_heart"></i>Wish
                                                    List</a></li>
                                            <li><a href="{{ route('user.logout') }}"><i class="icon_key"></i>Log
                                                    out</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /dropdown -->
                        </li>
                    </ul>
                    <a href="{{ route('user.logout') }}" class="badge btn-teal"
                        style="display: inline-block;">Logout</a>
                @else
                    <li><a href="{{ route('user.login') }}">Sign In</a></li>
                    <li><a href="{{ route('user.register') }}">Sign Up</a></li>
                @endif--}}
                  <li class="submenu">
                    <a href="javascript:;" class="show-submenu">Account</a>
                    <ul>
                        @if ($isLoggedIn)
                        <li><a href="{{route("user.profile")}}">Profile</a></li>
                        <li><a href="{{ route('user.logout') }}">Logout</a></li>
                        @else
                        <li><a href="{{ route('user.login') }}">Sign In</a></li>
                        <li><a href="{{ route('user.register') }}">Sign Up</a></li>
                         @endif
                    </ul>
                </li>
                @if ($isLoggedIn)
                  <li><a href="{{ route('user.notifications.index') }}"><span class="d-lg-none d-block">Notifications</span><i class="fa-regular fa-bell mobi_none d-lg-block d-none"></i></a></li>
                 @endif
            </ul>
        </nav>
    </div>
     
</header>

<!-- /header -->


<div class="modal fade mt-md-4 h-75" style="z-index:10000000;" id="home_address_1" data-bs-backdrop="static"
    data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable ">
        <div class="modal-content">
            {{-- <div class="modal-header ">
               
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

            </div> --}}
            <input type="hidden" id="h_index">
            <div class="modal-body">
                <div class="row p-2 border-bottom">
                    <div class="col-10">
                        <input type="search" placeholder="Street, City" name="searched" autocomplete="on"
                            id="searched" class="form-control selected_address">
                    </div>
                    <div class="col-2">
                        <button class="btn btn-teal" id="go_for_search"><i class="fa-solid fa-arrow-right"></i></button>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12" id="home_addresses">
                        <li class="card rounded my-2">
                            <div class="card-body d-flex justify-content-between">
                                <p class="card-text">No address </p>

                            </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                {{-- <button type="button" class="btn btn-teal" data-bs-dismiss="modal">Yes</button> --}}
            </div>
        </div>
    </div>
</div>

{{-- delete address modal --}}
<div class="modal fade" style="z-index:10000000;" id="confirm_address_modal" data-bs-backdrop="static"
    data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="staticBackdropLabel">Are you sure you want to remove this address?
                </h6>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12">
                        <p id="ready_to_delete_address"></p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <span id="confirmed_to_delete">

                </span>
            </div>
        </div>
    </div>
</div>
{{-- /delete address modal --}}

@include('home.commons.order_map_modal', ['zone_id' => 0])


@push('headerJS')
    <script>
        $(document).ready(function() {
            
            home_address_1();
            show_addresses();
            
            var m_addreses=get_addresses();
            if(!m_addreses)
            {
               showAddressMap(); 
            }

        });
        function home()
        {
            var home_address_1 = lsget('home_address_1');
           return JSON.parse(home_address_1);  
        }

        function home_address_1() {

          
            var home_address_1 = home();
            if (home_address_1 == undefined) {
            //   return $('#home_address_1').modal('show');
                return showAddressMap();
            }
            var truncated_address = home_address_1.address;
            if (truncated_address.length > 40) {
                truncated_address = truncated_address.substring(0, 40) + '...';
            }
            var innerHtml = ` <button data-bs-toggle="modal" data-bs-target="#home_address_1"  class="show-submenu btn btn-sm badge btn-orange py-2"> 
                <i class="fa-solid fa-location-dot"></i> ${truncated_address}</button>`;
            $('#home_address').html(innerHtml);

        }
        $("#home_address").click(function() {

            show_addresses();
        });

        function get_addresses() {

            return JSON.parse(localStorage.getItem('m_addresses')) || [];
        }

        function show_addresses() {
            let addresses = get_addresses();
            console.log(addresses);
            if (addresses) {
                var innerHTml = ` <ul >`;
                if (addresses.length > 0) {

                    $.each(addresses, function(index, value) {
                        innerHTml += ` <li class="card rounded ">
                            <div class="card-body p-1 d-flex justify-content-between">
                                <button  class="btn border-none" onclick="select_address(${index})">
                                <p class="card-text">${value.address} </p>
                                </button>
                                
                                <button class="btn text-start" title="Remove Address" onclick="confirm_remove_address(${index}, '${value.address}')"><i class="fa-solid fa-trash-can text-danger"></i></button>
                                </div>
                                </li>`;
                    });
                } else {
                    innerHTml += `<li class="card">No address found</li>`;
                }

                innerHTml += `</ul>`;
                $("#home_addresses").empty();
                $("#home_addresses").prepend(innerHTml);
            }
        }

        function confirm_remove_address(index, address) {
            $('#ready_to_delete_address').text(address);
            var btn = `<button type="button" class="btn btn-teal" onclick="remove_address(${index})"
                            data-bs-dismiss="modal">Yes</button>`;
            $('#confirmed_to_delete').html(btn);

            $("#home_address_1").modal("hide");
            $("#confirm_address_modal").modal("show");
           



        }

        function showInfo(title, message) {
            Swal.fire({
                icon: 'info',
                title: title,
                text: message,
            });
            // alert(message);
        }

        function select_address(index) {
            let addresses = get_addresses();
            var selected_address = addresses[index];
            $('.selected_address').val(selected_address.address);
            $('#h_index').val(index);


        }

        function remove_address(index) {
        //    return home_address_1();
            let addresses = get_addresses();
            
            // return console.log(addresses[index].address);
            // return console.log(home_ address_1.address);
            addresses.splice(index, 1); // Remove the address
            saveAddresses(addresses);
            show_addresses(); // Display the updated addresses
            showInfo('Removed', 'Address removed');
            $('.selected_address').val('');
            $('#h_index').val('');
            home_address_1();

        }
        
        function saveAddresses(addresses)
        {
            localStorage.setItem('m_addresses', JSON.stringify(addresses));
        }

        function address_exists(address) {
            let m_address = get_addresses();

            return m_address.some(function(obj) {
                return obj.address == address;
            });
        }
        $('#go_for_search').click(function(e) {
            e.preventDefault();

            var selected_address = $('.selected_address').val();

            if (selected_address) {
                addressIsExist = address_exists(selected_address);
                if (addressIsExist) {
                    var index = $('#h_index').val();

                    var addreses = get_addresses();
                    address = addreses[index];
                    console.log(address);
                    homeAdd(address);
                    home_address_1();
                    saveCurrentAddress(address);
                    showAddress();
                    $('#home_address_1').modal('hide');

                } else {
                    showAddressMap();
                    $('#home_address_1').modal('hide');
                    var searched_address=$('#searched').val();
                    $('#addressautocomplete').val(searched_address).focus();
                    
                    // $('#map_modal').modal('show');
                    
                }
            } else {
                show_error('select address');
            }
            $('.selected_address').val('');
            $('#h_index').val('');
            home_address_1();



        });
        function saveCurrentAddress(address){
        let _address = JSON.stringify(address);
        lsadd(lccaddress,_address);
    }
        function homeAdd(address)
        {
            var json_s = JSON.stringify(address)
            lsadd('home_address_1', json_s);
        }

        function show_error(message) {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: message,
            });
            // alert(message);
        }
        
         function showAddress() {
            var add = getCurrentAddress();
            console.log('MK: address: ', add)
            if (add) {
                if (add.address)
                    $("#selected_address").html(add.address);
            }
        }
        function getCurrentAddress() {
            console.log(lccaddress);
            let address = lsget(lccaddress);
            console.log(address);
            console.log('MK: address is: ', address);
            if (!address) {
                return null;
            }
            try {
                address = JSON.parse(address);
                if (address.zone_id) {
                    return address;
                }
                return null;
            } catch (e) {
                console.log(e);
                return null;
            }
        }


    </script>
@endpush
