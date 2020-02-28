// import GMaps from 'gmaps/gmaps.js';
// import { autocomplete } from '../components/autocomplete';

// const mapElement = document.getElementById('map');
// if (mapElement) { // don't try to build a map if there's no div#map to inject in
//   const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
//   const markers = JSON.parse(mapElement.dataset.markers);
//   map.addMarkers(markers);
//   if (markers.length === 0) {
//     map.setZoom(2);
//   } else if (markers.length === 1) {
//     map.setCenter(markers[0].lat, markers[0].lng);
//     map.setZoom(15);
//   } else {
//     map.fitLatLngBounds(markers);
//   }

//   // const icons = {
//   //   nappies: {
//   //     icon: 'http://vectips.com/wp-content/uploads/2017/07/project-preview-large-1.png'
//   //   }
//   // };

//   // function addMarker(feature) {
//   //   var marker = google.maps.Marker({
//   //     position: feature.position,
//   //     icon: icons[feature.type].icon,
//   //     map: map
//   //   });
//   // }

//   autocomplete();

//   const styles = [
//       {
//           "featureType": "landscape.natural",
//           "elementType": "geometry.fill",
//           "stylers": [
//               {
//                   "visibility": "on"
//               },
//               {
//                   "color": "#e0efef"
//               }
//           ]
//       },
//       {
//           "featureType": "poi",
//           "elementType": "geometry.fill",
//           "stylers": [
//               {
//                   "visibility": "on"
//               },
//               {
//                   "hue": "#1900ff"
//               },
//               {
//                   "color": "#c0e8e8"
//               }
//           ]
//       },
//       {
//           "featureType": "poi.park",
//           "elementType": "all",
//           "stylers": [
//               {
//                   "color": "#c7ebd0"
//               }
//           ]
//       },
//       {
//           "featureType": "road",
//           "elementType": "geometry",
//           "stylers": [
//               {
//                   "lightness": 100
//               },
//               {
//                   "visibility": "simplified"
//               }
//           ]
//       },
//       {
//           "featureType": "road",
//           "elementType": "labels",
//           "stylers": [
//               {
//                   "visibility": "off"
//               }
//           ]
//       },
//       {
//           "featureType": "transit.line",
//           "elementType": "geometry",
//           "stylers": [
//               {
//                   "visibility": "on"
//               },
//               {
//                   "lightness": 700
//               }
//           ]
//       },
//       {
//           "featureType": "water",
//           "elementType": "all",
//           "stylers": [
//               {
//                   "color": "#cbe9e6"
//               }
//           ]
//       }
//   ];

//   map.addStyle({
//     styles: styles,
//     mapTypeId: 'map_style'
//   });
//   map.setStyle('map_style');
// }


