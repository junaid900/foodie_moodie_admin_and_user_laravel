<script>
    $(document).ready(async () => {
        initHomeAddressAutoComplete();
        showHomeAddress()
        lsremove(lccaddress);
    })
    function initHomeAddressAutoComplete(){
        var input = document.getElementById('homeAddressautocomplete');
        console.log(input);
        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.addListener('place_changed', async function() {
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
                    let zone = await getHomeLocationZone(lati, long);
                    console.log(zone);
                    if(zone.hasOwnProperty("zone_id")){
                        console.log(zone);
                        saveHomeCurrentAddress(zone);
                        // lsadd('zone_id', zone.zoneId);
                        // updateAddressMapPosition(zone.lat, zone.lng);
                    }else{
                        console.log("no zone");
                    }
                    
                }
            });
    }
    
    function getHomeLocationZone(lat, lng){
         return new Promise(function(resolver, reject){
            //  showAdLoader();
             var input = document.getElementById('homeAddressautocomplete');
             $.ajax({
                type: "GET",
                url: "{{ url('api/v1/config/get-zone-id') }}",
                data: {lat: lat, lng: lng },
                dataType: 'json',
                success: function(response) {
                    // hideAdLoader();
                    console.log(response);
                    var data = {
                        zone_id: response.response.zone_id,
                        zone_data: response.response.zone_data, //ARRAY
                        lat: lat,
                        lng: lng,
                        searched_name: input.value,
                    }
                    resolver(data)
    
                },
                error: function(error) {
                    // hideAdLoader();
                    resolver(null);
                    input.value = '';
                    showError(error.responseJSON.message);
                }
    
            });
         });
    }
    function saveHomeCurrentAddress(address){
        let _address = JSON.stringify(address);
        lsadd('home_address',_address);
        showHomeAddress()
    }
    
    async function showHomeAddress(){
        let zone = JSON.parse(lsget('home_address'));
        
        if(!zone){
          return;  
        }
        console.log('MK: home_address: ', zone)
        if(zone.searched_name){
            
            $('#home_location_address').html(zone.searched_name);
            
            // var address = await getHomeAddressString(zone.lat, zone.lng)
            // if(address){
            //         let addressData = {
            //           address: address,
            //           lat: marker.position.lat(),
            //           lng: marker.position.lng(),
            //           zone_id: zone.zone_id,
            //           zone: addressRZoneId
            //         };
            //         if(addressData){
            //             addAddress(addressData);
            //         }
            //     }
        }else{
            $('#home_location_address').html('No location');
        }
    }
    
    // function getHomeAddressString(lat,lng){
    //     return new Promise(function(resolver, reject){
    //         // console.log
    //         $.get({ 
    //             url: `https://maps.googleapis.com/maps/api/geocode/json?latlng=${lat},${lng}&sensor=false&key=${__gmk__}`, 
    //             success(data) {
    //                 console.log(data);
    //                 console.log(data.results[0].formatted_address);
    //                 if(data.results.length > 0){
    //                     resolver(data.results[0].formatted_address);
    //                 }else{
    //                     resolver(null)
    //                 }
    //             },
    //             error(err) {
    //                 resolver(null);
    //             }  
    //         });
    //     })
    // }
    
</script>