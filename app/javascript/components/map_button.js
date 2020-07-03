const listButton = () => {
  const btnListBox =document.querySelector(".btn-list-box")
  const btnMap =document.querySelector(".btn-map")
  const btnList =document.querySelector(".btn-list")
  const map =document.querySelector(".index-map")
  const cards =document.querySelector(".index-cards")
  const footer =document.querySelector(".footer")
  const navbar =document.querySelector(".navbar-mobile")
  const navBottom =document.querySelector(".navbar-bottom")
  if(btnListBox){
    btnListBox.addEventListener('click', (event) => {
      btnMap.style.display = "block";
      btnList.style.display = "none";
      // cards.style.paddingTop = "32px";
      // cards.style.marginTop = "80px";
      // map.style.marginTop = "0";
      map.classList.add("hidden");
      map.classList.remove("shown");
      cards.style.display = "block";
      footer.style.display = "flex";
      navbar.style.display = "flex";
      navBottom.style.display = "flex";
    });
  }
};

const mapButton = () => {
  const btnMapBox =document.querySelector(".btn-map-box")
  const btnMap =document.querySelector(".btn-map")
  const btnList =document.querySelector(".btn-list")
  const map =document.querySelector(".index-map")
  const cards =document.querySelector(".index-cards")
  const footer =document.querySelector(".footer")
  const navbar =document.querySelector(".navbar-mobile")
  const navBottom =document.querySelector(".navbar-bottom")
  if(btnMapBox){
    btnMapBox.addEventListener('click', (event) => {
      btnMap.style.display = "none";
      btnList.style.display = "block";
      // cards.style.paddingTop = "0";
      footer.style.display = "none";
      cards.style.display = "none";
      navbar.style.display = "none";
      navBottom.style.display = "none";
      map.classList.remove("hidden");
      map.classList.add("shown");
    });
  }


};

export { mapButton, listButton };
