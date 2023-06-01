-- Multi-Table Sorgu Pratiği

-- Tüm ürünler(product) için veritabanındaki ProductName ve CategoryName'i listeleyin. (77 kayıt göstermeli)

select p.ProductName, c.CategoryName from Product as p
join Category as c on c.Id = p.CategoryId

-- 9 Ağustos 2012 öncesi verilmiş tüm siparişleri(order) için sipariş id'si (Id) ve gönderici şirket adını(CompanyName)'i listeleyin. (429 kayıt göstermeli)

SELECT o.Id as 'OrderId', c.CompanyName as 'SirketAdi' FROM [Order] as o 
JOIN Customer as c ON c.Id = o.CustomerId WHERE o.OrderDate < '2012-08-09'

-- Id'si 10251 olan siparişte verilen tüm ürünlerin(product) sayısını ve adını listeleyin. ProdcutName'e göre sıralayın. (3 kayıt göstermeli)
SELECT COUNT(p.ProductName), p.ProductName FROM [OrderDetail] as o JOIN Product as p on  p.Id = o.ProductId 
 WHERE OrderId = 10251 ORDER BY p.ProductName
-- Her sipariş için OrderId, Müşteri'nin adını(Company Name) ve çalışanın soyadını(employee's LastName). Her sütun başlığı doğru bir şekilde isimlendirilmeli. (16.789 kayıt göstermeli)

SELECT o.id, c.CompanyName, e.LastName FROM [Order] o join Customer c on o.CustomerId = c.id join Employee e on e.Id = o.EmployeeId
