(function () {
    const toggle = document.querySelector('.nav__toggle');
    const menu = document.querySelector('.nav__menu');

    if (toggle && menu) {
        toggle.addEventListener('click', () => {
            const isOpen = menu.classList.toggle('is-open');
            toggle.setAttribute('aria-expanded', String(isOpen));
        });
    }

    const badges = document.querySelectorAll('.pill');
    badges.forEach((badge, index) => {
        badge.style.transitionDelay = `${index * 45}ms`;
        badge.classList.add('pill--animated');
    });
})();
