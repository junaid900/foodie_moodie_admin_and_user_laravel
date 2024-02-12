<!-- COMMON SCRIPTS -->
<!--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>-->
<!--<script src="https://foodiemoodie.junaidali.tk/public/js/stpublic/icky-kit.min.js"></script>-->
<script>
    @php($gmk = "AIzaSyAiWxQfh0rigfLPFqru0WtGWvrICURlxqM")
    const __gmk__ = "{{$gmk}}";
    const lsadd = function(key,data){
        data = btoa(data);
        return localStorage.setItem(key,data)};
    const lsget = function(key) {
        let data = localStorage.getItem(key);
        return data ? atob(data) : null;
    };
    const lsremove = function(key){
        return localStorage.removeItem(key)};
    const lccart = "asodvnosfudnvpaosusdcoinasidubcisufbvioasdbciubsadciybasdiycbasidubc";
    const lccaddress = "aoincoiasdncoisandhkfsofinsornvxjbvksdjfbvkljsdfbiuvbtsieuvbisubi";
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script type="text/javascript">
    jQuery.event.special.touchstart = {
        setup: function(_, ns, handle) {
            this.addEventListener("touchstart", handle, {
                passive: !ns.includes("noPreventDefault")
            });
        }
    };
</script>
<script src="{{ asset('public/home_assets/js/common_scripts.min.js') }}"></script>
<script src="{{ asset('public/home_assets/js/common_func.js') }}"></script>
<script src="{{ asset('public/home_assets/validate.js') }}"></script>
<script src="{{ asset('public/home_assets/js/sticky_sidebar.min.js') }}"></script>
<script src="{{ asset('public/home_assets/js/specific_listing.js') }}"></script>
<!--<script src="{{ asset('public/js/stpublic/icky-kit.min.js') }}"></script>-->
<!--<script src="{{ asset('public/js/stpublic/icky-kit.min.js') }}"></script>-->
<script src="{{ asset('public/home_assets/js/specific_detail.js') }}"></script>

<!-- alert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<!--toastr-->
<script src="{{asset('public/assets/admin')}}/js/toastr.js"></script>

<script>
    $('#sidebar_fixed').theiaStickySidebar({
        minWidth: 991,
        updateSidebarHeight: false,
        additionalMarginTop: 30
    });
</script>


<!-- Autocomplete -->
<script>
    

    function initMap() {
        return;
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                'Authorization': "Bearer {{ Session::get('token') }}",
                contentType: "application/json",
            }
        });
        return;
        var input = document.getElementById('autocomplete');
        var autocomplete = new google.maps.places.Autocomplete(input);

        autocomplete.addListener('place_changed', function() {
            var place = autocomplete.getPlace();
            // console.log(place);
            if (!place.geometry) {
                window.alert("Autocomplete's returned place contains no geometry");
                return;
            }

            var address = '';
            if (place.address_components) {
                address = [
                    (place.address_components[0] && place.address_components[0].short_name || ''),
                    (place.address_components[1] && place.address_components[1].short_name || ''),
                    (place.address_components[2] && place.address_components[2].short_name || '')
                ].join(' ');
                // console.log(address);
                // Retrieve latitude and longitude
                var lati = place.geometry.location.lat();
                var long = place.geometry.location.lng();
                // console.log('Latitude:', lati, 'Longitude:', long);
                var data = {
                    lat: lati,
                    lng: long
                }
                $.ajax({
                    type: "get",
                    url: "{{ url('api/v1/config/get-zone-id') }}",
                    data: data,
                    dataType: 'json',
                    success: function(response) {
                        console.log(response);
                        var data = {
                            zone_id: response.response.zone_id,
                            lat: lati,
                            lng: long,
                            searched_name: input.value,
                        }

                        $.ajax({
                            type: "post",
                            url: "{{ url('user/session-store') }}",
                            data: data,
                            dataType: 'json',
                            success: function(response) {
                                console.log(response);



                            },
                            error: function(error) {
                                console.error(error);
                            }

                        });


                    },
                    error: function(error) {
                        // console.error(error);
                        alert(error.responseJSON.message);
                    }

                });
            }
        });
    }
