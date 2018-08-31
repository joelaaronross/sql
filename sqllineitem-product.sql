Select Line.ID, Code, Description, ListPrice
   from 
       Product 
    inner join
       LineItem Line
    on Line.ID = ID;