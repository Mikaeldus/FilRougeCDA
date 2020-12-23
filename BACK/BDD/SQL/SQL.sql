CREATE TABLE article(
   id_article DECIMAL(7,0),
   prixht_article CURRENCY,
   nom_article VARCHAR(30),
   lib_article VARCHAR(30),
   four_article DECIMAL(3,0),
   ref_article VARCHAR(20),
   photo_article VARCHAR(5000),
   PRIMARY KEY(id_article, prixht_article),
   UNIQUE(ref_article)
);

CREATE TABLE catalogue(
   id_article DECIMAL(7,0),
   prixht_article CURRENCY,
   theme_article VARCHAR(30),
   PRIMARY KEY(id_article, prixht_article),
   FOREIGN KEY(id_article, prixht_article) REFERENCES article(id_article, prixht_article)
);

CREATE TABLE sous_rubrique(
   id_article DECIMAL(7,0),
   prixht_article CURRENCY,
   type_article VARCHAR(30),
   PRIMARY KEY(id_article, prixht_article),
   FOREIGN KEY(id_article, prixht_article) REFERENCES article(id_article, prixht_article)
);

CREATE TABLE stock(
   id_stock DECIMAL(7,0),
   min_stock DECIMAL(3,0),
   max_stock DECIMAL(6,0),
   reel_stock DECIMAL(6,0),
   PRIMARY KEY(id_stock)
);

CREATE TABLE categorie(
   id_cat DECIMAL(7,0),
   pay_cat VARCHAR(30),
   coef_cat DECIMAL(2,0),
   lib_cat VARCHAR(30),
   PRIMARY KEY(id_cat, pay_cat, coef_cat)
);

CREATE TABLE reglement(
   id_regl DECIMAL(7,0),
   date_regl DATE,
   type_regl VARCHAR(20),
   total_regl CURRENCY,
   PRIMARY KEY(id_regl)
);

CREATE TABLE categorie_fournisseur(
   id_cat_four DECIMAL(7,0),
   lib_cat_four VARCHAR(30),
   PRIMARY KEY(id_cat_four)
);

CREATE TABLE commande_fournisseur(
   id_com_four DECIMAL(7,0),
   bl_com_four VARCHAR(5000),
   num_bl_com_four DECIMAL(15,0),
   date_com_four DATE,
   prixht_com_four CURRENCY,
   PRIMARY KEY(id_com_four)
);

CREATE TABLE reglement_fournisseur(
   id_regl_four DECIMAL(7,0),
   date_regl_four DATE,
   type_regl_four VARCHAR(20),
   total_regl_four CURRENCY,
   PRIMARY KEY(id_regl_four)
);

CREATE TABLE livraison_four(
   id_liv_four DECIMAL(7,0),
   date_liv_four DATE,
   num_liv_four DECIMAL(15,0),
   PRIMARY KEY(id_liv_four)
);

CREATE TABLE client(
   id_client DECIMAL(7,0),
   nom_client VARCHAR(30),
   prenom_client VARCHAR(30),
   adresse_client VARCHAR(30),
   ville_client VARCHAR(20),
   cp_client VARCHAR(5),
   id_cat DECIMAL(7,0) NOT NULL,
   pay_cat VARCHAR(30) NOT NULL,
   coef_cat DECIMAL(2,0) NOT NULL,
   PRIMARY KEY(id_client),
   FOREIGN KEY(id_cat, pay_cat, coef_cat) REFERENCES categorie(id_cat, pay_cat, coef_cat)
);

CREATE TABLE commande(
   id_com DECIMAL(7,0),
   bl_com VARCHAR(5000),
   date_com DATE,
   prixht_com CURRENCY,
   num_com DECIMAL(15,0),
   id_client DECIMAL(7,0) NOT NULL,
   PRIMARY KEY(id_com),
   FOREIGN KEY(id_client) REFERENCES client(id_client)
);

CREATE TABLE commercial(
   id_commercial DECIMAL(3,0),
   nom_commercial VARCHAR(30),
   prenom_commercial VARCHAR(30),
   tel_commercial VARCHAR(10),
   courriel_commercial VARCHAR(30),
   id_client DECIMAL(7,0) NOT NULL,
   PRIMARY KEY(id_commercial),
   UNIQUE(id_client),
   FOREIGN KEY(id_client) REFERENCES client(id_client)
);

CREATE TABLE fournisseur(
   id_four DECIMAL(7,0),
   nom_four VARCHAR(30),
   adre_four VARCHAR(30),
   ville_four VARCHAR(30),
   cp_four VARCHAR(5),
   tel_four VARCHAR(10),
   courriel_four VARCHAR(30),
   pays_four VARCHAR(30),
   id_cat_four DECIMAL(7,0) NOT NULL,
   PRIMARY KEY(id_four),
   FOREIGN KEY(id_cat_four) REFERENCES categorie_fournisseur(id_cat_four)
);

