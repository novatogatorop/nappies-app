const icon = document.querySelector(".search-icon")
const search = document.querySelector(".search-desktop")
const nappiesCon = document.querySelector(".nappies-container")


const searchIcon = () => {
  icon.addEventListener("click", function() {
    search.classList.toggle("open");
    // search.style.display = (search.dataset.toggled ^= 1) ? "block" : "none";
    nappiesCon.classList.toggle("extra-p");
  });
};

// const searchIcon = () => {
//   icon.addEventListener('click', (event) => {
//     click.classList.toggle("active");
//     icon.style.display = "none";
//     search.style.display = "flex";
//     nappiesCon.style.paddingTop = "30vh";
//   });
// };

export { searchIcon };
