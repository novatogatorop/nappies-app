// imports
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { searchPopup, closePopup } from '../components/search_mobile';
import { dropdownPopup, dropdownClose } from '../components/dropdown_mobile';
import { initSelect2 } from '../components/init_select2';
import { mapButton, listButton } from '../components/map_button';
import { searchIcon } from '../components/search_icon';





// initialize plugins
initMapbox();
searchPopup();
closePopup();
dropdownPopup();
dropdownClose();
initSelect2();
mapButton();
listButton();
searchIcon();

//  var elements = document.getElementsByClassName("child");
// for(var i = 0; i < elements.length; i++)
// {
//     elements[i].onclick = function(){

//         // remove class from sibling

//         var el = elements[0];
//         while(el)
//         {
//             if(el.tagName === "DIV"){
//                 //remove class
//                 el.classList.remove("bak");

//             }
//             // pass to the new sibling
//             el = el.nextSibling;
//         }

//       this.classList.add("bak");
//     };
// }
