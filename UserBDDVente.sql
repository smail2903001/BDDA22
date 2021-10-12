SELECT extract(YEAR FROM datecommande)      AS ANN ,
  SUM(prixunitaire*quantite*(1-remise/100)) AS CA
FROM commandes ,
  lignecommandes ,
  produits
WHERE commandes.idcommande  =lignecommandes.idcommande
AND lignecommandes.IDPRODUIT=lignecommandes.idproduit
GROUP BY extract(YEAR FROM datecommande);




select clients.idclient, societe , extract(year from datecommande) as ANN , 
SUM(prixunitaire*quantite*(1-remise/100)) as CA 
from clients , commandes , lignecommandes, produits
where clients.idclient=commandes.idcommande
and commandes.idcommande=lignecommandes.idocmmande
and lignecommandes.idproduit=produits.idproduit
group by clients.idclient , societe , extract(year from datecommande);