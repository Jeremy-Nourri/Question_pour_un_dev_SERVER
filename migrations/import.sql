BEGIN;

INSERT INTO "user" ("email", "password", "nickname", "avatar", "role") VALUES
('nourri.jer@gmail.com', '$2b$10$vh9rQ95D3gJ255hDcAqUcerl9pXyvhMwqUue1Mydf63W9Lac5lkYe', 'jer', 'https://cdn.shopify.com/s/files/1/0008/7851/0137/products/s-l1600_428ba206-ce4f-4049-a8b7-702411cdbea7_641x641.jpg?v=1670218079', 'admin');

INSERT INTO "quiz" ("topic" , "description", "image", "userId") VALUES
('HTML', 'Ce langage permet d’écrire de l’hypertexte, de structurer sémantiquement une page web, de mettre en forme du contenu, de créer des formulaires de saisie ou encore d’inclure des ressources multimédias dont des images, des vidéos, et des programmes informatiques.', 'https://img.icons8.com/color/512/html-5.png', 1),
('CSS', 'Les feuilles de style en cascade (CSS) permettent d’ajouter facilement du style (polices, couleurs, espacement, etc.) à des documents Web.', 'https://img.icons8.com/color/512/css3.png', 1),
('JavaScript', 'JavaScript est un langage de programmation qui permet d’implémenter des mécanismes complexes sur une page web. À chaque fois qu’une page web fait plus que simplement afficher du contenu statique — afficher du contenu mis à jour à des temps déterminés, des cartes interactives, des animations, des menus vidéo défilants, ou autre, JavaScript a de bonnes chances d’être impliqué.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/197px-Unofficial_JavaScript_logo_2.svg.png', 1);

INSERT INTO "difficulty" ("name") VALUES
('Débutant(e)'),
('Confirmé(e)');

INSERT INTO "question" ("content", "quizId", "difficultyId") VALUES
('Que signifie HTML ?', 1, 1),
('Avec quoi une page HTML est-elle structurée ?', 1, 1),
('Quel élément suivant n''est pas un attribut HTML ?', 1, 1),
('Quelle balise est utilisée pour contenir un titre de première importance ?', 1, 1),
('Quelle balise est à la particularité d''être auto fermante ?', 1, 1),
('Quel attribut est utilisé avec la balise <a > pour préciser le lien de la page vers laquelle on sera redirigé  lorsqu''on clique sur le lien ?', 1, 1),
('Quelle balise permet de créer une liste non ordonnée ?', 1, 1),
('Dans quelle balise le contenu du pied de page doit-il être inséré ?', 1, 1),
('Dans quelle balise un texte correspondant à un paragraphe doit-il être inséré ?', 1, 1),
('Quelle balise englobe le contenu à afficher sur la page ?', 1, 1),
('Afin d''ouvrir une page dans une nouvelle fenêtre quelle valeur doit-on donner à attribut target dans la balise <a> ?', 1, 2),
('A quoi servent les spécifications WAI-ARIA ?', 1, 2),
('Quelle balise n''est pas un élément en bloc ?', 1, 2),
('Afin de faire le lien entre une balise label et input, quel attribut dois-je ajouter à la balise label ?', 1, 2),
('Le texte contenu dans l''attribut placeholder d''une balise input peut-il être lu par les lecteurs d''écran ?', 1, 2),
('Quelle balise doit être utiliser pour préciser le titre d''un tableau <table> ?', 1, 2),
('Quelle balise doit contenir les éléments principaux de navigation ?', 1, 2),
('Quelle balise doit être utiliser pour créer un bloc d''informations complémentaires à un article <article> ?', 1, 2),
('Quelle valeur est utilisée pour l''attribut type dans une balise input pour créer un bouton qui envoie les données du formulaire ?', 1, 2),
('Quelle balise permet de créer un lien hypertexte ?', 1, 2),
('Que signifie CSS ?', 2, 1),
('Dans quelle balise HTML, doit-on faire le lien avec une feuille de style externe ?', 2, 1),
('Quelle syntaxe est correcte ?', 2, 1),
('Comment sélectionner l’élément dont l’id est name ?', 2, 1),
('Comment sélectionner l’élément dont la classe est container ?', 2, 1),
('Quelle propriété css est utilisée pour modifier l’alignement d’un texte ?', 2, 1),
('Quel extrait css permet de centrer des éléments de façon horizontal ?', 2, 1),
('Quel extrait css permet qu''une liste n''affiche pas de puces ?', 2, 1),
('Quel extrait css permet de définir la taille du texte contenu dans l’élément p à 14 pixels ?', 2, 1),
('Quelle propriété css permet de définir la largeur d’un élément ?', 2, 1),
('À quoi correspond une hauteur de 50vh ?', 2, 2),
('Par rapport à quoi se place un élément positionné en absolute ?', 2, 2),
('Quel sélecteur a le plus de poids ?', 2, 2),
('Dans une liste de 10 items, combien d’éléments peuvent-ils être ciblés par li + li:first-child ?', 2, 2),
('Quelle valeur de display n’existe pas ?', 2, 2),
('Quelle est la valeur par défaut de la propriété position ?', 2, 2),
('Quel critère de Media Query n’existe pas ?', 2, 2),
('Quelle propriété permet de rogner une image ?', 2, 2),
('Quelle est la valeur minimum nécessaire pour qu''une transition fonctionne ?', 2, 2),
('Comment cibler les 4 premiers éléments d''une liste ?', 2, 2);

