import mapboxgl from 'mapbox-gl';

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    // Create a HTML element for your custom marker
  const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '60px';
  element.style.height = '60px';

  // Pass the element as an argument to the new marker
  new mapboxgl.Marker(element)
    .setLngLat([ marker.lng, marker.lat ])
    .setPopup(popup) // add this
    .addTo(map);
  });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    addMarkersToMap(map, markers)
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, {
       padding: 70,
       maxZoom: 15,
       duration: 0
     });

    // Disables the "scroll to zoom" interaction.
    map.scrollZoom.disable();

    // Disables the "drag to rotate" interaction.
    map.dragRotate.disable();

    // Enables the "double click to zoom" interaction.
    map.doubleClickZoom.enable();

    // Disables the "drag to pan" interaction.
    map.dragPan.disable();

    // doesn't allow the user to zoom and rotate the map by pinching on a touchscreen
    map.touchZoomRotate.disable();

    // allows the user to pitch the map by dragging up and down with two fingers
    map.touchPitch.enable();

    // Add zoom and rotation controls to the map.
    map.addControl(new mapboxgl.NavigationControl());

    // Add geolocate control to the map.
    map.addControl(
      new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true
          },
        trackUserLocation: true
      })
    );
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/navigation-guidance-day-v4'
    });

    // // Add geolocate control to the map.
    // map.addControl(
    //   new mapboxgl.GeolocateControl({
    //     positionOptions: {
    //       enableHighAccuracy: true
    //       },
    //     trackUserLocation: true
    //   })
    // );

    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers)
    fitMapToMarkers(map, markers)
    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));
  }
};


export { initMapbox };
