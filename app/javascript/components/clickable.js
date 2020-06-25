const highChair = document.querySelector(".clickable-high-chair");
const toy = document.querySelector(".clickable-toy");
const playArea = document.querySelector(".clickable-play-area");
const inputChangingTable = document.querySelector(".input-changing-table").onclick = function() { navbarBottomClickable() };




// const iconClickable = () => {
//   const clicks = document.querySelectorAll(".clickable");
//   clicks.forEach((click) => {
//     click.addEventListener("click", (event) => {
//       click.classList.toggle("active");
//     });
//   });
// };

const navbarBottomClickable = () => {
  const changingTable = document.querySelector(".clickable-changing-table");
  changingTable.addEventListener('click', (event) => {
    changingTable.classList.toggle("active");
  });
};






export { navbarBottomClickable };
