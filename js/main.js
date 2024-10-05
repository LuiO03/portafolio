document.addEventListener('DOMContentLoaded', () => {
  const menuBtn = document.querySelector('.menu-btn');
  const menuOpciones = document.querySelector('.menu-principal__opciones');
  const body = document.body;

  // Función para alternar el menú y el ícono
  const toggleMenu = () => {
      menuOpciones.classList.toggle('show');
      menuBtn.classList.toggle('active');

      // Cambiar el ícono de menú a "X" y viceversa
      const icon = menuBtn.querySelector('i');
      if (menuOpciones.classList.contains('show')) {
          icon.classList.remove('ri-menu-3-line');
          icon.classList.add('ri-close-line');
      } else {
          icon.classList.remove('ri-close-line');
          icon.classList.add('ri-menu-3-line');
      }
  };

  // Evento al hacer clic en el botón del menú
  menuBtn.addEventListener('click', (e) => {
      e.stopPropagation(); // Evita que el clic se propague al documento
      toggleMenu();
  });

  // Evento al hacer clic en cualquier lugar del documento
  document.addEventListener('click', (e) => {
      // Si el menú está abierto y el clic no está dentro del menú ni en el botón del menú
      if (menuOpciones.classList.contains('show') &&
          !menuOpciones.contains(e.target) &&
          !menuBtn.contains(e.target)) {
          toggleMenu();
      }
  });

  // Opcional: Cerrar el menú al hacer clic en una opción (mejora la experiencia del usuario)
  const menuItems = document.querySelectorAll('.menu__opcion a');
  menuItems.forEach(item => {
      item.addEventListener('click', () => {
          if (menuOpciones.classList.contains('show')) {
              toggleMenu();
          }
      });
  });
});


