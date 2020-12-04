INSERT INTO Vendor(VendorId,VendorName,EffectiveStartDate,EffectiveEndDate,Status)VALUES(5,'HP','01.05.2019','01.10.2020','DEACTIVE');
INSERT INTO Vendor(VendorId,VendorName,EffectiveStartDate,Status)VALUES(6,'Avansas','01.01.2018','ACTIVE');

INSERT INTO Item(ItemId,ItemDefinition,CategoryName,SubCategoryName,Status) VALUES (5,'Kek','Ofis-G�da','G�da','ACTIVE');
INSERT INTO Item(ItemId,ItemDefinition,CategoryName,SubCategoryName,Status) VALUES (6,'HP Laptop','IT','Bilgisayar','ACTIVE');
INSERT INTO Item(ItemId,ItemDefinition,CategoryName,SubCategoryName,Status) VALUES (7,'Monitor','IT','Goruntu Cihaz','ACTIVE');
INSERT INTO Item(ItemId,ItemDefinition,CategoryName,SubCategoryName,Status) VALUES (8,'Klavye','IT','Arabirimler','DEACTIVE');

INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (6,6,6,1,2500);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (7,7,5,40,200);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (8,8,5,70,350);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (9,9,8,1,225);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (10,10,3,5,75);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (11,10,2,5,15);

INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(6,'YeniIsbasi',2500,4,'28.11.2020','arasb');
INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(7,'Ofis Ihtiyaclari 3',200,6,'29.11.2020','cana');
INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(8,'Ofis Ihtiyaclari 4',350,4,'30.10.2020','msokmen');
INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(9,'Klavye Bozulmasi',225,1,'30.8.2020','suslut');
INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(10,'Pandemi ihtiyaclari 5',90,3,'11.7.2020','sorhan');


Select * from MainOrdering mo inner join OrderDetail od on mo.order�d=od.order�d;

select * from MainOrdering mo left join Vendor v on mo.vendor_Id=v.VendorId;

select * from OrderDetail Od inner join Item I on od.�tem�d=�.�temId;

Select * from MainOrdering mo 
inner join OrderDetail od on mo.order�d=od.order�d 
inner join Vendor v on mo.vendor_Id=v.VendorId 
inner join Item I on od.�tem�d=�.�temId;


select ORDERNAME from MainOrdering mo inner join vendor v on mo.Vendor_Id=V.vendor�d where vendorId=2;
UNION
Select ORDERNAME from MainOrdering mo inner join OrderDetail od on mo.order�d=od.order�d 
inner join Item I on od.�tem�d=�.�temId where I.subcategoryname='G�da';

select ORDERNAME from MainOrdering mo inner join vendor v on mo.Vendor_Id=V.vendor�d where vendorId=2;
UNION ALL
Select ORDERNAME from MainOrdering mo inner join OrderDetail od on mo.order�d=od.order�d 
inner join Item I on od.�tem�d=�.�temId;

select ItemId from OrderDetail where lineprice>300;
UNION
Select ItemId from Item where Status='DEACTIVE';

select VendorId from Vendor;
MINUS
Select Vendor_Id from MainOrdering where OrderId=9;

/*Merhabalar. Ge�en hafta cumartesi g�nk� derse vize haftam oldu�u i�in kat�lamad�m. Bu hafta i�inde de s�navlardan ba��m� kald�ramad�m.
Birazc�k dersi h�zl� h�zl� izlemeye �al��t�m ama fonksiyondan kast�n ne oldu�unu anlayamad�m. Akl�ma sql'deki functions kavram� geldi.
Ama biraz bakt���m kadar�yla bu de�il gibi duruyor. �devi bir dahaki hafta i�ine ekleme �ans�m var m�d�r? :)
Her �ey i�in te�ekk�r ederim.*/
