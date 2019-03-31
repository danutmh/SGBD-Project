DROP TABLE Item CASCADE CONSTRAINTS
/
DROP TABLE CompanyName CASCADE CONSTRAINTS
/
DROP TABLE Manufacturer CASCADE CONSTRAINTS
/
DROP TABLE RecommendedItem CASCADE CONSTRAINTS 
/
DROP TABLE Warehouse CASCADE CONSTRAINTS
/
DROP TABLE Warehouse_Item CASCADE CONSTRAINTS
/
DROP TABLE ShoppingBasket CASCADE CONSTRAINTS
/
DROP TABLE ShoppingBasket_Item CASCADE CONSTRAINTS
/
DROP TABLE Customer CASCADE CONSTRAINTS
/

CREATE TABLE Item (
	ID INT NOT NULL FOREIGN KEY (ID) REFERENCES Warehouse_Item(ID),
	Manufacturer varchar(255),
	Company varchar(255),
	fk_item_Manufacturer varchar(255) FOREIGN KEY (Manufacturer) REFERENCES Manufacturer(Name),
	fk_item_CompanyName varchar(255) FOREIGN KEY (CompanyName) REFERENCES CompanyName(Name),
	ItemName varchar(255) NOT NULL,
	Price numeric(19,0) NOT NULL,
	Description varchar(255)
)
/

CREATE TABLE Company (
	Name varchar(255) NOT NULL PRIMARY KEY,
	Adress varchar(255) NOT NULL,
	Phone varchar(255) NOT NULL,
	URL varchar(255)
)
/

CREATE TABLE Manufacturer (
	Name varchar(255) NOT NULL PRIMARY KEY
	Adress varchar(255) NOT NULL
)
/

CREATE TABLE RecommendedItem (
	ID INT NOT NULL PRIMARY KEY,
	IDrecommended INT NOT NULL
)
/

CREATE TABLE Warehouse_Item (
	ID INT NOT NULL PRIMARY KEY,
	Counter INT NOT NULL
    WarehouseCode INT NOT NULL FOREIGN KEY (WarehouseCode) REFERENCES Warehouse(WarehouseCode),
	
)
/

CREATE TABLE Warehouse (
	WarehouseCode INT NOT NULL PRIMARY KEY,
	Phone varchar(255) NOT NULL,
	Address varchar(255) NOT NULL
)
/

CREATE TABLE ShoppingBasket (
	ShoppingBasketID INT NOT NULL PRIMARY KEY,
	CustomerEmail varchar(255) NOT NULL FOREIGN KEY (CustomerEmail) REFERENCES Customer(Email)
)
/

CREATE TABLE ShoppingBasket_Item (
	ShoppingBasketID INT NOT NULL FOREIGN KEY (ShoppingBasketID) REFERENCES ShoppingBasket(ShoppingBasketID),
	ID INT NOT NULL FOREIGN KEY (ID) REFERENCES Warehouse_Item(ID),
	Counter INT NOT NULL
)

CREATE TABLE Customer (
	Email varchar(255) NOT NULL PRIMARY KEY,
	Name varchar(255) NOT NULL,
	Phone varchar(255),
	Address varchar(255)
)
/


