// imports
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { searchPopup, closePopup } from '../components/search_mobile';
import { dropdownPopup, dropdownClose } from '../components/dropdown_mobile';




// initialize plugins
initMapbox();
searchPopup();
closePopup();
dropdownPopup();
dropdownClose();
