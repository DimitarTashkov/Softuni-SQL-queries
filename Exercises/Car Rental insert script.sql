INSERT INTO Customers
VALUES('AS1234BJ','Dimitar Todorov Ivanov','ulica Varna ','Dupnitsa','3500')
,('BY1234TF','Ivan Georgiev Ivanov','ulica Marica ','Sofia','2800')
,('FAC1234KL','Petar Todorov Petrov','ulica Dunav ','Haskovo','1600')

INSERT INTO Employees
VALUES('Dimitar',' Ivanov','chef','professional cook YUMMY')
,('Ivan',' Georgiev','builder','creative builder' )
,('Petar',' Todorov','programmer','no lifer')

INSERT INTO Categories
VALUES('Cookroom',100.50,702.50,2900.35,185.80)
,('Bulding company',400,2800,12000,750)
,('Gaming team',1005,7500,28500,1895)

INSERT INTO RentalOrders 
VALUES(1,2,50,20,100,120,'2012-03-31','2012-04-01',1,3.75,4.78,'Pending','Road traffic expected')
,(3,1,25,40,250,290,'2006-10-06','2006-10-10',4,5.80,3.2,'Waitlisted','Delay expected due to orders overflow')
,(2,3,30,500,1000,1500,'2023-09-18','2023-10-18',30,6.42,5,'Seized','Need to pay 30 $ fine')

SELECT * FROM RentalOrders