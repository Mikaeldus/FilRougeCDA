INSERT INTO categorie (id_cat_client, lib_cat_client, pay_cat_client, coef_cat_client)
VALUES (NULL, 'particulier', 'immediat', 10),
	(NULL, 'proffesionnel', 'differe', 20),
       (NULL, 'DEPOT', 'differe', 0);

INSERT INTO client (id_client, nom_client, prenom_client, adresse_client, ville_client, cp_client, id_cat_client)
VALUES (NULL, 'GROBRIGAN', 'Georges', '20 rue du papier', 'papercity', 92200, 1),
	(NULL, 'ECLIPSE', 'Nestor', '53 rue laisse flotter les rubans', 'Bugbugville', 78250, 2),
	(NULL, 'MEDICIS', 'LIson','120 rue des plantes', 'Paris', 75014, 1),
	(NULL, 'DISCOBOL', 'Hercule', '11 rue des sports', 'La Roche sur Yon', 85100, 2),
	(NULL, 'DEPANPAP', 'Pollux', '26 avenue des locomotives', 'Coroncountry', 59987, 1),
	(NULL, 'HURRYTAPE', 'Track', '68 boulevard des octets', 'Dumpville',  44044, 2),
       (NULL, 'DEPOT', 'DEPOT', 'DEPOT', 'DEPOT', '', 3);

INSERT INTO commercial (id_commercial, nom_commercial, prenom_commercial, tel_commercial, courriel_commercial, id_client)
VALUES (NULL, 'BETON', 'MAXIME', 0568549425, 'maxime.beton@gmail.com',1),
	(NULL, 'CIMEN', 'PIERRE', 0758649547, 'pierre.cimen@hotmail.fr',2),
       (NULL, 'BOULON', 'LOIC', 0568558754, 'loic.boulon@gmail.com',3),
	(NULL, 'DELAY', 'LAURINE', 0755874447, 'laurine.delay@hotmail.fr',4),
       (NULL, 'BOULET', 'MORGANE', 0598654245, 'morgane.boulet@gmail.com',5),
	(NULL, 'CRAYON', 'PAPIER', 0798586547, 'papier.crayon@hotmail.fr',6);

INSERT INTO fournisseur (id_fournisseur, nom_fournisseur, adresse_fournisseur, ville_fournisseur, cp_fournisseur, tel_fournisseur, courriel_fournisseur, pays_fournisseur, categorie_fournisseur)
VALUES (NULL, 'NEO BOUTIQUE', '36 place de leglise', 'MONTCUT', 65852, 0564758425, 'neo.boutique@gmail.com', 'FRANCE', 'constructeur'),
	(NULL, 'SPORT BOUTIQUE', '85 rue du puit', 'GLAIRE', 85978,0696649547, 'sport.boutique@hotmail.fr', 'FRANCE', 'importateur'),
       (NULL, 'BOUTIQUE BOCAL', '36 bis rue de la place', 'PARIS', 54754, 0568475854, 'boutique.bocal@gmail.com', 'FRANCE', 'importateur'),
	(NULL, 'METAUX TEL', '20 rue du caveau', 'BORDEAUX', 98645, 0655874447, 'metaux.tel@hotmail.fr', 'FRANCE', 'constructeur'),
       (NULL, 'IMAGE METAUX', '5 bis rue de lecrou', 'LILLE', 12365, 0798654245, 'image.metaux@gmail.com', 'FRANCE', 'importateur'),
	(NULL, 'DRIVEN METAUX', '8 rue de lavenir', 'REIMS', 87451, 0798576547, 'driven.metaux@hotmail.fr', 'FRANCE', 'constructeur');