CREATE TABLE compter(
   id_article DECIMAL(7,0),
   prixht_article CURRENCY,
   id_stock DECIMAL(7,0),
   PRIMARY KEY(id_article, prixht_article, id_stock),
   FOREIGN KEY(id_article, prixht_article) REFERENCES article(id_article, prixht_article),
   FOREIGN KEY(id_stock) REFERENCES stock(id_stock)
);

CREATE TABLE acheter(
   id_article DECIMAL(7,0),
   prixht_article CURRENCY,
   id_client DECIMAL(7,0),
   PRIMARY KEY(id_article, prixht_article, id_client),
   FOREIGN KEY(id_article, prixht_article) REFERENCES article(id_article, prixht_article),
   FOREIGN KEY(id_client) REFERENCES client(id_client)
);

CREATE TABLE commander(
   id_article DECIMAL(7,0),
   prixht_article CURRENCY,
   id_com DECIMAL(7,0),
   id_liste DECIMAL(7,0),
   quantite_article DECIMAL(4,0),
   prixht_total_article CURRENCY,
   PRIMARY KEY(id_article, prixht_article, id_com),
   FOREIGN KEY(id_article, prixht_article) REFERENCES article(id_article, prixht_article),
   FOREIGN KEY(id_com) REFERENCES commande(id_com)
);

CREATE TABLE facturer(
   id_client DECIMAL(7,0),
   id_regl DECIMAL(7,0),
   id_facture DECIMAL(7,0),
   num_facture DECIMAL(15,0),
   bl_facture VARCHAR(5000),
   prix_facture CURRENCY,
   date_facture DATE,
   PRIMARY KEY(id_client, id_regl),
   FOREIGN KEY(id_client) REFERENCES client(id_client),
   FOREIGN KEY(id_regl) REFERENCES reglement(id_regl)
);

CREATE TABLE donner(
   id_commercial DECIMAL(3,0),
   reduc_commercial DECIMAL(2,0),
   id_com DECIMAL(7,0) NOT NULL,
   PRIMARY KEY(id_commercial),
   UNIQUE(id_com),
   FOREIGN KEY(id_commercial) REFERENCES commercial(id_commercial),
   FOREIGN KEY(id_com) REFERENCES commande(id_com)
);

CREATE TABLE etablir(
   id_four DECIMAL(7,0),
   id_regl_four DECIMAL(7,0),
   id_liv_four DECIMAL(7,0),
   id_fact_four DECIMAL(7,0),
   bl_fact_four VARCHAR(5000),
   num_bl_fact_four DECIMAL(15,0),
   prix_fact_four CURRENCY,
   date_fact_four DATE,
   PRIMARY KEY(id_four, id_regl_four, id_liv_four),
   FOREIGN KEY(id_four) REFERENCES fournisseur(id_four),
   FOREIGN KEY(id_regl_four) REFERENCES reglement_fournisseur(id_regl_four),
   FOREIGN KEY(id_liv_four) REFERENCES livraison_four(id_liv_four)
);

CREATE TABLE demander(
   id_four DECIMAL(7,0),
   id_com_four DECIMAL(7,0),
   PRIMARY KEY(id_four, id_com_four),
   FOREIGN KEY(id_four) REFERENCES fournisseur(id_four),
   FOREIGN KEY(id_com_four) REFERENCES commande_fournisseur(id_com_four)
);

CREATE TABLE envoyer(
   id_article DECIMAL(7,0),
   prixht_article CURRENCY,
   id_com_four DECIMAL(7,0),
   id_liste_article_four DECIMAL(7,0),
   quantite_article_four DECIMAL(15,0),
   prixht_total_article_four CURRENCY,
   PRIMARY KEY(id_article, prixht_article, id_com_four),
   FOREIGN KEY(id_article, prixht_article) REFERENCES article(id_article, prixht_article),
   FOREIGN KEY(id_com_four) REFERENCES commande_fournisseur(id_com_four)
);

CREATE TABLE rajouter(
   id_article DECIMAL(7,0),
   prixht_article CURRENCY,
   quantite_liv_depot DECIMAL(15,0),
   nombre_piece_liv_depot DECIMAL(15,0),
   total_prix_quant_liv_depot CURRENCY,
   id_liv_four DECIMAL(7,0) NOT NULL,
   PRIMARY KEY(id_article, prixht_article),
   FOREIGN KEY(id_article, prixht_article) REFERENCES article(id_article, prixht_article),
   FOREIGN KEY(id_liv_four) REFERENCES livraison_four(id_liv_four)
);
