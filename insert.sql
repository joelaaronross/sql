INSERT INTO accounts VALUES
(50, 'Donald Trump', 7777885, 0);

INSERT INTO accounts (Account_Holder, Balance, Fees)
VALUES ('Freddie Mercury', 2450000, 0);

INSERT INTO accounts (Balance, Fees, Account_Holder)
VALUES (2450000, 0, 'Freddie Mercury');

UPDATE accounts
SET Account_Holder = 'Donald J Trump'
WHERE ID = 50;


Select * FROM Accounts
 SET Fees = 100
WHERE balance <= 10000;

select * from accounts
where accountid = 52;

select * from accounts 
where id in (51,51,52,53);

select * from accounts
where account_holder like '%B%';

select distinctb(balance)
from accounts;

insert into accounts values	
(26, 'Robert Plant', 550245, 0);

insert into accounts (Account_Holder,Balance,Fees)
values ('Donald Duck', 2450000, 1);

INSERT INTO accounts (Account_Holder, Balance, Fees)
Values ('Barack Obama', 77, 2); 

Insert into accounts(Account_Holder, Balance, Fees)
values ('Daffy Duck', 25000, 26);

insert into accounts(Account_Holder, Balance, Fees)
values ('Caitlyn Jenner', 50956, 60);

UPDATE accounts
SET Account_Holder = 'Daffy P Duck'
WHERE AccountID = 5;

delete from Accounts
where AccountID = 7	













