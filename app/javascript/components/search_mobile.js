
const searchPopup = () => {
  const openForm = document.querySelector(".open-button")
  const searchPopup =document.querySelector(".search-popup")
  openForm.addEventListener('click', (event) => {
    searchPopup.style.display = searchPopup.style.display === 'none' ? 'block' : 'none';
  });
};

const closePopup = () => {
  const closeForm =document.querySelector(".cancel-button")
  const searchPopup =document.querySelector(".search-popup")
  closeForm.addEventListener('click', (event) => {
    searchPopup.style.display = 'none';
  });
};

export { searchPopup, closePopup };
