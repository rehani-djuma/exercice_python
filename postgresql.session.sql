            
            #--DATA CLEANING
           -- VERIFICATION DES DOUBLONS 
    
  --===pourla table clients=====================
    select id_client,nom,
    count(*)from clients
    GROUP BY id_client,nom
    having count(*)>1;
--=============pour la table  produits
select id_produit,nom_produit,
count(*)from produits
GROUP BY id_produit,nom_produit
    having count(*)>1;


--=========pour la table ventes
select id_vente,count(*)from ventes
    GROUP BY id_vente
    having count(*)>1;

-------------------VERIFICATION DES ELEMENTS MANQUANTS

--===pourla table clients=====================

SELECT * FROM clients where id_client is NULL or nom is NULL or pays is 
    NULL OR ville is NULL or date_inscription is NULL 
    or canal_acquisition is NULL;

    -------mise a jour des elements manquants

update clients set pays='Côte d’Ivoire' where id_client=34;

UPDATE clients set nom='Client_2636' where id_client=2636;

UPDATE clients set pays='Bruxelles' where id_client=190;

update clients set canal_acquisition='Organic' where id_client=232;

UPDATE clients set nom='Client_3935' where id_client=3935;

UPDATE clients set ville='Québec' where id_client='4100';

UPDATE clients set ville='Lyon' where id_client='3605';

UPDATE clients set canal_acquisition='Marketplace' 
where id_client='2909';

UPDATE clients set ville='Namur' where id_client='3209';

--==========pour la table ventes

SELECT * FROM ventes where id_vente is NULL or id_paiement is NULL or methode is 
    NULL OR statut is NULL  ;
  
         -------mise a jour des elements manquants

UPDATE ventes set methode='carte' where id_vente=1821;
update ventes set  methode ='Mobile_Money' where id_vente=2238;
UPDATE ventes set statut ='Failed' where id_vente=13977;
UPDATE ventes set statut ='Failed' where id_vente=10854;


            --=============pour la table produits

SELECT *from produits  LIMIT 4;

SELECT * FROM produits where id_produit is NULL or nom_produit is NULL or categorie is 
    NULL OR prix is NULL  or marge is NULL or stock_initial IS NULL ;

 --===================================================================================
-
-=============================DATA MANUPILATION===============

--=============KPI S ======================================= 
--==============POUR LA TABLE CLIENTS================================

--===NOMBRE DES CLIENTS(5000 clients)
select count (id_client)as Effectif_clients from clients

-------------NOMBRE DES CLIENTS PAR PAYS

select DISTINCT pays, count(*) as Effectif from clients
    GROUP BY pays ORDER BY Effectif DESC

--===========EFFECTIF DES CLIENTS BELGE PAR PROVINCE

select distinct ville,count(*) as Effectif from clients
        where pays ='Belgique' group by ville

        --===========EFFECTIF DES CLIENTS CONGOLAIS PAR PROVINCE
  select distinct ville,count(*) as Effectif from clients
        where pays ='RD Congo' group by ville

  --===========EFFECTIF DES CLIENTS CAMEROUNAIS PAR PROVINCE

select distinct ville,count(*) as Effectif from clients
        where pays ='Cameroun' group by ville

-----========EFFECTIF DES CLIENTS CANADIENS PAR PROVINCE

select distinct ville,count(*) as Effectif from clients
        where pays ='Canada' group by ville

----========EFFECTIF DES CLIENTS IVOIRIENS PAR PROVINCE
select distinct ville,count(*) as Effectif from clients
        where pays ='Côte d’Ivoire' group by ville
  ----========EFFECTIF DES CLIENTS FRANCAIS PAR PROVINCE

     select distinct ville,count(*) as Effectif from clients
        where pays ='France' group by ville   

----========EFFECTIF DES CLIENTS GABONAIS PAR PROVINCE
select distinct ville,count(*) as Effectif from clients
        where pays ='Gabon' group by ville   

    ----========EFFECTIF DES CLIENTS SENEGALAIS PAR PROVINCE
select distinct ville,count(*) as Effectif from clients
        where pays ='Sénégal' group by ville  ;

---------- ==u
update distinct ville,count(*) as effectif from clients 
where pays='Bruxelles' group by ville;


----------==EFFECTIF CLIENTS PAR CANAL D'ACQUISITION
SELECT DISTINCT canal_acquisition,count(*)as effectif
from clients group by canal_acquisition 
order by effectif DESC;
--=========================FIN POUR LA TABLE CLIENTS====================================

=-----========================DEBUT POUR LA TABLE PRODUITS==================================================

SELECT *from produits LIMIT 10;

--==========NOMBRE DISTINCT DES PRODUITS(200 produits distinct)============

select count (distinct nom_produit)as Effectif_produits
from produits

--===========EFFECTIF DES PRODUITS PAR CATEGORIE

select distinct categorie,count (*)as effectif 
from produits GROUP BY categorie 
ORDER BY effectif ASC

--======chiffre d'affaire

select SUM(stock_initial*prix)as chiffre from produits

-----les clasements des produits par son prix

select nom_produit ,prix ,rank() over(order by prix desc )as 
numerons from produits

--les classements des produits par la quantite en stock

select nom_produit,stock_initial,rank()
over(order by stock_initial desc )as classe from produits
--===========================FIN POUR LA TABLE PRODUITS==================================

--=============================DEBUT POUR LA TABLE VENTES=======================

select *from ventes LIMIT 10;
---METHODE DISTINCT de payement

     SELECT distinct methode from ventes

---EFFECTIF DES VENTES REUSSI(12749)

select COUNT(*) from ventes where statut='Success'

---EFFECTIF DES VENTES ECHOUEES(1497)

select COUNT(*) from ventes where statut='Failed'

---EFFECTIF DES VENTES REUSSI METHODE

select distinct methode,count(*) from ventes 
where statut='Success' group by methode
order by count desc

--EFFECTIF DES VENTES ECHOUEEs METHODE

select distinct methode,count(*) from ventes 
where statut='Failed' group by methode
order by count desc

--====NOMBRES DE VENTES EFFECTUEES(15000 ventes effectueus)

SELECT count(id_vente) as Effectif_vente from ventes




   
