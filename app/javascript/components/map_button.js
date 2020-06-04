const mapButton = () => {
  const btnBox =document.querySelector(".btn-map-box")
  const btnMap =document.querySelector(".btn-map")
  const btnList =document.querySelector(".btn-list")
  const map =document.querySelector(".index-map")
  const cards =document.querySelector(".index-cards")
  btnBox.addEventListener('click', (event) => {
    btnMap.style.display = "none";
    btnList.style.display = "block";
  });
};

const listButton = () => {
  const btnBox =document.querySelector(".btn-list-box")
  const btnMap =document.querySelector(".btn-map")
  const btnList =document.querySelector(".btn-list")
  const map =document.querySelector(".index-map")
  const cards =document.querySelector(".index-cards")
  btnBox.addEventListener('click', (event) => {
    btnMap.style.display = "block";
    btnList.style.display = "none";
  });
};

export { mapButton, listButton };
