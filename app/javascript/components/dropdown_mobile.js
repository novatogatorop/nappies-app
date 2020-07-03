const dropdownPopup = () => {
  const listOpen =document.querySelector(".list-navbar")
  const listClose =document.querySelector(".list-navbar-x")
  const dropdownMobile =document.querySelector(".dropdown-mobile")
  const dropdownList =document.querySelector(".dropdown-list")
  const searchButton =document.querySelector(".search-button-navbar")
  const footer =document.querySelector(".footer")
  const logo =document.querySelector(".logo-mobile")
  listOpen.addEventListener('click', (event) => {
    dropdownList.style.display = "block";
    searchButton.style.display = "none";
    footer.style.display = "none";
    listClose.style.display = "flex";
    listOpen.style.display = "none";
    logo.style.display = "none";
    dropdownMobile.style.width = "100%";
    dropdownMobile.style.height = "100vh";
  });
};

const dropdownClose = () => {
  const listClose =document.querySelector(".list-navbar-x")
  const listOpen =document.querySelector(".list-navbar")
  const dropdownMobile =document.querySelector(".dropdown-mobile")
  const dropdownList =document.querySelector(".dropdown-list")
  const searchButton =document.querySelector(".search-button-navbar")
  const footer =document.querySelector(".footer")
  const logo =document.querySelector(".logo-mobile")
  listClose.addEventListener('click', (event) => {
    dropdownList.style.display = "none";
    listClose.style.display = "none";
    listOpen.style.display = "flex";
    footer.style.display = "flex";
    logo.style.display = "flex";
    listOpen.style.marginBottom = "0px";
    searchButton.style.display = "block";
    dropdownMobile.style.width = "";
    dropdownMobile.style.height = "0";
  });
};

export { dropdownPopup, dropdownClose };
