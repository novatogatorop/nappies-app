const changingTable = document.querySelector(".nav-changing-table");
const highChair = document.querySelector(".nav-high-chair");
const toy = document.querySelector(".nav-toy");
const playArea = document.querySelector(".nav-play-area");
const inputChangingTable = document.querySelector(".input-changing-table").onclick = function() { navbarBottomClickable() };
// const clicks = document.querySelectorAll(".clickable");




// const iconClickable = () => {
//   clicks.forEach((click) => {
//     click.addEventListener("click", (event) => {
//       click.classList.toggle("active");
//     });
//   });
// };

const iconClickable = () => {
  clicks.addEventListener("click", (event) => {
    clicks.classList.toggle("active");
  });
};




export { iconClickable };
