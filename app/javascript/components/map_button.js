const listButton = () => {
  const btnBox =document.querySelector(".btn-list-box")
  const btnMap =document.querySelector(".btn-map")
  const btnList =document.querySelector(".btn-list")
  const map =document.querySelector(".index-map")
  const cards =document.querySelector(".index-cards")
  const footer =document.querySelector(".footer")
  const nappies =document.querySelector(".nappies-container")
  btnBox.addEventListener('click', (event) => {
    btnMap.style.display = "block";
    btnList.style.display = "none";
    // map.style.paddingTop = "0";
    cards.style.marginTop = "0";
    cards.style.paddingTop = "12vh";
    map.style.marginTop = "0";
    cards.style.display = "block";
    map.style.display = "none";
    footer.style.display = "flex";
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
  btnBox.addEventListener('click', (event) => {
    btnMap.style.display = "none";
    btnList.style.display = "block";
    // map.style.paddingTop = "0";
    cards.style.paddingTop = "0";
    cards.style.marginTop = "20vh";
    map.style.marginTop = "12vh";
    nappies.style.marginTop = "0";
    footer.style.display = "none";
    cards.style.display = "none";
    map.style.display = "block";
  });
};

export { mapButton, listButton };
