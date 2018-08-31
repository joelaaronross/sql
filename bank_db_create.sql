DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;


CREATE TABLE Accounts (
  AccountID                       INT             PRIMARY KEY  AUTO_INCREMENT,
  Account_Holder           VARCHAR(64)     NOT NULL,
  balance                  DECIMAL(15,2)   NOT NULL,
  fees                     DECIMAL(15,2)   NOT NULL
);

CREATE TABLE Transactions (
  TransactionID               INT              PRIMARY KEY   AUTO_INCREMENT,
  amount           DECIMAL(15,2)    NOT NULL,
  txn_type         VARCHAR(32)      NOT NULL,
  Account_ID        INT              NOT NULL,
  Foreign Key (Account_ID) references Accounts(AccountID)
);

INSERT INTO Accounts VALUES
(1, 'Rachael Baumann', 8888.00, 250.00),
(2, 'Michael Page', 5444.00, 175.00),
(3, 'Angie Snyder', 3333.00, 88.00),
(4, 'Robert Mahoney', 3322.00, 88.00);

-- insert some rows into the Product table
INSERT INTO Transactions VALUES
(1, 500.00, 'Deposit', 3),
(2, -200.00, 'withdrawal', 4),
(3, 200.00, 'Deposit', 4),
(4, 248.00, 'Deposit', 1);


