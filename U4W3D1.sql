/*estrarre tutti i clienti di nome mario */
select *
from clienti
where nome='Mario';

/*estrarre il nome e cognome di chi e nato nel 1982*/
select nome,cognome
from clienti
where anno_nascita=1982;

/*estrarre il numero di fatture  con iva al 20%*/

select count (*) as numero_fatture
from fatture
where iva=20;

/*i prodotti in commercio o in produzione con data di attivazione al 2017*/
select *
from prodotti
where (in_commercio=true or in_produzione=true) and extract(year from data_attivazione)=2017;

/*i dati delle fatture con importo inferiore a 1000 e i dati dei clienti corrispondenti*/
select *
from fatture f, clienti c
where f.id_cliente=c.numero_cliente and f.importo<1000;
/**/

select numero_fattura,importo,iva,data_fatture,denominazione
from fatture fa, fornitori fo
where fa.numero_fornitore=fo.numero_fornitore;


select extract(year from data_fattura) as anno,count(*) as numero_fattura
from fatture
where iva=20
group by extract (year from data_fattura);

select extract(year from data_fattura) as anno,count(*) as numero_fattura
from fatture
where iva=20
group by extract (year from data_fattura);