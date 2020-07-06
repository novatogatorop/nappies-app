const navMobile = document.querySelector(".navbar-mobile")
var lastScrollTop = window.pageYOffset;

const navbarMobile = () => {
  window.addEventListener("scroll", function() {
    var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    if (scrollTop > lastScrollTop){
      navMobile.style.top="-60px";
    } else {
      navMobile.style.top="0";
    }
    lastScrollTop = scrollTop
  });
};

export { navbarMobile };
