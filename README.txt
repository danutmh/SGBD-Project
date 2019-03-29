Magazin online

Baza de date va contine urmatoarele tabele: Customer, ShoppingBasket, ShoppingBasket_Item, Item, RecommendedItem, CompanyName, Manufacturer, Warehouse_Item, Warehouse.

Customer: email (cheie primara), numele, numarul de telefon si adresa.
ShoppingBasket: ShoppingBasketID (cheie primara) si emailul clientului
ShoppingBasket_Item: ID-ul cosului de cumparaturi(cheie straina), ID produs adaugat (cheie straina) si cantitatea dorita
Item: ID-ul bunurilor disponibile (cheie straina), categorie, descriere, numele producatorului, numele firmei care il vinde, pretul produsului, numele produsului si  o descriere scurta a acestuia
RecommendedItem: ID-ul produsului initial, ID-ul produsului recomandat
CompanyName: CompanyID (cheie primara), numele companiei, adresa, numarul de telefon si site-ul sau
Manufacturer: ManufacturerID (cheie primara) numele si adresa producatorului
Warehouse_Item: ID-ul depozitului in care se regaseste prdusul (cheie straina), ID-ul produsului (cheie primara), cantitatea disponibila
Warehouse: ID-urile depozitelor (cheie primara), numerele de telefon si adresele acestora

- clientii vor putea vizualiza lista de produse
- clientii vor putea adauga in cos produsele dorite si selecta cantitatea
- in momentul accesarii paginii unui produs, clientii vor primi recomandari similare produsului
- vizitatorii vor putea cauta obiectele dorite


Functii ce vor fi utilizate:
- getRecommended(ID): afiseaza produsele recomandate cand este vizualizata pagina produsului ID
- searchItem(input): cauta numele produsului in lista de produse
- addItem(ID): va fi creat un cos de cumparaturi nou si adaugat in ShoppingBasket, apoi va fi adaugat produsul ID in cos
- deleteItem(ID): va fi sters obiectul din cos; daca cosul este gol, acesta va fi sters
- saleItem(ID,procent,durata): va updata pretul pentru un item din tabela Item pentru o perioada stabilita permanent\temporar
- saleCategory(IDCategory,procent,durata): va updata preturile pentru o intreaga categorie Item pentru o perioada stabilita permanent\temporar
- voucher
- bonusItem(ID1,ID2): la adaugarea unui produs in cos, se va adauga un alt produs fara cost\cost redus


4NF demonstratie:
Fiecare tabel are o singura cheie primara.    }
Fiecare atribut depinde de cheia sa primara.  } => Baza de date este in 4NF.
