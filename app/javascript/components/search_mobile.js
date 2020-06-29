const navBottom =document.querySelector(".navbar-bottom-box")

const searchPopup = () => {
  const searchPopup =document.querySelector(".search-form-mobile")
  const searchButton =document.querySelector(".search-button-navbar")
  const searchButtonX =document.querySelector(".search-button-x")
  const dropdown =document.querySelector(".dropdown-mobile")
  const searchMobile =document.querySelector(".search-mobile")
  const footer =document.querySelector(".footer")
  searchButton.addEventListener('click', (event) => {
    searchPopup.style.display = "block";
    searchButton.style.display = "none";
    searchButtonX.style.display = "flex";
    footer.style.display = "none";
    navBottom.style.display = "none";
    dropdown.style.display = "none";
    searchMobile.style.width = "100%";
    searchMobile.style.height = "100vh";
  });
};

const closePopup = () => {
  const searchButtonX =document.querySelector(".search-button-x")
  const searchButton =document.querySelector(".search-button-navbar")
  const searchPopup =document.querySelector(".search-form-mobile")
  const dropdown =document.querySelector(".dropdown-mobile")
  const searchMobile =document.querySelector(".search-mobile")
  const footer =document.querySelector(".footer")
  searchButtonX.addEventListener('click', (event) => {
    searchPopup.style.display = 'none';
    searchButtonX.style.display = "none";
    searchButton.style.display = "flex";
    dropdown.style.display = "block";
    footer.style.display = "flex";
    navBottom.style.display = "grid";
    searchMobile.style.width = "";
    searchMobile.style.height = "0";
  });
};

export { searchPopup, closePopup };
