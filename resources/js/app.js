/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require("./bootstrap");

window.Vue = require("vue").default;

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component(
    "example-component",
    require("./components/ExampleComponent.vue").default
);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: "#app",
});

// Navbar scroll toggler moved here from inline Blade to ensure it runs from the compiled asset
(function () {
    const SCROLL_THRESHOLD = 60; // px

    function getNav() {
        return document.getElementById("mainNav");
    }

    function updateNavScrolled() {
        const nav = getNav();
        if (!nav) return;

        // Try to find logo elements inside the nav. Use class names so we don't
        // depend on exact markup; these will be present in the navbar markup:
        // - .logo-default
        // - .logo-scrolled
        const logoDefault = nav.querySelector('.logo-default');
        const logoScrolled = nav.querySelector('.logo-scrolled');

        if (window.scrollY > SCROLL_THRESHOLD) {
            nav.classList.add("scrolled");
            // Explicitly show/hide logos via inline style to avoid cascade conflicts
            if (logoDefault) logoDefault.style.display = 'none';
            if (logoScrolled) logoScrolled.style.display = 'inline-block';
        } else {
            nav.classList.remove("scrolled");
            if (logoDefault) logoDefault.style.display = 'inline-block';
            if (logoScrolled) logoScrolled.style.display = 'none';
        }
    }

    // Listen on scroll and run once on DOM ready
    window.addEventListener("scroll", updateNavScrolled, { passive: true });
    document.addEventListener("DOMContentLoaded", updateNavScrolled);
    // run immediately in case the script loads after DOM is ready
    updateNavScrolled();
})();
