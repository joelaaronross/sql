-- inner join
Select Account_Holder, Balance, Fees, Amount, Txn_Type
   from 
       accounts 
    inner join
       transactions
    on accountID = Account_ID;
    -- on a.ID = t.AccountID;
    
    -- left outer join
    select Account_Holder, Balance, Fees, Amount, Txn_Type
         from accounts
         left outer join transactions
         on accountID = Account_ID;