Magazin online

Baza de date va contine urmatoarele tabele: Customer, ShoppingBasket, ShoppingBasket_Item, Item, CompanyName, Manufacturer, Warehouse_Item, Warehouse.

Customer: clientii vor avea stocat in baza de date numele, emailul, numarul de telefon si adresa.
ShoppingBasket: contine un ID unic (generat in momentul in care este adaugat un produs in cos) si emailul clientului
ShoppingBasket_Item: contine ID-ul cosului de cumparaturi, produsul adaugat si cantitatea dorita
Item: ID-ul bunurilor disponibile, numele producatorului, numele si adresa firmei care il vinde, pretul produsului, numele produsului si  o descriere scurta a acestuia
CompanyName: numele companiei, adresa, numarul de telefon si site-ul sau
Manufacturer: numele si adresa producatorului
Warehouse_Item: ID-ul depozitului in care se regaseste prdusul, ID-ul produsului, cantitatea disponibila
Warehouse: ID-urile depozitelor, numerele de telefon si adresele acestora

- clientii vor putea vizualiza lista de produse
- clientii vor putea adauga in cos produsele dorite si selecta cantitatea
- in momentul accesarii paginii unui produs, clientii vor primi recomandari similare produsului
- vizitatorii vor putea cauta obiectele dorite


Functii ce vor fi utilizate:
- getRecommended(ID): afiseaza produsele recomandate cand este vizualizata pagina produsului ID
- searchItem(input): cauta numele produsului in lista de produse
- addItem(ID): va fi creat un cos de cumparaturi nou si adaugat in ShoppingBasket, apoi va fi adaugat produsul ID in cos
- deleteItem(ID): va fi sters obiectul din cos; daca cosul este gol, acesta va fi sters
