-- create and select the database
DROP DATABASE IF EXISTS auction_db;
CREATE DATABASE auction_db;
USE auction_db;
-- create the lotter table
CREATE TABLE lotter(
  ID                   INT             PRIMARY KEY  AUTO_INCREMENT,
  Name                 VARCHAR(20) 	   not null
  
);
-- create auction table
CREATE TABLE auction(
  ID                   INT              PRIMARY KEY  AUTO_INCREMENT,
  Title                VARCHAR(255)		not null,
  StartDateTime        DATETIME		    not null,     
  EndDateTime          DATETIME		    not null
  
);

-- create Item table
CREATE TABLE item (
  ID                
(itmstr varchar( 5 ) default 'emp',
itmno int( 5 ) AUTO_INCREMENT PRIMARY KEY ,
);
 
  ItemBrand 				VARCHAR(25)		    not null,    
  ItemDescription   		VARCHAR(255)		not null,  
  MSRP 						DECIMAL(10,2)			not null,
  Model						VARCHAR(255)		not null,
  LoadNumber				INT					not null,
  LotterID					INT					not null,
  AuctionID        			INT			        not null,
  
  FOREIGN KEY (LotterID) REFERENCES Lotter (ID),
  FOREIGN KEY (AuctionID) REFERENCES Auction (ID)
  
);

-- create Image table
CREATE TABLE image (
  ID            	    INT             PRIMARY KEY  AUTO_INCREMENT,
  PictureUrl 	    	VARCHAR(255)		        not null,
  ItemID  				VARCHAR(25)         	    not null,
  
  FOREIGN KEY (ImageID) REFERENCES Image (ID)
  
  );
 
-- insert lotter
INSERT INTO lotter
(ID, Name) 
VALUES 
(41, 'Daniel'),
(42, 'Sherry'),
(43, 'Cody'),
(44, 'Evan'),
(45, 'Tabitha');

-- insert auction
INSERT INTO auction 
(ID, Title, StartDateTime, EndDateTime) 
VALUES 
(1001, 'Awesome Auction',   '2018-06-01 12:00:00', '2018-06-06 12:00:00'),
(1002,	'Great Auction',	'2018-06-02 14:00:00',	'2018-06-07 14:00:00'),
(1003,	'Super Auction',	'2018-06-03 08:00:00',	'2018-06-08 08:00:00'),
(1004,	'Stupendous Auction',	'2018-06-04 20:00:00',	'2018-06-09 20:00:00');

