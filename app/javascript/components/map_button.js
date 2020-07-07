const btnMapBox =document.querySelector(".btn-map-box")
const btnMap =document.querySelector(".btn-map")
const btnListBox =document.querySelector(".btn-list-box")
const btnList =document.querySelector(".btn-list")
const map =document.querySelector(".index-map")
const cards =document.querySelector(".index-cards")
const footer =document.querySelector(".footer")
const navbar =document.querySelector(".navbar-mobile")
const navbarDesktop =document.querySelector(".navbar-desktop")
const navBottom =document.querySelector(".navbar-bottom")

const mapButton = () => {
  if(btnMapBox){
    btnMapBox.addEventListener('click', (event) => {
      // button
      btnMap.style.display = "none";
      btnList.style.display = "block";

      // cards
      cards.style.display = "none";

      // map
      map.classList.remove("hidden");
      map.classList.add("shown");
      map.style.height="100vh";

      // navbar
      navbar.style.display = "none";
      navbarDesktop.style.display = "none";
      navBottom.style.display = "none";

      // footer
      footer.style.display = "none";
    });
  }
};

const listButton = () => {
  if(btnListBox){
    btnListBox.addEventListener('click', (event) => {
      // button
      btnMap.style.display = "block";
      btnList.style.display = "none";

      // cards
      cards.style.display = "block";

      // map
      map.classList.add("hidden");
      map.classList.remove("shown");
      map.style.height="100vh";

      // navbar
      navbar.style.display = "flex";
      navbarDesktop.style.display = "flex";
      navBottom.style.display = "flex";

      // footer
      footer.style.display = "flex";
    });
  }
};

export { mapButton, listButton };