INSERT INTO commande (id_com, bl_com, num_bl_com, date_com, totalprixht_com, reduc_commercial_com)
VALUES (NULL, '', 0101, '2014-02-14', 145, 0),
	(NULL, '', 0102, '2020-01-12', 475, 10),
       (NULL, '', 0103, '2019-11-10', 146, 0),
	(NULL, '', 0104, '2021-01-01', 85, 20),
       (NULL, '', 0105, '2018-05-18', 47, 0),
	(NULL, '', 0106, '2019-10-05', 487, 0);

INSERT INTO fournir (id_fournisseur, id_com)
VALUES (6, 6),
	(4, 5),
       (3, 4);

INSERT INTO facturer (Id_facturer, num_facture, fact_facture, prixht_facture, date_facture, prixttc_facture, Id_com)
VALUES (NULL, 0101, '', 145, '2014-02-14', 131, 1),
	(NULL, 0102, '', 475, '2020-01-12', 461, 2),
       (NULL, 0103, '', 146, '2019-11-10', 135, 3),
	(NULL, 0104, '', 85, '2021-01-01', 77, 4),
       (NULL, 0105, '', 47, '2018-05-18', 44, 5),
	(NULL, 0106, '', 487, '2019-10-05', 468, 6);



INSERT INTO article (ref_article, photo_article, nom_article, lib_article, prixht_article, four_article)
VALUES ('REF0001', '', 'boulon', 'Boite de 26 boulons zinc tête ronde collet carré 7x70 mm COTE ...', 12.95, 'METAUX TEL'),
	('REF0002', '', 'boulon','Sachet de 2 boulons tête hexagonale inox A4 8x50 mm FORTFIX', 4.95, 'METAUX TEL'),
       ('REf0003', '', 'boulon', 'Boite de 40 boulons zinc tête ronde collet carré 6x50 mm COTE ...', 12.95, 'METAUX TEL'),
	('REF0004', '', 'poignee', 'Poignee coquille entraxe 64mm zamak decor rouille', 5.60, 'BOUTIQUE BOCAL'),
       ('REF0005', '', 'boulon', 'Boîte de 32 boulons poêlier zinc 6x50 mm FORTFIX', 9.45, 'METAUX TEL'),
	('REF0006', '', 'poignee', 'Poignee entaille SHEPHERD inox 68 mm x 21 mm x 8 mm', 5.15, 'BOUTIQUE BOCAL'),
       ('REF0007', '', 'poignee', 'Poignee entaille SHEPHERD 75 mm x 23 mm x 9 mm', 3.00, 'BOUTIQUE BOCAL'),
       ('REF0008', '', 'poignee', 'Poignee entaille SHEPHERD laiton 74 mm x 21 mm x 8 mm', 4.35, 'BOUTIQUE BOCAL'),
	('REF0009', '', 'poignee', 'Lot 5 poignées anse entraxe 96mm plastique blanc', 15.30, 'BOUTIQUE BOCAL'),
       ('REF0010', '', 'boite au lettre', 'Boite à colis DECAYEUX @Box 950 noir ral 9005', 249.99, 'DRIVEN METAUX'),
	('REF0011', '', 'boite au lettre', 'Boite aux lettres individuelles DECAYEUX @Box 300 gris ral 70 ...', 89.99, 'DRIVEN METAUX'),
       ('REF0012', '', 'boite au lettre', 'Boite à colis DECAYEUX @Box 950 gris ral 7016', 249.99, 'DRIVEN METAUX'),
       ('REF0013', '', 'boite au lettre', 'Boite aux lettres DECAYEUX Pavillon n°2 en acier galvanisé.', 29.99, 'DRIVEN METAUX');

