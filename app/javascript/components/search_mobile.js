
const searchPopup = () => {
  const searchPopup =document.querySelector(".search-form-mobile")
  const searchButton =document.querySelector(".search-button-navbar")
  const searchButtonX =document.querySelector(".search-button-x")
  searchButton.addEventListener('click', (event) => {
    searchPopup.style.display = "block";
    searchButton.style.display = "none";
    searchButtonX.style.display = "block";
    searchButtonX.style.marginBottom = "16px";
  });
};

const closePopup = () => {
  const searchButtonX =document.querySelector(".search-button-x")
  const searchButton =document.querySelector(".search-button-navbar")
  const searchPopup =document.querySelector(".search-form-mobile")
  searchButtonX.addEventListener('click', (event) => {
    searchPopup.style.display = 'none';
    searchButtonX.style.display = "none";
    searchButton.style.display = "block";
  });
};

export { searchPopup, closePopup };
