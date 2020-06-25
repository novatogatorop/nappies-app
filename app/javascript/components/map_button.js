const listButton = () => {
  const btnBox =document.querySelector(".btn-list-box")
  const btnMap =document.querySelector(".btn-map")
  const btnList =document.querySelector(".btn-list")
  const map =document.querySelector(".index-map")
  const cards =document.querySelector(".index-cards")
  const footer =document.querySelector(".footer")
  const nappies =document.querySelector(".nappies-container")
  const navbar =document.querySelector(".navbar-mobile")
  btnBox.addEventListener('click', (event) => {
    btnMap.style.display = "block";
    btnList.style.display = "none";
    cards.style.marginTop = "0";
    cards.style.paddingTop = "10vh";
    map.style.marginTop = "0";
    cards.style.display = "block";
    map.style.display = "none";
    footer.style.display = "flex";
    navbar.style.display = "flex";
  });
};

const mapButton = () => {
  const btnBox =document.querySelector(".btn-map-box")
  const btnMap =document.querySelector(".btn-map")
  const btnList =document.querySelector(".btn-list")
  const map =document.querySelector(".index-map")
  const cards =document.querySelector(".index-cards")
  const footer =document.querySelector(".footer")
  const nappies =document.querySelector(".nappies-container")
  const navbar =document.querySelector(".navbar-mobile")
  btnBox.addEventListener('click', (event) => {
    btnMap.style.display = "none";
    btnList.style.display = "block";
    cards.style.paddingTop = "0";
    map.style.marginTop = "10vh";
    nappies.style.marginTop = "0";
    footer.style.display = "none";
    cards.style.display = "none";
    navbar.style.display = "none";
    map.style.display = "block";
  });
};

export { mapButton, listButton };
