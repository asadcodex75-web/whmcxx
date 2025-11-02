function toggleNav() {
    const nav = document.querySelector('.main-nav');
    nav?.classList.toggle('open');
}

document.addEventListener('click', (event) => {
    const nav = document.querySelector('.main-nav');
    const toggle = document.querySelector('.nav-toggle');
    if (!nav || !toggle) return;

    if (!nav.contains(event.target) && !toggle.contains(event.target)) {
        nav.classList.remove('open');
    }
});

const form = document.querySelector('.newsletter');
form?.addEventListener('submit', (event) => {
    event.preventDefault();
    const input = form.querySelector('input[type="email"]');
    if (!input) return;
    const button = form.querySelector('button');
    button.disabled = true;
    button.textContent = 'Subscribed!';
    button.classList.add('btn-contrast');
});

const tabs = document.querySelectorAll('.order-tab');
const panels = document.querySelectorAll('.order-panel');

if (tabs.length && panels.length) {
    tabs.forEach((tab) => {
        tab.addEventListener('click', () => {
            const target = tab.dataset.target;
            tabs.forEach((t) => t.classList.remove('active'));
            panels.forEach((panel) => panel.classList.remove('active'));
            tab.classList.add('active');
            document.querySelector(`#panel-${target}`)?.classList.add('active');
        });
    });
}
