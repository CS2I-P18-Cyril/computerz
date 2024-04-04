/*
    Projet Computerz - Script MySQL/MariaDB
*/

/* --------------------
   -- TABLE ORDINATEURS
   -------------------- */

CREATE TABLE IF NOT EXISTS ordinateurs (
    id          INT(11)         PRIMARY KEY AUTO_INCREMENT,
    marque      VARCHAR(20)     NOT NULL,
    modele      VARCHAR(30)     NOT NULL,
    description TEXT,
    systeme     VARCHAR(50),
    processeur  VARCHAR(30),
    memoire     INT(11),
    disque      VARCHAR(30),
    neuf        TINYINT(1)     NOT NULL DEFAULT '1',
    prix        DECIMAL(8,2)   NOT NULL,
    photo       VARCHAR(50)    DEFAULT NULL
);

/* -----------------------
   -- TABLE CONFIGURATIONS
   ----------------------- */

CREATE TABLE IF NOT EXISTS configurations (
    id              INT(11)        PRIMARY KEY AUTO_INCREMENT,
    id_ordinateur   INT(11)        NOT NULL REFERENCES ordinateurs(id),
    intitule        VARCHAR(50)    NOT NULL
);

/* ----------------------
   -- DONNEES ORDINATEURS
   ---------------------- */

INSERT INTO ordinateurs (marque, modele, 
    description, 
    systeme, processeur, memoire, disque, neuf, prix, photo)
VALUES
    ('Dell', 'XPS 13 7390', 
    'L''ultra portable Dell XPS 13 7390 (7390-0065) mise sur une mobilité extrême avec un format très compact proche d''un 12 pouces qui mise sur une mobilité extrême.. Il dispose d''un châssis en fibre de carbone pour un poids total de 1,29 Kg seulement... Inutile d''argumenter, vous êtes déjà séduits !', 
    'Windows 10 Professionnel 64 bits', 'Intel Core i7', 16, 'SSD 512 Go', 1, 1199.95,
    'dell-xps-13-7390.png');

INSERT INTO ordinateurs (marque, modele, 
    description, 
    systeme, processeur, memoire, disque, neuf, prix, photo)
VALUES
    ('MSI', 'GF65 Thin 9SEXR-692FR', 
    'Le PC Portable gamer MSI GF65 Thin 9SEXR-692FR est le nouveau châssis gamer de MSI au format 15,6 pouces ! Son châssis de moins de 2 kg et à la finition aluminium se pare d''une dalle bord à bord Full HD 144 Hz idéale pour vos sessions de jeu. Le reste des composants se met au diapason pour vous offrir une expérience de jeu au top : carte RTX 2060 de génération Turing, 16 Go de RAM et SSD grosse capacité. En bref, il a les moyens de vous faire jouer !', 
    'Windows 10 Famille 64 bits', 'Intel Core i7', 16, 'SSD 512 Go', 1, 1299.95,
    'msi-gf65.png');

INSERT INTO ordinateurs (marque, modele, 
    description, 
    systeme, processeur, memoire, disque, neuf, prix, photo)
VALUES
    ('Asus', 'Vivobook S712JA-AU058T', 
    'Le nouveau PC Portable Asus Vivobook S712JA-AU058T réussit à conserver un esprit résolument mobile grâce à un châssis avec dalle Full HD bord à bord qui ne fait pour autant aucun compromis sur les composants qu''il embarque !  Processeur Intel i5, RAM 8 Go et stockage SSD grosse capacité : tout est là pour vous offrir un PC Portable qui sait allier mobilité et performance !', 
    'Windows 10 Famille 64 bits', 'Intel Core i5', 8, 'SSD 512 Go', 0, 899.95,
    'asus-vivobook-s712ja.png');

INSERT INTO ordinateurs (marque, modele, 
    description, 
    systeme, processeur, memoire, disque, neuf, prix, photo)
VALUES
    ('Acer', 'Aspire 5 A515-44-R251', 
    'Le PC portable Acer Aspire 5 A515-44-R251 est élégant et mobile ! Il intègre une configuration performante comprenant un processeur AMD Ryzen de la toute nouvelle et attendue génération Renoir, 8 Go de RAM, ainsi qu''un large stockage SSD. Il se mettent ensemble à votre service et s''associent au confort de son écran 15 pouces Full HD à bords fins.', 
    'Windows 10 Famille 64 bits', 'AMD Ryzen 5', 8, 'SSD 1 To', 1, 699.95,
    'acer-aspire-a515.png');    

INSERT INTO ordinateurs (marque, modele, 
    description, 
    systeme, processeur, memoire, disque, neuf, prix, photo)
VALUES
    ('MSI', 'Modern 14 B11SB-052FR', 
    'L''élégant châssis métallique du PC Portable MSI Modern 14 B11SB-052FR en impose par sa finesse, sa dalle Full HD bord à bord et sa charnière "Flip''n''Share". Du côté des performances, il propose une configuration puissante qui intègre un nouveau processeur Intel de la nouvelle architecture Tiger Lake, stockage SSD PCie NVMe de capacité généreuse et 16 Go de RAM ! Quels que soient vos besoins, le Modern 14 y répondra avec style !', 
    'Windows 10 Professionnel 64 bits', 'Intel Core i7', 16, 'SSD 512 Go', 1, 1249.95,
    'msi-modern-14.png');   

INSERT INTO ordinateurs (marque, modele, 
    description, 
    systeme, processeur, memoire, disque, neuf, prix, photo)
VALUES
    ('Asus', 'A15 TUF 506II-AL024T', 
    'Avec le PC Portable Gamer Asus TUF 506II-AL024T, Asus renouvelle sa gamme TUF (The Ultimate Force) ! Il profite de l''arrivée des nouvelles cartes graphiques NVIDIA pour s''équiper d''une GTX 1650Ti et d''un processeur AMD de la très attendue génération Renoir avec le Ryzen 5-4600H. Le reste des composants n''est pas en reste : dalle IPS Full HD 144 Hz bord à bord et stockage SSD grosse capacité sont de la partie pour vous offrir une expérience de jeu intense !', 
    'Windows 10 Famille 64 bits', 'AMD Ryzen 5', 8, 'SSD 512 Go', 1, 999.95,
    'asus-a15-tuf.png');        

/* -------------------------
   -- DONNEES CONFIGURATIONS
   ------------------------- */

INSERT INTO configurations (id_ordinateur, intitule)
VALUES 
    (1, '1 x webcam'),
    (1, '1 x USB 3.1'),
    (1, '1 x Jack 3.5 mm Femelle Stéréo'),
    (2, '1 x carte réseau 10/100/1000 Mbs'),
    (2, '1 x webcam'),
    (2, '2 x USB 3.0'),
    (3, 'Bluetooth 4.1'),
    (3, '2 x USB 2.0'),
    (3, '1 x USB 3.0 Type C'),
    (3, '1 x USB 3.1'),
    (3, '1 x HDMI Femelle');   