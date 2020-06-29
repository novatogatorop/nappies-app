const icon = document.querySelector(".search-icon")
const search = document.querySelector(".search-desktop")
const nappiesCon = document.querySelector(".nappies-container")

const searchIcon = () => {
  icon.addEventListener('click', (event) => {
    icon.style.display = "none";
    search.style.display = "flex";
    nappiesCon.style.paddingTop = "30vh";
  });
};

export { searchIcon };