INSERT INTO "answer" ("content", "questionId", "correct") VALUES
('HyperTexas Makeup Language', 1, false),
('HyperText Markup Language', 1, true),
('HideText Make Language', 1, false),
('HideText Mark Language', 1, false),
('Des balises', 2, true),
('Des plots', 2, false),
('Des crochets', 2, false),
('Des fourchettes', 2, false),
('class', 3, false),
('src', 3, false),
('id', 3, false),
('zone', 3, true),
('<a1>', 4, false),
('<title>', 4, false),
('<h1>', 4, true),
('<p1>', 4, false),
('<div>', 5, false),
('<p>', 5, false),
('<img>', 5, true),
('<xxx>', 5, false),
('href', 6, true),
('link', 6, false),
('sos', 6, false),
('src', 6, false),
('<ul>', 7, true),
('<list>', 7, false),
('<ol>', 7, false),
('<dl>', 7, false),
('<footer>', 8, true),
('<foot>', 8, false),
('<body>', 8, false),
('<pied>', 8, false),
('<p>', 9, true),
('<h1>', 9, false),
('<div>', 9, false),
('<span>', 9, false),
('<page>', 10, false),
('<head>', 10, false),
('<body>', 10, true),
('<title>', 10, false),
('newwindows', 11, false),
('blank', 11, true),
('newdisplay', 11, false),
('blankview', 11, false),
('Insérer du contenu multimédia', 12, false),
('Créer des tableaux', 12, false),
('Rendre le contenu d’un site plus accessible', 12, true),
('Traduire le contenu d’un site', 12, false),
('<h2>', 13, false),
('<p>', 13, false),
('<fieldset>', 13, false),
('<button>', 13, true),
('for', 14, false),
('id', 14, false),
('name', 14, true),
('class', 14, false),
('Oui', 15, true),
('Non', 15, false),
('<title>', 16, false),
('<h2>', 16, false),
('<caption>', 16, true),
('<titre>', 16, false),
('<main>', 17, false),
('<navigation>', 17, false),
('<navbar>', 17, false),
('<nav>', 17, true),
('<nav>', 18, false),
('<aside>', 18, true),
('<p>', 18, false),
('<text>', 18, false),
('button', 19, true),
('submit', 19, false),
('checkbox', 19, false),
('search', 19, false),
('<p>', 20, false),
('<link>', 20, false),
('<a>', 20, true),
('<lien>', 20, false),
('Color Style Sheets', 21, false),
('Computer Style Sheets', 21, false),
('Creative Style Sheets', 21, false),
('Cascading Style Sheets', 21, true),
('<p>', 22, false),
('<body>', 22, false),
('<head>', 22, true),
('<css>', 22, false),
('Body { background-color: yellow; }', 23, true),
('{ Body background-color: yellow; }', 23, false),
('Body : background-color: yellow;', 23, false),
('Body background-color: yellow;', 23, false),
('%name', 24, false),
('!name', 24, false),
('.name', 24, false),
('#name', 24, true),
('%container', 25, false),
('!container', 25, false),
('.container', 25, true),
('#container', 25, false),
('text-front', 26, false),
('text-centrer', 26, false),
('text-align', 26, true),
('text-center', 26, false),
('site-align: center;', 27, false),
('margin: center;', 27, false),
('margin: auto 0;', 27, false),
('margin: 0 auto;', 27, true),
('list-style-type: no-bullet', 28, false),
('list: none', 28, false),
('bulletpoints: none', 28, false),
('list-style-type: none', 28, true),
('p {14px}', 29, false),
('p {font-size: 14px;}', 29, true),
('p {text-size: 14px;}', 29, false),
('p {font: 14px;}', 29, false),
('large', 30, false),
('width', 30, true),
('height', 30, false),
('size', 30, false),
('À la moitié de la hauteur du parent', 31, false),
('À la moitié de la hauteur de la fenêtre ', 31, true),
('À la moitié de la hauteur de ses enfants', 31, false),
('À un décalage de 50%', 31, false),
('À son plus proche ancêtre positionné', 32, true),
('À son parent direct', 32, false),
('À la page', 32, false),
('À son frère positionné en relatif', 32, false),
('li + li:first-child:last-child', 33, true),
('h1.unicorn:hover', 33, false),
('li:first-child::before', 33, false),
('html > head + body > li + h1:hover > *', 33, false),
('Aucun', 34, true),
('1 au maximum', 34, false),
('2 au maximum', 34, false),
('Un sur deux ', 34, false),
('inline-flex', 35, false),
('inline-grid', 35, false),
('inline-float', 35, true),
('inline-block', 35, false),
('auto', 36, false),
('inherit', 36, false),
('static', 36, true),
('normal', 36, false),
('aspect-ratio', 37, false),
('device-width', 37, false),
('device-height', 37, false),
('pixel-ratio', 37, true),
('crop', 38, false),
('object-fit', 38, true),
('zoom', 38, false),
('transform', 38, false),
('Le nom de la transition', 39, false),
('La durée de la transition', 39, true),
('L’accélération de la transition', 39, false),
('La propriété à transiter', 39, false),
('li:nth-child(4n)', 40, false),
('li:nth-child(-n+4)', 40, true),
('li:nth-child(4-n)', 40, false),
('li:nth-child(substr(4))', 40, false);

COMMIT;