-- insert image
INSERT INTO image 
(ID, PictureUrl, ItemID) 
VALUES 
(1, 	'www.bidfta.com/imageEM86721_1', 'EM86721'),
(2, 	'www.bidfta.com/imageEM86721_2', 'EM86721'),
(3,	    'www.bidfta.com/imageEM86722_3', 'EM86721'),
(4, 	'www.bidfta.com/imageEM86722_4', 'EM86721'),
(5, 	'www.bidfta.com/imageEM86722_5', 'EM86721'),
(6,	    'www.bidfta.com/imageEM86722_6', 'EM86722'),
(7, 	'www.bidfta.com/imageEM86722_7', 'EM86722'),
(8, 	'www.bidfta.com/imageEM86723_8', 'EM86722'),
(9,  	'www.bidfta.com/imageEM86723_9', 'EM86722'),
(10,    'www.bidfta.com/imageEM86723_10', 'EM86722'),
(11,    'www.bidfta.com/imageEM86723_11', 'EM86723'),
(12,	'www.bidfta.com/imageEM86723_12',	'EM86723'),
(13,	'www.bidfta.com/imageEM86724_13',	'EM86723'),
(14,	'www.bidfta.com/imageEM86724_14',	'EM86723'),
(15,	'www.bidfta.com/imageEM86724_15',	'EM86723'),
(16,	'www.bidfta.com/imageEM86724_16',	'EM86724'),
(17,	'www.bidfta.com/imageEM86724_17',	'EM86724'),
(18,	'www.bidfta.com/imageEM86725_18',	'EM86724'),
(19,	'www.bidfta.com/imageEM86725_19',	'EM86724'),
(20,	'www.bidfta.com/imageEM86725_20',	'EM86724'),
(21,	'www.bidfta.com/imageEM86725_21',	'EM86725'),
(22,	'www.bidfta.com/imageEM86725_22',	'EM86725'),
(23,	'www.bidfta.com/imageEM86726_23',	'EM86725'),
(24,	'www.bidfta.com/imageEM86726_24',	'EM86725'),
(25,	'www.bidfta.com/imageEM86726_25',	'EM86725'),
(26,	'www.bidfta.com/imageEM86726_26',	'EM86726'),
(27,	'www.bidfta.com/imageEM86726_27',	'EM86726'),
(28,	'www.bidfta.com/imageEM86727_28',	'EM86726'),
(29,	'www.bidfta.com/imageEM86727_29',	'EM86726'),
(30,	'www.bidfta.com/imageEM86727_30',	'EM86726'),
(31,	'www.bidfta.com/imageEM86727_31',	'EM86727'),
(32,	'www.bidfta.com/imageEM86727_32',	'EM86727'),
(33,	'www.bidfta.com/imageEM86728_33',	'EM86727'),
(34,	'www.bidfta.com/imageEM86728_34',	'EM86727'),
(35,    'www.bidfta.com/imageEM86728_35',	'EM86727'),
(36,	'www.bidfta.com/imageEM86728_36',	'EM86728'),
(37,	'www.bidfta.com/imageEM86728_37',	'EM86728'),
(38,	'www.bidfta.com/imageEM86729_38',	'EM86728'),
(39,	'www.bidfta.com/imageEM86729_39',	'EM86728'),
(40,	'www.bidfta.com/imageEM86729_40',	'EM86728'),
(41,	'www.bidfta.com/imageEM86729_41',	'EM86729'),
(42,	'www.bidfta.com/imageEM86729_42',	'EM86729'),
(43,	'www.bidfta.com/imageEM867210_43',	'EM86729'),
(44,	'www.bidfta.com/imageEM867210_44',	'EM86729'),
(45,	'www.bidfta.com/imageEM867210_45',	'EM86729'),
(46,	'www.bidfta.com/imageEM867210_46',	'EM867210'),
(47,	'www.bidfta.com/imageEM867210_47',	'EM867210'),
(48,	'www.bidfta.com/imageEM867210_48',	'EM867210'),
(49,	'www.bidfta.com/imageEM867211_49',	'EM867210'),
(50,	'www.bidfta.com/imageEM867211_50',	'EM867210'),
(51,    'www.bidfta.com/imageEM867211_51',	'EM867210'),
(52,	'www.bidfta.com/imageEM867211_52',	'EM867211'),
(53,	'www.bidfta.com/imageEM867211_53',	'EM867211'),
(54,	'www.bidfta.com/imageEM867212_54',	'EM867211'),
(55,	'www.bidfta.com/imageEM867212_55',	'EM867211'),
(56,	'www.bidfta.com/imageEM867212_56',	'EM867211'),
(57,	'www.bidfta.com/imageEM867212_57',	'EM867212'),
(58,	'www.bidfta.com/imageEM867212_58',	'EM867212'),
(59,	'www.bidfta.com/imageEM867213_59',	'EM867212'),
(60,	'www.bidfta.com/imageEM867213_60',	'EM867212'),
(61,	'www.bidfta.com/imageEM867213_61',	'EM867212'),
(62,	'www.bidfta.com/imageEM867213_62',	'EM867213'),
(63,	'www.bidfta.com/imageEM867213_63',	'EM867213'),
(64,	'www.bidfta.com/imageEM867214_64',	'EM867213'),
(65,	'www.bidfta.com/imageEM867214_65',	'EM867213'),
(66,	'www.bidfta.com/imageEM867214_66',	'EM867213'),
(67,	'www.bidfta.com/imageEM867214_67',	'EM867214'),
(68,	'www.bidfta.com/imageEM867214_68',	'EM867214'),
(69,	'www.bidfta.com/imageEM867215_69',	'EM867214'),
(70,	'www.bidfta.com/imageEM867215_70',	'EM867214'),
(71,	'www.bidfta.com/imageEM867215_71',	'EM867214'),
(72,	'www.bidfta.com/imageEM867215_72',	'EM867215'),
(73,	'www.bidfta.com/imageEM867215_73',	'EM867215'),
(74,	'www.bidfta.com/imageEM867216_74',	'EM867215'),
(75,	'www.bidfta.com/imageEM867216_75',	'EM867215'),
(76,	'www.bidfta.com/imageEM867216_76',	'EM867215'),
(77,	'www.bidfta.com/imageEM867216_77',	'EM867216'),
(78,	'www.bidfta.com/imageEM867216_78',	'EM867216'),
(79,	'www.bidfta.com/imageEM867217_79',	'EM867216'),
(80,	'www.bidfta.com/imageEM867217_80',	'EM867216'),
(81,	'www.bidfta.com/imageEM867217_81',	'EM867216'),
(82,	'www.bidfta.com/imageEM867217_82',	'EM867217'),
(83,	'www.bidfta.com/imageEM867217_83',	'EM867217'),
(84,	'www.bidfta.com/imageEM867218_84',	'EM867217'),
(85,	'www.bidfta.com/imageEM867218_85',	'EM867217'),
(86,	'www.bidfta.com/imageEM867218_86',	'EM867217'),
(87,	'www.bidfta.com/imageEM867218_87',	'EM867218'),
(88,	'www.bidfta.com/imageEM867218_88',	'EM867218'),
(89,	'www.bidfta.com/imageEM867219_89',	'EM867218'),
(90,	'www.bidfta.com/imageEM867219_90',   'EM867218'),
(91,	'www.bidfta.com/imageEM867219_91',	'EM867218'),
(92,	'www.bidfta.com/imageEM867219_92',	'EM867219'),
(93,	'www.bidfta.com/imageEM867219_93',	'EM867219'),
(94,	'www.bidfta.com/imageEM867220_94',	'EM867219'),
(95,	'www.bidfta.com/imageEM867220_95',	'EM867219'),
(96,	'www.bidfta.com/imageEM867220_96',	'EM867219'),
(97,	'www.bidfta.com/imageEM867220_97',	'EM867220'),
(98,    'www.bidfta.com/imageEM867220_98', 'EM867220'),
(99,	'www.bidfta.com/imageEM867220_99',	'EM867220'),
(100,   'www.bidfta.com/imageEM867220_100',	'EM867220');


