
<div class="modal" id="map_modal" tabindex="-2" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Select your location</h5>
        <button type="button" class="close close btn btn-secondary"  aria-label="Close" onclick="hideMapModal()">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="err-container">
            <div class="alert alert-danger" id="area-error" style="display:none" role="alert">
              This business doesn't deliver in this area.
            </div>
        </div>
        <div class="jmodal-content">
            <div class="jloader-container" id="addressLoader">
                <span class="jloader"></span>
            </div>
            <div class="mb-2">
                <label for="">Address</label>
                <input type="text" id="addressautocomplete" name="addressautocomplete" class="form-control"
                        placeholder="Enter address" aria-label="location"
                        aria-describedby="updateLocation">
            </div>
            <div id="selectAddressGoogleMap" style="width:100%;height:400px;"></div>
            <button class="btn btn-success btn-locate-me" onclick="getAddressCurrentLocation()"><i class="fa fa-location"></i>Locate Me</button>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="chooseAddress()">Choose</button>
        <button type="button" class="btn btn-secondary" data-dismiss="map_modal" onClick="hideMapModal()">Close</button>
      </div>
    </div>
  </div>
</div>
@push("script") 
<script>
// $(document).ready(() => {
    const addressRZoneId = {{$zone_id??''}};
    // if(addressRZoneId)
    var addressMap;
    var marker;
  document.addEventListener("DOMContentLoaded",function(){
      console.log("auto load loaded");
    //   if(addressRZoneId)
      initAddressAutoComplete();
  });
  
  function hideMapModal(){
    $('#map_modal').hide();
    }
    // var addressMapLoading = false;
    function showAdLoader(){
        document.getElementById("addressLoader").style.display = "flex";
    }
    function hideAdLoader(){
        document.getElementById("addressLoader").style.display = "none";
    }
    function showAddressMap() {
        var mapProp= {
          center:new google.maps.LatLng(30.3753,69.3451),
          zoom:10,
        };
        console.log('address map ', addressMap);
        if(!addressMap){
            
            addressMap = new google.maps.Map(document.getElementById("selectAddressGoogleMap"),mapProp);
            addressMap.addListener("click", (mapsMouseEvent) => {
                try{
                    // console.log(mapsMouseEvent)
                    let position = mapsMouseEvent.latLng;
                    let myLatlng = mapsMouseEvent.latLng;//new google.maps.LatLng(position.lat(), position.lng());
                    setAddressMarker(myLatlng)
                    marker.setPosition(myLatlng);
                    addressMap.setCenter(myLatlng);
                }catch(e){
                    console.log(e);
                }
                
            })
        }
        setTimeout(function(){
            $("#map_modal").show();
        }, 100)
    }
    function setAddressMarker(myLatlng){
                    if(marker){
                       marker.setMap(null); 
                    }
                    marker = new google.maps.Marker({
                        position: myLatlng,
                        map: addressMap,
                        title: "Current Location",
                        animation: google.maps.Animation.DROP
                    });        
                    
    }
    async function getAddressCurrentLocation(){
        showAdLoader();
        let position = await getCurrentLocation();
        hideAdLoader();
        console.log(position);
        if(position){
            updateAddressMapPosition(position.lat, position.lng);
        }else{
            showError("invalid location")
        }
    }
    function updateAddressMapPosition(lat, lng) {
      if (isNaN(lat) || isNaN(lng)) {
        showError("Invalid location");
        return;
      }
    
      let myLatlng = new google.maps.LatLng(lat, lng);
      setAddressMarker(myLatlng)
      marker.setPosition(myLatlng);
      addressMap.setCenter(myLatlng);
      addressMap.setZoom(13);
    }
    
    function initAddressAutoComplete(){
        var input = document.getElementById('addressautocomplete');
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
                    let zone = await getLocationZone(lati, long);
                    console.log(zone);
                    if(zone.hasOwnProperty("zone_id")){
                        console.log(zone);
                        updateAddressMapPosition(zone.lat, zone.lng);
                    }else{
                        console.log("no zone");
                    }
                    
                }
            });
    }
    function getLocationZone(lat, lng){
         return new Promise(function(resolver, reject){
             showAdLoader();
             var input = document.getElementById('addressautocomplete');
             $.ajax({
                type: "GET",
                url: "{{ url('api/v1/config/get-zone-id') }}",
                data: {lat: lat, lng: lng },
                dataType: 'json',
                success: function(response) {
                    hideAdLoader();
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
                    hideAdLoader();
                    resolver(null);
                    input.value = '';
                    showError(error.responseJSON.message);
                }
    
            });
         });
    }
    function getAddressString(lat,lng){
        return new Promise(function(resolver, reject){
            // console.log
            $.get({ 
                url: `https://maps.googleapis.com/maps/api/geocode/json?latlng=${lat},${lng}&sensor=false&key=${__gmk__}`, 
                success(data) {
                    console.log(data);
                    console.log(data.results[0].formatted_address);
                    if(data.results.length > 0){
                        resolver(data.results[0].formatted_address);
                    }else{
                        resolver(null)
                    }
                },
                error(err) {
                    resolver(null);
                }  
            });
        })
    }
    async function chooseAddress(){
        // console.log(marker);
        if(marker){
            showAdLoader();
            const zone = await getLocationZone(marker.position.lat(),marker.position.lng());
            hideAdLoader();
            if(zone.hasOwnProperty("zone_id")){
                try{
                    let zoneIds = JSON.parse(zone.zone_id);
                    if(zoneIds.includes(addressRZoneId) || zoneIds.includes(addressRZoneId.toString())){
                        
                    }else{
                        showError("This business doesn't deliver in this area.")
                        return;
                    }
                }catch(e){
                    
                }
                showAdLoader();
                let address = await getAddressString(marker.position.lat(), marker.position.lng());
                hideAdLoader();
                if(address){
                    let addressData = {
                      address: address,
                      lat: marker.position.lat(),
                      lng: marker.position.lng(),
                      zone_id: zone.zone_id,
                      zone: addressRZoneId
                    };
                    if(addressData){
                        addAddress(addressData);
                    }
                }else{
                    showError("address not found");
                }
            }
        }else{
            showError("please select some location");
        }
    }
    function addAddress(address){
        saveCurrentAddress(address);
        hideMapModal();
        saveMultipleAddresses(address);
        showAddress();
        homeAdd(address);
        home_address_1();
    }
    function saveCurrentAddress(address){
        let _address = JSON.stringify(address);
        lsadd(lccaddress,_address);
    } 
         function saveMultipleAddresses(address) {

            let m_address = getAddresses();
          
            var isMatched = addressExists(address);
            console.log('m_address ', 'm addresses from ls', m_address);
            console.log('m_address ', address);

            // alert(isMatched);
            if (!isMatched) {
                m_address.push(address);
                let serializedArray = JSON.stringify(m_address);
                localStorage.setItem('m_addresses', serializedArray);

            }

            console.log(localStorage.getItem('m_addresses'));

        }

        function addressExists(address) {
            let m_address = getAddresses();

            return m_address.some(function(obj) {
                return obj.address == address.address;
            });
        }
        function getAddresses() {
            return JSON.parse(localStorage.getItem('m_addresses')) || [];
        }
         function homeAdd(address)
        {
            var json_s = JSON.stringify(address)
            lsadd('home_address_1', json_s);
        }
    
// });

</script>
<!--<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY"></script>-->
@endpush