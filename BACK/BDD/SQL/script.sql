CREATE DATABASE projet; USE projet;

CREATE TABLE article(
   ref_article VARCHAR(20),
   photo_article VARCHAR(50),
   nom_article VARCHAR(30),
   lib_article VARCHAR(300),
   prixht_article DECIMAL(15,2),
   four_article VARCHAR(50),
   PRIMARY KEY(ref_article)
);

CREATE TABLE rubrique(
   ref_article VARCHAR(20),
   theme_article VARCHAR(50),
   PRIMARY KEY(ref_article),
   FOREIGN KEY(ref_article) REFERENCES article(ref_article)
);

CREATE TABLE sous_rubrique(
   ref_article VARCHAR(20),
   type_retrait VARCHAR(50),
   PRIMARY KEY(ref_article),
   FOREIGN KEY(ref_article) REFERENCES article(ref_article)
);

CREATE TABLE stock(
   id_stock INT AUTO_INCREMENT,
   min_stock DECIMAL(3,0),
   max_stock DECIMAL(6,0),
   reel_stock DECIMAL(6,0),
   ref_article VARCHAR(20) NOT NULL,
   PRIMARY KEY(id_stock),
   UNIQUE(ref_article),
   FOREIGN KEY(ref_article) REFERENCES article(ref_article)
);


CREATE TABLE fournisseur(
   Id_fournisseur INT AUTO_INCREMENT,
   nom_fournisseur VARCHAR(30),
   adresse_fournisseur VARCHAR(50),
   ville_fournisseur VARCHAR(20),
   cp_fournisseur VARCHAR(5),
   tel_fournisseur VARCHAR(10),
   courriel_fournisseur VARCHAR(50),
   pays_fournisseur VARCHAR(30),
   categorie_fournisseur VARCHAR(50),
   PRIMARY KEY(Id_fournisseur)
);

CREATE TABLE categorie(
   Id_cat_client INT AUTO_INCREMENT,
   lib_cat_client VARCHAR(30),
   pay_cat_client VARCHAR(30),
   coef_cat_client DECIMAL(2,0),
   PRIMARY KEY(Id_cat_client)
);

CREATE TABLE commande(
   Id_com INT AUTO_INCREMENT,
   bl_com VARCHAR(50),
   num_bl_com INT,
   date_com DATE,
   totalprixht_com DECIMAL(15,0),
   reduc_commercial_com DECIMAL(2,0),
   PRIMARY KEY(Id_com)
);

CREATE TABLE client(
   Id_client INT AUTO_INCREMENT,
   nom_client VARCHAR(30),
   prenom_client VARCHAR(30),
   adresse_client VARCHAR(50),
   ville_client VARCHAR(20),
   cp_client VARCHAR(5),
   Id_cat_client INT NOT NULL,
   PRIMARY KEY(Id_client),
   FOREIGN KEY(Id_cat_client) REFERENCES categorie(Id_cat_client)
);

CREATE TABLE facture(
   Id_facture INT AUTO_INCREMENT,
   num_facture INT,
   fact_facture VARCHAR(50),
   prixht_facture DECIMAL(15,2),
   date_facture DATE,
   prixttc_facture DECIMAL(15,2),
   Id_com INT NOT NULL,
   PRIMARY KEY(Id_facture),
   UNIQUE(Id_com),
   FOREIGN KEY(Id_com) REFERENCES commande(Id_com)
);

CREATE TABLE commercial(
   Id_commercial INT AUTO_INCREMENT,
   nom_commercial VARCHAR(30),
   prenom_commercial VARCHAR(30),
   tel_commercial VARCHAR(10),
   courriel_commercial VARCHAR(50),
   Id_client INT NOT NULL,
   PRIMARY KEY(Id_commercial),
   UNIQUE(Id_client),
   FOREIGN KEY(Id_client) REFERENCES client(Id_client)
);

CREATE TABLE fournir(
   Id_fournisseur INT,
   Id_com INT,
   PRIMARY KEY(Id_fournisseur, Id_com),
   FOREIGN KEY(Id_fournisseur) REFERENCES fournisseur(Id_fournisseur),
   FOREIGN KEY(Id_com) REFERENCES commande(Id_com)
);


CREATE TABLE livrer(
   ref_article VARCHAR(20),
   Id_facture INT,
   adresse_livraison VARCHAR(50),
   adresse_facturation VARCHAR(50),
   PRIMARY KEY(ref_article, Id_facture),
   FOREIGN KEY(ref_article) REFERENCES article(ref_article),
   FOREIGN KEY(Id_facture) REFERENCES facture(Id_facture)
);

CREATE TABLE passer(
   ref_article VARCHAR(20),
   Id_client INT,
   Id_com INT,
   PRIMARY KEY(ref_article, Id_client, Id_com),
   FOREIGN KEY(ref_article) REFERENCES article(ref_article),
   FOREIGN KEY(Id_client) REFERENCES client(Id_client),
   FOREIGN KEY(Id_com) REFERENCES commande(Id_com)
);

