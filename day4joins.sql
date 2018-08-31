Select Line.ID, OrderNumber, CustomerName, OrderDate, Total
   from 
       Invoice 
    inner join
       LineItem Line
    on Line.ID = ID;