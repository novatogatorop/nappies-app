const box = document.querySelector(".navbar-bottom-box");
const items = document.querySelector(".navbar-bottom-items");

const iconClickable = () => {
  items.forEach(el => {
    el.addEventListener('click', function(){
      box.querySelector('.active').classList.remove('.active')
    });
  });
};

// const iconClickable = () => {
//   clicks.forEach((click) => {
//     click.addEventListener("click", (event) => {
//       click.classList.toggle("active");
//     });
//   });
// };



export { iconClickable };
