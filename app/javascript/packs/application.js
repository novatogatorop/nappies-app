// imports
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { searchPopup, closePopup } from '../components/search_mobile';
import { dropdownPopup, dropdownClose } from '../components/dropdown_mobile';
import { initSelect2 } from '../components/init_select2';
import { mapButton, listButton } from '../components/map_button';
import { navbarBottomClickable } from '../components/clickable';





// initialize plugins
initMapbox();
searchPopup();
closePopup();
dropdownPopup();
dropdownClose();
initSelect2();
mapButton();
listButton();
navbarBottomClickable();