-- insert auction
INSERT INTO item
 (ID, ItemBrand, ItemDescription, MSRP, Model, LoadNumber, LotterID, AuctionID) 
VALUES 
('EM86721',	'BUFFALO TOOLS',	'BLACK BULL COS14 14-INCH CUT OFF SAW',	'259.99',	'COS14',	'22960', 45,	1001),
('EM86722',	'DYNA-GLO',	'DYNA-GLO DGO1176BDC-D CHARCOAL OFFSET SMOKER',	'219',	'DGO1176BDC-D',	'22960',	45,	1001),
('EM86723',	'ELKAY',	'ELKAY DSE233194 DAYTON ELITE 20 GAUGE STAINLESS STEEL DOUBLE BOWL TOP MOUNT KITCHEN SINK, 33 X 19 X 8"',	'331',	'DSE233194',	'22960',	45,	1001),
('EM86724',	'EVENFLO',	'EVENFLO POSITION AND LOCK TALL PRESSURE MOUNT WOOD GATE',	'29.99',	'6622100',	'22960',	45,	1001),
('EM86725',	'EVENFLO',	'EVENFLO MULTI-USE DECOR TALL WALK-THRU GATE, BLACK METAL',	'59.99',	'4471110',	'22960',	45,	1002),
('EM86726',	'DELTA CHILDREN',	'DELTA CHILDREN SWEET BEGINNINGS BASSINET, FALLING LEAVES',	'46.72',	'25021-138',	'22960',	44,	1002),
('EM86727',	'DHP',	'DHP 8-INCH INDEPENDENTLY ENCASED COIL FUTON MATTRESS WITH CERTIPUR-US CERTIFIED FOAM, FULL SIZE, BLUE',	'240',	'5424696',	'22960',	44,	1002),
('EM86728',	'DRIVE MEDICAL',	'DRIVE MEDICAL 1239RD TWO WHEELED WALKER WITH SEAT, RED',	'105.56',	'1239RD',	'22960',	44,	1002),
('EM86729',	'DRIVE MEDICAL',	'DRIVE MEDICAL NITRO EURO STYLE RED ROLLATOR WALKER, RED',	'527.8',	'RTL10266',	'22960',	44,	1003),
('EM867210','DUNLOP',	'DUNLOP OUTDOOR SPORTS VOLLEYBALL SET: PORTABLE NET WITH POLES, BALL & AIR PUMP - EQUIPMENT FOR BACKYARD PARTY GAMES - ADJUSTABLE HEIGHT FOR ADULTS OR KIDS, INCOMPLETE', 	'89.99',	'NET100_097D',	'22960',	44,	1003),
('EM867211', 'CARLSON',	'EXTRA TALL GATE EXTENSION 24INCH',	'61.59',	'0950EW',	'22960',	43,	1003),
('EM867212', 'CARLSON',	'EXTRA TALL GATE EXTENSION 24INCH',	'61.59',	'0950EW',	'22960',	43,	1003),
('EM867213', 'CLASSIC BRANDS',	'CLASSIC BRANDS INSTANT FOUNDATION HIGH PROFILE 8-INCH BOX-SPRING REPLACEMENT, FULL',	'108',	'124001-5030',	'22960',	43,	1004),
('EM867214', 'CLASSIC BRANDS',	'CLASSIC BRANDS COOL GEL MEMORY FOAM REPLACEMENT SOFA BED MATTRESS, QUEEN',	'156',	'414803-1152',	'22960',	43,	1004),
('EM867215', 'DELTA CHILDREN',	'DELTA CHILDREN UPHOLSTERED GLIDER SWIVEL ROCKER CHAIR, FLAX',	'399.99',		'22960',	43,	1004),
('EM867216', 'AUTO VENTSHADE',	'AUTO VENTSHADE 194744 IN-CHANNEL VENTVISOR WINDOW DEFLECTOR, 4 PIECE, MISSING 1',	'104.21',	'194744',	'22960',	42,	1004),
('EM867217', 'AXE BAT',	'AXE BAT L169F-32-21 AXE BAT 2018 AVENGE LITE (-11) FAST PITCH SOFTBALL BAT',	'249.99',	'L169F-32-21',	'22960',	42,	1005),
('EM867218', 'BABYBJÖRN',	'BABYBJORN MESH BOUNCER BLISS, COCOA',	'259.95',	'006011US',	'22960',	42,	1005),
('EM867219', 'BARBIE',	'BARBIE DREAMHOUSE',	'199.99',	'CJR47',	'22960',	42,	1005),
('EM867220', 'BIG JOE',	'BIG JOE LARGE FUF FOAM FILLED BEAN BAG CHAIR, COMFORT SUEDE, BLUE',	'201.99',		'22960',	42,	1005);



-- make user.Email unique
CREATE USER auction_db_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON auction_db.* TO auction_db_user@localhost;