SET serveroutput ON
DECLARE
  TYPE varr IS VARRAY(1000) OF varchar2(255);
  lista_produse varr := varr('Couch','Dishes','Silverware','Pots','Television','Laptop','Table','Chairs','Bed','Pillow','Lamp','Paper','Flashlight');--13
  lista_companii varr:= varr('The Alpine Group, Inc.','Amazon.com, Inc.','AMC Entertainment Inc.','American Power Conversion Corporation','Amerada Hess Corporation','AMERCO','Ameren Corporation','America West Holdings Corporation','General Dynamics Corporation','General Electric Company','General Mills Inc','General Motors Corporation','Genesis Health Ventures Inc.'); --13
  lista_producatori varr := varr('The Alpine Group, Inc.','Amazon.com, Inc.','AMC Entertainment Inc.','American Power Conversion Corporation','Amerada Hess Corporation','AMERCO','Ameren Corporation','America West Holdings Corporation','General Dynamics Corporation','General Electric Company','General Mills Inc','General Motors Corporation','Genesis Health Ventures Inc.');
  lista_adrese varr := varr('Colorado','Washington','California','New Orleans','Shanghai','Kiev','Venice','Victoria','London','Bucharest','Budapest','Bruxelles','New York');
  lista_url varr := varr('.net','.org','.gov','.io','.com');
  lista_Wnume varr := varr('Joe','Shmoe','Gutter','Munchkin','Oil','Zoom','Scrow','Brah');--8
  lista_nume varr := varr('Ababei','Acasandrei','Adascalitei','Afanasie','Agafitei','Agape','Aioanei','Alexandrescu','Alexandru','Alexe','Alexii','Amarghioalei','Ambroci','Andonesei','Andrei','Andrian','Andrici','Andronic','Andros','Anghelina','Anita','Antochi','Antonie','Apetrei','Apostol','Arhip','Arhire','Arteni','Arvinte','Asaftei','Asofiei','Aungurenci','Avadanei','Avram','Babei','Baciu','Baetu','Balan','Balica','Banu','Barbieru','Barzu','Bazgan','Bejan','Bejenaru','Belcescu','Belciuganu','Benchea','Bilan','Birsanu','Bivol','Bizu','Boca','Bodnar','Boistean','Borcan','Bordeianu','Botezatu','Bradea','Braescu','Budaca','Bulai','Bulbuc-aioanei','Burlacu','Burloiu','Bursuc','Butacu','Bute','Buza','Calancea','Calinescu','Capusneanu','Caraiman','Carbune','Carp','Catana','Catiru','Catonoiu','Cazacu','Cazamir','Cebere','Cehan','Cernescu','Chelaru','Chelmu','Chelmus','Chibici','Chicos','Chilaboc','Chile','Chiriac','Chirila','Chistol','Chitic','Chmilevski','Cimpoesu','Ciobanu','Ciobotaru','Ciocoiu','Ciofu','Ciornei','Citea','Ciucanu','Clatinici','Clim','Cobuz','Coca','Cojocariu','Cojocaru','Condurache','Corciu','Corduneanu','Corfu','Corneanu','Corodescu','Coseru','Cosnita','Costan','Covatariu','Cozma','Cozmiuc','Craciunas','Crainiceanu','Creanga','Cretu','Cristea','Crucerescu','Cumpata','Curca','Cusmuliuc','Damian','Damoc','Daneliuc','Daniel','Danila','Darie','Dascalescu','Dascalu','Diaconu','Dima','Dimache','Dinu','Dobos','Dochitei','Dochitoiu','Dodan','Dogaru','Domnaru','Dorneanu','Dragan','Dragoman','Dragomir','Dragomirescu','Duceac','Dudau','Durnea','Edu','Eduard','Eusebiu','Fedeles','Ferestraoaru','Filibiu','Filimon','Filip','Florescu','Folvaiter','Frumosu','Frunza','Galatanu','Gavrilita','Gavriliuc','Gavrilovici','Gherase','Gherca','Ghergu','Gherman','Ghibirdic','Giosanu','Gitlan','Giurgila','Glodeanu','Goldan','Gorgan','Grama','Grigore','Grigoriu','Grosu','Grozavu','Gurau','Haba','Harabula','Hardon','Harpa','Herdes','Herscovici','Hociung','Hodoreanu','Hostiuc','Huma','Hutanu','Huzum','Iacob','Iacobuta','Iancu','Ichim','Iftimesei','Ilie','Insuratelu','Ionesei','Ionesi','Ionita','Iordache','Iordache-tiroiu','Iordan','Iosub','Iovu','Irimia','Ivascu','Jecu','Jitariuc','Jitca','Joldescu','Juravle','Larion','Lates','Latu','Lazar','Leleu','Leon','Leonte','Leuciuc','Leustean','Luca','Lucaci','Lucasi','Luncasu','Lungeanu','Lungu','Lupascu','Lupu','Macariu','Macoveschi','Maftei','Maganu','Mangalagiu','Manolache','Manole','Marcu','Marinov','Martinas','Marton','Mataca','Matcovici','Matei','Maties','Matrana','Maxim','Mazareanu','Mazilu','Mazur','Melniciuc-puica','Micu','Mihaela','Mihai','Mihaila','Mihailescu','Mihalachi','Mihalcea','Mihociu','Milut','Minea','Minghel','Minuti','Miron','Mitan','Moisa','Moniry-abyaneh','Morarescu','Morosanu','Moscu','Motrescu','Motroi','Munteanu','Murarasu','Musca','Mutescu','Nastaca','Nechita','Neghina','Negrus','Negruser','Negrutu','Nemtoc','Netedu','Nica','Nicu','Oana','Olanuta','Olarasu','Olariu','Olaru','Onu','Opariuc','Oprea','Ostafe','Otrocol','Palihovici','Pantiru','Pantiruc','Paparuz','Pascaru','Patachi','Patras','Patriche','Perciun','Perju','Petcu','Pila','Pintilie','Piriu','Platon','Plugariu','Podaru','Poenariu','Pojar','Popa','Popescu','Popovici','Poputoaia','Postolache','Predoaia','Prisecaru','Procop','Prodan','Puiu','Purice','Rachieru','Razvan','Reut','Riscanu','Riza','Robu','Roman','Romanescu','Romaniuc','Rosca','Rusu','Samson','Sandu','Sandulache','Sava','Savescu','Schifirnet','Scortanu','Scurtu','Sfarghiu','Silitra','Simiganoschi','Simion','Simionescu','Simionesei','Simon','Sitaru','Sleghel','Sofian','Soficu','Sparhat','Spiridon','Stan','Stavarache','Stefan','Stefanita','Stingaciu','Stiufliuc','Stoian','Stoica','Stoleru','Stolniceanu','Stolnicu','Strainu','Strimtu','Suhani','Tabusca','Talif','Tanasa','Teclici','Teodorescu','Tesu','Tifrea','Timofte','Tincu','Tirpescu','Toader','Tofan','Toma','Toncu','Trifan','Tudosa','Tudose','Tuduri','Tuiu','Turcu','Ulinici','Unghianu','Ungureanu','Ursache','Ursachi','Urse','Ursu','Varlan','Varteniuc','Varvaroi','Vasilache','Vasiliu','Ventaniuc','Vicol','Vidru','Vinatoru','Vlad','Voaides','Vrabie','Vulpescu','Zamosteanu','Zazuleac');
  lista_mail varr := varr('@google.com','@yahoo.com');
  
  BEGIN
  --populare company,manufacturer
     FOR v_i IN 1..13 LOOP

      /*v_produs := lista_produse(TRUNC(DBMS_RANDOM.VALUE(0,lista_produse.count))+1);
      IF (DBMS_RANDOM.VALUE(0,100)<50) THEN      
         v_producator:= lista_producatori(TRUNC(DBMS_RANDOM.VALUE(0,lista_producatori.count))+1);
         v_companie:= lista_companii(TRUNC(DBMS_RANDOM.VALUE(0,lista_companii.count))+1);
        ELSE
         v_producator:= lista_producatori(TRUNC(DBMS_RANDOM.VALUE(0,lista_producatori.count))+1);
         LOOP
         v_companie:= lista_companii(TRUNC(DBMS_RANDOM.VALUE(0,lista_companii.count))+1);
            exit when v_companie==v_producator;
         END LOOP;
       END IF;
 */--pentru tabela item    
             v_producator:= lista_producatori(v_i);
         v_companie:= lista_companii(v_i);
       --nr de telefon
      LOOP
         v_phone := FLOOR(DBMS_RANDOM.VALUE(100,999)) || FLOOR(DBMS_RANDOM.VALUE(100,999)) || FLOOR(DBMS_RANDOM.VALUE(100,999)) || FLOOR(DBMS_RANDOM.VALUE(0,9));
         select count(*) into v_temp from Company where Phone = v_phone;
         exit when v_temp=0;
      END LOOP;
 --adresa companie,producator             
