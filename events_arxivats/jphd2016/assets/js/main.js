document.addEventListener('DOMContentLoaded', () => {
  const toggler = document.querySelector('.navbar-toggler');
  const collapse = document.getElementById('jphdMainNav');

  if (toggler && collapse) {
    collapse.addEventListener('hidden.bs.collapse', () => {
      toggler.setAttribute('aria-expanded', 'false');
    });
    collapse.addEventListener('shown.bs.collapse', () => {
      toggler.setAttribute('aria-expanded', 'true');
    });
  }
});