</script>
{{-- <script async defer  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBH-1noGUoStq-5nLCbxHLhAPHN1kPrW2k&libraries=places&callback=initMap"></script> --}}
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

<script defer
    src="https://maps.googleapis.com/maps/api/js?key={{$gmk}}&libraries=places&callback=initMap">
</script>

<script>
    
    function get_location() {
        if ("geolocation" in navigator) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;
                alert('latitude and longtitide is ' + latitude + ", " + longitude);
            });
        } else {
            $("#locationData").html("Geolocation is not available.");
        }

    }
    function getCurrentLocation() {
        return new Promise(function(resolver, reject){
            if ("geolocation" in navigator) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var latitude = position.coords.latitude;
                    var longitude = position.coords.longitude;
                     resolver({lat: latitude, lng: longitude});
                });
            }else{
                resolver(null)
            }
        }); 
    }


    $(document).ready(function() {
        $('#loading').hide();
        // fetchNotifications();
        // toastr.success('Success Message', 'Success', {
        //     closeButton: true,
        //     progressBar: true
        // });
        // toastr.success('Success Message Again', 'Success', {
        //     closeButton: true,
        //     progressBar: true
        // });
    });
</script>

<script>
    
    function showAlert(type, title, message, callback) {
        Swal.fire({
            title: title,
            text: message,
            icon: type,
            showCancelButton: (type === 'warning'),
            confirmButtonColor: '#36888A',
            cancelButtonColor: 'default',
            cancelButtonText: '{{ translate('messages.Cancel') }}',
            confirmButtonText: '{{ translate('messages.Ok') }}',
            preConfirm: callback,
            allowOutsideClick: () => !Swal.isLoading()
        });


    }
    
</script>

<script type="module">
    
     import {
        initializeApp
    } from "https://www.gstatic.com/firebasejs/9.18.0/firebase-app.js";
   
    import {
        getDatabase,
        set,
        get,
        update,
        ref,
        push,
        child,
        onValue,
        onChildAdded
    } from "https://www.gstatic.com/firebasejs/9.18.0/firebase-database.js";

    const firebaseConfig = {
        apiKey: "AIzaSyAMTrRfTfDolYVWDQnL8FgSvpB0Ry5NZdI",
        authDomain: "foodie-moodie-196a1.firebaseapp.com",
        databaseURL: "https://foodie-moodie-196a1-default-rtdb.firebaseio.com",
        projectId: "foodie-moodie-196a1",
        storageBucket: "foodie-moodie-196a1.appspot.com",
        messagingSenderId: "721693246846",
        appId: "1:721693246846:web:3fecd5eab8e702e2c81f2f"
    };
    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    // const analytics = getAnalytics(app);
    const database = getDatabase(app);
    
     function fetchNotifications() {
         let userId = '{{ !empty(\App\CentralLogics\Helpers::get_loggedin_for_user()) ? \App\CentralLogics\Helpers::get_loggedin_for_user()->id : 0 }}';
         console.log('MK userId: ', userId);
         
         
         if(!userId){
            return;
         }
         console.log('MK userId: ', userId);
        var notiRef = ref(database, 'notifications/user_'+userId);


        onValue(notiRef, (snapshot) => {
            var notiData = snapshot.val();
            
            if(notiData && notiData['read'] == false && notiData['message']){
                  toastr.success(notiData['message'], 'Success', {
                    closeButton: true,
                    progressBar: true
                });
                set(notiRef, null);
            }
        }); 
    }
    
    
    
    
    
    $(document).ready(function() {
        fetchNotifications();
        // toastr.success('Success Message', 'Success', {
        //     closeButton: true,
        //     progressBar: true
        // });
        // toastr.success('Success Message Again', 'Success', {
        //     closeButton: true,
        //     progressBar: true
        // });
    });
    
</script>

    @if(session('toastrMessageSuccess'))
        <script>
        
        console.log('MK: toastr')
        toastr.success("{{ session('toastrMessageSuccess') }}", "Success", {
                    closeButton: true,
                    progressBar: true
                });
            
        </script>
    @endif

@stack('script') 
@stack('headerJS')
@yield('scripts')
@include('layouts.home.common.maps_script')

</body>

</html>