/*        IF (v_companie==v_producator) THEN
            v_Caddress:= v_companie||'_'||lista_adrese(TRUNC(DBMS_RANDOM.VALUE(0,lista_adrese.count))+1);
            v_Maddress:= v_Caddress;
        ELSE
            v_Caddress:= v_companie||'_'||lista_adrese(TRUNC(DBMS_RANDOM.VALUE(0,lista_adrese.count))+1);
            v_Maddress:= v_producator||'_'||lista_adrese(TRUNC(DBMS_RANDOM.VALUE(0,lista_adrese.count))+1);
        END IF;*/
            v_Caddress:= v_companie||'_'||lista_adrese(TRUNC(DBMS_RANDOM.VALUE(0,lista_adrese.count))+1);
            v_Maddress:= v_producator||'_'||lista_adrese(TRUNC(DBMS_RANDOM.VALUE(0,lista_adrese.count))+1);
            v_url:=v_companie||lista_url(TRUNC(DBMS_RANDOM.VALUE(0,lista_url.count))+1);
            insert into Company values(v_companie, v_Caddress, v_phone, v_url);
            insert into Manufacturer values(v_producator,v_Maddress);
        END LOOP;
  --Tabela warehouse
 
    FOR v_i IN 1..20 LOOP
        v_Waddress:= lista_Wnume(TRUNC(DBMS_RANDOM.VALUE(0,lista_url.count))+1)||'&'||lista_Wnume(TRUNC(DBMS_RANDOM.VALUE(0,lista_url.count))+1);
        LOOP
            v_phone := FLOOR(DBMS_RANDOM.VALUE(100,999)) || FLOOR(DBMS_RANDOM.VALUE(100,999)) || FLOOR(DBMS_RANDOM.VALUE(100,999)) || FLOOR(DBMS_RANDOM.VALUE(0,9));
            select count(*) into v_temp from Company where Phone = v_phone;
            select count(*) into v_temp1 from Warehouse where Phone = v_phone;
            exit when v_temp=v_temp1 AND v_temp=0;
        END LOOP;
        insert into Warehouse values (v_i,v_Waddress,v_phone);
    END LOOP;
  
   --Tabela Warehouse_Item
   
   for v_i IN 1..13 LOOP
    insert into Warehouse_Item values (v_i,FLOOR(DBMS_RANDOM.VALUES(1000,9999)));
   END LOOP;
   
   
   --Tabela Customer
   for v-i IN 1..50 LOOP
     v_nume:=lista_nume(TRUNC(DBMS_RANDOM.VALUE(0,lista_nume.count))+1);
     v_email:=v_nume||lista_mail(TRUNC(DBMS_RANDOM.VALUE(0,lsita_mail.count))+1);
        LOOP
            v_phone := FLOOR(DBMS_RANDOM.VALUE(100,999)) || FLOOR(DBMS_RANDOM.VALUE(100,999)) || FLOOR(DBMS_RANDOM.VALUE(1000,9999));
            select count(*) into v_temp from Company where Phone = v_phone;
            select count(*) into v_temp1 from Warehouse where Phone = v_phone;
            select count(*) into v_temp2 from Customer where Phone = v_phone;
            exit when v_temp=v_temp1 AND v_temp1=v_temp2 AND v_temp=0;
        END LOOP;
     insert into Customer values(v_email,v_nume,v_phone,lista_adrese(TRUNC(DBMS_RANDOM.VALUE(0,lista_nume.count))+1);
   END LOOP;
   --Tabela Item
   
   END;
   /