// Create a map bound to a latitude element and a longitude element
function LatLongMap(start_point, map_element, lat_element, long_element) {
    this.global_map = new GMap2(map_element);
    this.global_map.addControl(new GMapTypeControl());
    this.global_map.addControl(new GLargeMapControl());
    this.global_map.enableDoubleClickZoom();
    this.global_map.setCenter(start_point, 15);

    this.lat_element = lat_element;
    this.long_element = long_element;

    this.lat_element.value = start_point.lat();
    this.long_element.value = start_point.lng();

    this.global_marker = new GMarker(start_point, {draggable:true});

    this.geocoder = new GClientGeocoder();
    this.geocoder.setBaseCountryCode("GB");

    var that = this;
    GEvent.addListener(this.global_marker, "dragstart", function() {
        that.global_map.closeInfoWindow();
    });

    GEvent.addListener(this.global_marker, "dragend", function() {
        that.lat_element.value = that.global_marker.getPoint().lat();
        that.long_element.value = that.global_marker.getPoint().lng();
    });

    this.global_map.addOverlay(this.global_marker);

    this.recenterMarker = function() {
        var point = new GLatLng(this.lat_element.value, this.long_element.value);
        this.global_marker.setPoint(point);
        this.global_map.setCenter(point);
    }

    this.showLocation = function(address) {
        var that = this;
        this.geocoder.getLocations(address, function(response) {
            if (!response || response.Status.code != 200) {
                alert("Sorry, we were unable to find '" + address + "' as an address");
            } else {
                var place = response.Placemark[0];
                that.lat_element.value = place.Point.coordinates[1];
                that.long_element.value = place.Point.coordinates[0];
                var point = new GLatLng(place.Point.coordinates[1], place.Point.coordinates[0]);
                that.global_marker.setPoint(point);
                that.global_map.setCenter(point, 15);
                that.global_marker.openInfoWindowHtml(place.address);
            }
        });
    }
}
