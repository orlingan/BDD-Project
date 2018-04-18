create table archeologie(cle integer, nom_musée text, lieu_musée text, ancien_nom_ville text, nouveau_nom_ville text, 
	nom_objet text, année_datation integer, site_découverte text, site_archeo text, civilisation text, lieu_site text);

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(1,'Louvre','Paris','','','','','','','','');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(2,'','','Massilia','Marseille','','','','','','');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(3,'NHML','Londre','','','vase',1250,'chengziya','','','');	

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(4,'Louvre','Paris','Lutèce','Paris','momie',-3800,'Pyramide de Gizeh','Pyramide de Gizeh','Egyptien','Le Caire');
	
insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(5,'','','','','',-3800,'','Pyramide de Gizeh','Egyptien','Le Caire');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(6,'Louvre','Paris','','','dieu fleuve et deux nymphes',-79,'Maison des Vestales','Pompéi','Romaine','');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(7,'','','','Paris','',1861,'','','','catacombe de Paris');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(8,'','','','','Tour de pise',1173,'Pise','Piazza del Duomo','','Pise');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(9,'','','Augustodunum','Autun','',14,'Augustodunum','Augustodunum','galois-romaine','Autun');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(10,'','','','','',709,'Mont Saint-Michel','Abbaye de l\archange Saint Michel','normand','NORMANDIE');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(11,'','','antipolis','antibes','',-400,'','','romaine','');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(12,'NMNH','Washington DC','','','Triceratops horridus Marsh',-85000000,'','','','');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(13,'','','Pompeii','Pompéi','',-900,'','Pompéi','Romaine','Naples');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(14,'','','','','',1000,'','Chichén Itzá','Maya','Yucatán');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(15,'','','','','Dinars d or',1200,'Abbaye de Cluny','','','Cluny');	

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(16,'Louvre','Paris','','','La Stèle de victoire du roi Naram-Sin',-2224,'Acropole de Suse','','Akkadien','');	
	
insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(17,'','','','','','','','','','');	

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(18,'','','','','','','','','','');

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(19,'','','','','','','','','','');	

insert into archeologie(cle, nom_musée, lieu_musée, ancien_nom_ville, nouveau_nom_ville, 
	nom_objet, année_datation, site_découverte, site_archeo, civilisation, lieu_site) values(20,'','','','','','','','','','');

										
select * from archeologie;
select distinct nom_musée from archeologie where lieu_musée ='Paris' and civilisation = 'Egyptien' ;

select distinct nom_musée, count(nom_objet) from archeologie group by nom_musée;

select count(nom_musée) from archeologie where nom_musée != '';  -- nombre de musée

select distinct nom_objet from archeologie where exists
               (select nom_musée from archeologie where nom_musée != '');

select * from archeologie where année_datation<=1000 order by année_datation;
