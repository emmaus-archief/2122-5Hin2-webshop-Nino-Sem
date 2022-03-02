--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY autoincrement,
  artikelcode VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  adviesprijs NUMERIC (10, 2),
  gewicht VARCHAR (255),
  voorraad_id INTEGER
);

  CREATE TABLE winkels (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  winkelcode varchar(15),
  name VARCHAR(255),
  filiaal TEXT
);

  CREATE TABLE artikel_winkel (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  artikelcode varchar(15),
  winkelcode varchar(15)
  );

  CREATE TABLE voorraad (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  artikel_winkel_id INTEGER,
  voorraad TEXT
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Piano Yamaha P-127', 'Yamaha P-125 is de opvolger van de succesvolle Yamaha P-115, deze piano komt met nieuwe functies zoals drumtracks, vleugelklanken en nog meer.', '100435', 849.99, 950, '16 kg');
insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Ibanez Guitar', 'Ibanez houten elektrische Guitar', '077030122-3', 150, 230, '3.9 kg');
insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Fender Guitar', 'Ibanez Fender Guitar, elektrisch', '445924201-X', 350, 400, '15 kg');
insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Devine PRO Koptelefoon', 'Bluetooth headphone', '693155505-7', 40, 60, '1.1');
insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Yamaha Stage shellset Pure White Drum', 'Volledig drumstel', '686928463-6', 780, 900, '50 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Fazley elektrische basgitaar rood', 'Basgitaar Rood', '492662523-7', 80, 110, '5 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('LaPaz C30BK klassieke gitaar zwart + statief + accessoires', 'LaPaz biedt met de C30 een uitstekende optie voor iedereen die kennis wil maken met de klassieke gitaar. Bovendien maak je met deze vriendelijk geprijsde nylon-snarige gitaar direct een goede start. Dit model is namelijk opgebouwd uit een sparrenhouten bovenblad met zij- en achterkanten van lindehout (basswood). Hierdoor kun je rekenen op een gebalanceerde klank met voldoende helderheid en een warme basisklank. Er is gekozen voor een zijdeglans afwerking voor zowel de body en de hals. Dit ziet er niet alleen bijzonder chic uit, het draagt ook bij aan een hoger speelcomfort. Deze versie in 4/4-formaat is geschikt voor kinderen en volwassenen vanaf 12 jaar oud. Inclusief statief, voetenbankje, clip-on tuner en een capo.', '492662523-7', 120, 130, '3.9 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('Medeli GRAND510 Black digitale vleugel', 'De Medeli GRAND510 is een baby grand piano, wat betekent dat deze digitale piano met zijn vleugelbehuizing zeer geschikt is voor thuisgebruik. Dit K8 triple sensor keyboard geeft je bovendien de klank en feel van een grand piano. Zo komt het getrouwe speelgevoel door de 88 toetsen met hammer action. Door de sensoren wordt de release op 3 plekken vastgelegd, wat ervoor zorgt dat muziekstukken in verschillende tempos correct worden doorgegeven. Gecombineerd met de polyfonie van 256 kun je er vanuit gaan dat je alles wat op de toetsen losgaat ook daadwerkelijk terugkrijgt.', '492662523-7', 80, 110, '115 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('test 3', 'test 3', '492662523-7', 80, 110, '10 kg');

insert into products (name, description, artikelcode, price, adviesprijs, gewicht) values ('test 4', 'test 4', '492662523-7', 80, 110, '10 kg');

insert into winkels (winkelcode,name) values ('ROT', 'Rotterdam');
insert into winkels (winkelcode,name) values ('UTR','Utrecht');
insert into winkels (winkelcode,name) values ('AMS', 'Amsterdam');
insert into winkels (winkelcode,name) values ('GR', 'Groningen');
insert into winkels (winkelcode,name) values ('LIM','Limburg');

insert into artikel_winkel (artikelcode, winkelcode) values ('100435','ROT');
insert into artikel_winkel (artikelcode, winkelcode) values ('100435','UTR');
insert into artikel_winkel (artikelcode, winkelcode) values ('077030122-3','AMS');
insert into artikel_winkel (artikelcode, winkelcode) values ('077030122-3', 'LIM');

  
insert into voorraad (artikel_winkel_id ,name) values (1,'ja');
insert into voorraad (artikel_winkel_id ,name) values (2,'nee');
insert into voorraad (artikel_winkel_id ,name) values (3,'binnekort');
insert into voorraad (artikel_winkel_id ,name) values (4,'binnekort');
