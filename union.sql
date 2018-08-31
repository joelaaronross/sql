
Select OrderNumber, CustomerName, OrderDate, 
         code, description, ListPrice as 'Unit Price'
   from lineitem li
inner join invoice i
   on InvoiceID = ID
inner join product p
   on ProductID = p.ID;
   
   
   
 