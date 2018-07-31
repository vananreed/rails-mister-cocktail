import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Drinks for Everyone", "Let's drink!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
