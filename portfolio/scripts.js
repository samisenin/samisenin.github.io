

document.addEventListener('DOMContentLoaded', function() {
    // Sélectionnez tous les boutons de changement de langue
    const langButtons = document.querySelectorAll('.change-lang');

    // Ajoutez un écouteur d'événements pour chaque bouton
    langButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            const lang = this.getAttribute('data-lang'); // Obtenez la langue à partir de l'attribut data-lang

            // Construisez le nom du fichier HTML basé sur la langue sélectionnée
            let pageName = 'index'; // Utilisez 'index' comme nom de base pour les fichiers
            if (window.location.pathname.includes('resume')) {
                pageName = 'resume'; // Si la page actuelle est une variante de 'resume', utilisez 'resume' comme base
            }

            // Pour le français, utilisez le nom de la page sans suffixe
            const fileName = lang === 'fr' ? `${pageName}.html` : `${pageName}_${lang}.html`;

            // Redirigez vers la page appropriée
            window.location.href = fileName;
        });
    });
});