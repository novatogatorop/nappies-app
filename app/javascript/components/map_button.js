const btnMapBox =document.querySelector(".btn-map-box")
const btnMap =document.querySelector(".btn-map")
const btnListBox =document.querySelector(".btn-list-box")
const btnList =document.querySelector(".btn-list")
const map =document.querySelector(".index-map")
const cards =document.querySelector(".index-cards")
const footer =document.querySelector(".footer")
const navbar =document.querySelector(".navbar-mobile")
const navBottom =document.querySelector(".navbar-bottom")

const mapButton = () => {
  if(btnMapBox){
    btnMapBox.addEventListener('click', (event) => {
      btnMap.style.display = "none";
      btnList.style.display = "block";
      footer.style.display = "none";
      cards.style.display = "none";
      navbar.style.display = "none";
      navBottom.style.display = "none";
      map.classList.remove("hidden");
      map.classList.add("shown");
    });
  }
};

const listButton = () => {
  if(btnListBox){
    btnListBox.addEventListener('click', (event) => {
      btnMap.style.display = "block";
      btnList.style.display = "none";
      map.classList.add("hidden");
      map.classList.remove("shown");
      cards.style.display = "block";
      footer.style.display = "flex";
      navbar.style.display = "flex";
      navBottom.style.display = "flex";
    });
  }
};

export { mapButton, listButton };
