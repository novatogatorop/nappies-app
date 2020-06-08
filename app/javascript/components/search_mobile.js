const searchPopup = () => {
  const searchPopup =document.querySelector(".search-form-mobile")
  const searchButton =document.querySelector(".search-button-navbar")
  const searchButtonX =document.querySelector(".search-button-x")
  const dropdown =document.querySelector(".dropdown-mobile")
  const searchMobile =document.querySelector(".search-mobile")
  const navbar =document.querySelector(".navbar-mobile")
  const nappiesCon =document.querySelector(".nappies-container")
  searchButton.addEventListener('click', (event) => {
    searchPopup.style.display = "block";
    searchButton.style.display = "none";
    searchButtonX.style.display = "block";
    nappiesCon.style.display = "none";
    searchButtonX.style.marginBottom = "16px";
    dropdown.style.display = "none";
    searchMobile.style.width = "100%";
    searchMobile.style.height = "100vh";
    navbar.style.height = "100%";
  });
};

const closePopup = () => {
  const searchButtonX =document.querySelector(".search-button-x")
  const searchButton =document.querySelector(".search-button-navbar")
  const searchPopup =document.querySelector(".search-form-mobile")
  const dropdown =document.querySelector(".dropdown-mobile")
  const searchMobile =document.querySelector(".search-mobile")
  const navbar =document.querySelector(".navbar-mobile")
  const nappiesCon =document.querySelector(".nappies-container")
  searchButtonX.addEventListener('click', (event) => {
    searchPopup.style.display = 'none';
    searchButtonX.style.display = "none";
    searchButton.style.display = "block";
    dropdown.style.display = "block";
    nappiesCon.style.display = "flex";
    searchMobile.style.width = "";
    searchMobile.style.height = "0";
    navbar.style.height = "10%";
  });
};

export { searchPopup, closePopup };
