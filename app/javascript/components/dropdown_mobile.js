const dropdownPopup = () => {
  const logoOpen =document.querySelector(".logo-navbar")
  const logoClose =document.querySelector(".logo-navbar-close")
  const dropdownList =document.querySelector(".dropdown-list")
  const searchButton =document.querySelector(".search-button-navbar")
  logoOpen.addEventListener('click', (event) => {
    dropdownList.style.display = "block";
    searchButton.style.display = "none";
    logoClose.style.marginBottom = "16px";
    logoClose.style.display = "block";
    logoOpen.style.display = "none";
  });
};

const dropdownClose = () => {
  const logoClose =document.querySelector(".logo-navbar-close")
  const logoOpen =document.querySelector(".logo-navbar")
  const dropdownList =document.querySelector(".dropdown-list")
  const searchButton =document.querySelector(".search-button-navbar")
  logoClose.addEventListener('click', (event) => {
    dropdownList.style.display = "none";
    logoClose.style.display = "none";
    logoOpen.style.display = "block";
    logoOpen.style.marginBottom = "0px";
    searchButton.style.display = "block";
  });
};

export { dropdownPopup, dropdownClose };
