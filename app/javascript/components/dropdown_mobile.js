const dropdownPopup = () => {
  const logoOpen =document.querySelector(".logo-navbar")
  const logoClose =document.querySelector(".logo-navbar-close")
  const dropdownMobile =document.querySelector(".dropdown-mobile")
  const dropdownList =document.querySelector(".dropdown-list")
  const searchButton =document.querySelector(".search-button-navbar")
  const navbar =document.querySelector(".navbar-mobile")
  const nappiesCon =document.querySelector(".nappies-container")
  logoOpen.addEventListener('click', (event) => {
    dropdownList.style.display = "block";
    searchButton.style.display = "none";
    logoClose.style.marginBottom = "16px";
    logoClose.style.display = "block";
    logoOpen.style.display = "none";
    nappiesCon.style.display = "none";
    dropdownMobile.style.width = "100%";
    dropdownMobile.style.height = "100vh";
    navbar.style.height = "100%";
  });
};

const dropdownClose = () => {
  const logoClose =document.querySelector(".logo-navbar-close")
  const logoOpen =document.querySelector(".logo-navbar")
  const dropdownMobile =document.querySelector(".dropdown-mobile")
  const dropdownList =document.querySelector(".dropdown-list")
  const searchButton =document.querySelector(".search-button-navbar")
  const navbar =document.querySelector(".navbar-mobile")
  const nappiesCon =document.querySelector(".nappies-container")
  logoClose.addEventListener('click', (event) => {
    dropdownList.style.display = "none";
    logoClose.style.display = "none";
    logoOpen.style.display = "block";
    nappiesCon.style.display = "flex";
    logoOpen.style.marginBottom = "0px";
    searchButton.style.display = "block";
    dropdownMobile.style.width = "";
    dropdownMobile.style.height = "0";
    navbar.style.height = "10%";
  });
};

export { dropdownPopup, dropdownClose };
