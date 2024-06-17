document.addEventListener('DOMContentLoaded', function() {
  // Toggle between dark and light theme
  const themeToggle = document.getElementById('theme-toggle');
  themeToggle.addEventListener('click', function() {
      document.body.classList.toggle('dark-theme');
  });

  // Smooth scroll for anchor links
  const links = document.querySelectorAll('a[href^="#"]');
  for (const link of links) {
      link.addEventListener('click', function(e) {
          e.preventDefault();
          const targetId = this.getAttribute('href').substring(1);
          document.getElementById(targetId).scrollIntoView({
              behavior: 'smooth'
          });
      });
  }

  // Mobile menu toggle
  const menuToggle = document.getElementById('menu-toggle');
  const nav = document.querySelector('nav ul');
  menuToggle.addEventListener('click', function() {
      nav.classList.toggle('open');
  });
});
