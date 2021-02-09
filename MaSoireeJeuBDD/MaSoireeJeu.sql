CREATE TABLE Jeu(
   Id_Jeu INT AUTO_INCREMENT,
   jeu_name VARCHAR(50) NOT NULL,
   jeu_note INT,
   jeu_duree DATE,
   jeu_nb_min INT,
   jeu_nb_max INT,
   PRIMARY KEY(Id_Jeu),
   UNIQUE(jeu_name)
);

CREATE TABLE Joueur(
   Id_Joueur INT AUTO_INCREMENT,
   joueur_name VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_Joueur),
   UNIQUE(joueur_name)
);

CREATE TABLE Formulaire(
   Id_formulaire INT AUTO_INCREMENT,
   formulaire_date DATE,
   formulaire_nb_joueur_min INT,
   formulaire_nombre_joueur_max INT,
   formulaire_lieu VARCHAR(50),
   soiree_nb_joueur_confirme INT,
   Id_Joueur INT NOT NULL,
   PRIMARY KEY(Id_formulaire),
   FOREIGN KEY(Id_Joueur) REFERENCES Joueur(Id_Joueur)
);

CREATE TABLE Formulaire_Jeux(
   Id_Jeu INT,
   Id_formulaire INT,
   PRIMARY KEY(Id_Jeu, Id_formulaire),
   FOREIGN KEY(Id_Jeu) REFERENCES Jeu(Id_Jeu),
   FOREIGN KEY(Id_formulaire) REFERENCES Formulaire(Id_formulaire)
);

CREATE TABLE Formulaire_Joueur_Confirme(
   Id_Joueur INT,
   Id_formulaire INT,
   PRIMARY KEY(Id_Joueur, Id_formulaire),
   FOREIGN KEY(Id_Joueur) REFERENCES Joueur(Id_Joueur),
   FOREIGN KEY(Id_formulaire) REFERENCES Formulaire(Id_formulaire)
);

CREATE TABLE jeu_joueur(
   Id_Jeu INT,
   Id_Joueur INT,
   PRIMARY KEY(Id_Jeu, Id_Joueur),
   FOREIGN KEY(Id_Jeu) REFERENCES Jeu(Id_Jeu),
   FOREIGN KEY(Id_Joueur) REFERENCES Joueur(Id_Joueur)
);
