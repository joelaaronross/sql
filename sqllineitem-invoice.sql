Select Line.ID, OrderNumber, CustomerName, OrderDate, Total
   from 
       Invoice 
     join
       LineItem Line
    on LineID = ID;