Drop Database if exists practice_file;
create database practice_file;
use practice_file;


CREATE TABLE product(
  ID                     INT              UNIQUE PRIMARY KEY  AUTO_INCREMENT,
  TextBook               VARCHAR(50) 	  UNIQUE not null,   
  Price                  INT	          not null
);

INSERT INTO product VALUES 
(1,'Fluid dynamics','250.00'),
(2,'Thermodynamics', '300.00'),
(3, 'Calculus3', '185.00');

CREATE TABLE buyerinformation(
  ID                  	  INT                 PRIMARY KEY  AUTO_INCREMENT,
  TextBook                VARCHAR(50)		  not null,
  Buyer            		  VARCHAR(50)		  not null,    
  ProductID				  INT                 not null,
 Foreign Key (TextBook) references Product(TextBook)
);

INSERT INTO buyerinformation VALUES 
(1,'Thermodynamics', 'Rachael Baumann','2'),
(2,'Thermodynamics', 'John Falconer','2'),
(3,'Calculus3','Neil Hendren','3');

CREATE TABLE invoice(
  ID           		        INT             PRIMARY KEY  AUTO_INCREMENT,
  TextBook 					VARCHAR(50)		not null,
  OrderNumber  				INT		        not null,
  productID					INT				not null,
  
  foreign key (TextBook) references product (TextBook)
);
 
INSERT INTO  Invoice VALUES
(1, 'Fluid dynamics', '123','1'),
(2, 'Thermodynamics', '456','2'),
(3, 'Fluid dynamics', '789','1');