INSERT INTO livrer (ref_article, Id_facturer, adresse_livraison, adresse_facturation)
VALUES ('REF0001', 1, '20 rue du papier papercity 92200', '20 rue du papier papercity 92200'),
	('REF0002', 2,'26 avenue des locomotives Coroncountry 59987', '26 avenue des locomotives Coroncountry 59987'),
       ('REf0003', 3,'11 rue des sports La Roche sur Yon 85100', '11 rue des sports La Roche sur Yon 85100'),
	('REF0004', 4,'depot', 'depot'),
       ('REF0005', 5,'depot', 'depot'),
	('REF0006', 6,'depot', 'depot'),
       ('REF0007', 1,'20 rue du papier papercity 92200', '20 rue du papier papercity 92200'),
       ('REF0008', 5,'depot', 'depot'),
	('REF0009', 5,'depot', 'depot'),
       ('REF0010', 6,'depot', 'depot'),
	('REF0011', 1,'20 rue du papier papercity 92200', '20 rue du papier papercity 92200'),
       ('REF0012', 2,'26 avenue des locomotives Coroncountry 59987', '26 avenue des locomotives Coroncountry 59987'),
       ('REF0013', 3,'11 rue des sports La Roche sur Yon 85100', '11 rue des sports La Roche sur Yon 85100');

INSERT INTO passer (ref_article, id_client, id_com)
VALUES ('REF0001',1,1),
	('REF0002',1,2),
       ('REF0003',2,1),
	('REF0004',2,2),
       ('REF0005',1,4),
	('REF0006',2,4),
       ('REF0007',5,1),
       ('REF0008',2,2),
	('REF0009',4,4),
       ('REF0010',4,6),
	('REF0011',4,5),
       ('REF0012',2,3),
       ('REF0013',6,6);

INSERT INTO rubrique (ref_article, theme_article)
VALUES ('REF0001', 'Cheville, vis, clou et boulon'),
	('REF0002', 'Cheville, vis, clou et boulon'),
       ('REf0003', 'Cheville, vis, clou et boulon'),
	('REF0004', 'Quincaillerie du meuble'),
       ('REF0005', 'Cheville, vis, clou et boulon'),
	('REF0006', 'Quincaillerie du meuble'),
       ('REF0007', 'Quincaillerie du meuble'),
       ('REF0008', 'Quincaillerie du meuble'),
	('REF0009', 'Quincaillerie du meuble'),
       ('REF0010', 'Boîte aux lettres, profilé et ferronnerie'),
	('REF0011', 'Boîte aux lettres, profilé et ferronnerie'),
       ('REF0012', 'Boîte aux lettres, profilé et ferronnerie'),
       ('REF0013', 'Boîte aux lettres, profilé et ferronnerie');

INSERT INTO sous_rubrique (ref_article, type_retrait)
VALUES ('REF0001', 'Retrait en magasin'),
	('REF0002', 'Retrait en magasin'),
       ('REf0003', 'Retrait en magasin'),
	('REF0004', 'Retrait en magasin'),
       ('REF0005', 'En livraison'),
	('REF0006', 'En livraison'),
       ('REF0007', 'Retrait en magasin'),
       ('REF0008', 'En livraison'),
	('REF0009', 'En livraison'),
       ('REF0010', 'Retrait en magasin'),
	('REF0011', 'En livraison'),
       ('REF0012', 'En livraison'),
       ('REF0013', 'Retrait en magasin');

INSERT INTO stock (id_stock, min_stock, max_stock, reel_stock, ref_article)
VALUES (NULL, 100, 200, 125, 'REF0001'),
	(NULL, 100, 200, 115, 'REF0002'),
       (NULL, 100, 200, 114, 'REF0003'),
	(NULL, 60, 80, 71, 'REF0004'),
       (NULL, 50, 110, 86, 'REF0005'),
	(NULL, 50, 110, 75, 'REF0006'),
       (NULL, 50, 110, 74, 'REF0007'),
       (NULL, 50, 110, 66, 'REF0008'),
	(NULL, 50, 110, 65, 'REF0009'),
       (NULL, 20, 30, 26, 'REF0010'),
	(NULL, 20, 30, 24, 'REF0011'),
       (NULL, 15, 25, 21, 'REF0012'),
       (NULL, 35, 45, 37, 'REF0013');




