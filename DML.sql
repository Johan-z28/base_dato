-- Insertar Datos Fake creaados por la IA

INSERT INTO tbl_promotions
(id_promotions, description, discount, start_date, end_date, state)
VALUES
(1,'Martes a mitad de precio',50,'2026-01-01','2026-12-31',TRUE),
(2,'Jueves a mitad de precio',50,'2026-01-01','2026-12-31',TRUE),
(3,'Descuento estudiantes',25,'2026-01-01','2026-12-31',TRUE),
(4,'Combo familiar',15,'2026-01-01','2026-12-31',TRUE),
(5,'Film-Fans Premium',20,'2026-01-01','2026-12-31',TRUE);

INSERT INTO tbl_genders VALUES
('M','Masculino'),
('F','Femenino'),
('O','Otro');

INSERT INTO tbl_cities VALUES
('MED001','Medellín'),
('BOG001','Bogotá'),
('CAL001','Cali'),
('BAR001','Barranquilla'),
('CAR001','Cartagena');

INSERT INTO tbl_categories VALUES
(1,'Acción'),
(2,'Comedia'),
(3,'Drama'),
(4,'Terror'),
(5,'Animación'),
(6,'Ciencia Ficción'),
(7,'Romance'),
(8,'Aventura');

INSERT INTO tbl_prices VALUES
('P001','General',18000),
('P002','Niño',12000),
('P003','Estudiante',14000),
('P004','Adulto Mayor',13000),
('P005','VIP',28000);

INSERT INTO tbl_typeCustomers VALUES
(1,'Adulto','Cliente regular',NULL),
(2,'Menor','Menor de edad',NULL),
(3,'Estudiante','Cliente con carné',3),
(4,'Film-Fans','Cliente frecuente',5),
(5,'Adulto+','Adulto mayor',NULL);

INSERT INTO tbl_places VALUES
('PL001','Filmex El Tesoro','MED001','Cra 25A #1A Sur-45'),
('PL002','Filmex Oviedo','MED001','Cra 43A #6 Sur-15'),
('PL003','Filmex Unicentro','BOG001','Av 15 #124-30'),
('PL004','Filmex Caribe Plaza','CAR001','Cra 71 #29-56'),
('PL005','Filmex Chipichape','CAL001','Av 6N #37-25');

INSERT INTO tbl_movies VALUES
('MV001','Avengers Secret Wars',1,180,'2026-05-01','+13'),
('MV002','Toy Story 5',5,105,'2026-06-15','ATP'),
('MV003','The Conjuring 4',4,125,'2026-07-10','+18'),
('MV004','Avatar 3',6,190,'2026-08-20','+13'),
('MV005','Fast X Part 2',1,145,'2026-09-05','+13'),
('MV006','Lilo & Stitch',5,100,'2026-10-01','ATP'),
('MV007','Misión Imposible 9',1,150,'2026-11-01','+13'),
('MV008','Frozen 3',5,110,'2026-12-01','ATP');

INSERT INTO tbl_customers
(id_customers,name,lastname,email,telephone,id_genders,birthdate,id_typeCustomers)
VALUES
(1,'Juan','Gómez','juan@gmail.com','3101111111','M','1995-03-12',1),
(2,'María','López','maria@gmail.com','3201111111','F','1998-05-10',3),
(3,'Carlos','Ramírez','carlos@gmail.com','3151111111','M','1988-01-15',4),
(4,'Valentina','Torres','vale@gmail.com','3001111111','F','2011-08-20',2),
(5,'Andrés','Restrepo','andres@gmail.com','3011111111','M','1970-07-04',5),
(6,'Sofía','Martínez','sofia@gmail.com','3121111111','F','2000-09-17',1),
(7,'Mateo','Vargas','mateo@gmail.com','3131111111','M','2002-11-25',3),
(8,'Isabella','García','isa@gmail.com','3141111111','F','1997-04-06',4),
(9,'Samuel','Castaño','samuel@gmail.com','3161111111','M','2012-02-01',2),
(10,'Alex','Rodríguez','alex@gmail.com','3171111111','O','1994-10-22',1);

INSERT INTO tbl_employees
(id_employees,name,last_name,email,id_places,post,state)
VALUES
(1,'Laura','Jiménez','laura@filmex.com','PL001','Gerente',TRUE),
(2,'Daniel','Castro','daniel@filmex.com','PL001','Cajero',TRUE),
(3,'Camila','Rojas','camila@filmex.com','PL002','Cajero',TRUE),
(4,'Sebastián','Moreno','sebastian@filmex.com','PL003','Gerente',TRUE),
(5,'Natalia','Vélez','natalia@filmex.com','PL004','Supervisor',TRUE),
(6,'Felipe','Arango','felipe@filmex.com','PL005','Cajero',TRUE);

INSERT INTO tbl_rooms VALUES
(1,120,'2D','PL001'),
(2,80,'3D','PL001'),
(3,150,'IMAX','PL002'),
(4,100,'2D','PL003'),
(5,90,'3D','PL004'),
(6,140,'IMAX','PL005');

INSERT INTO tbl_seats (id_rooms,seat_number) VALUES
(1,'A01'),(1,'A02'),(1,'A03'),(1,'A04'),(1,'A05'),
(1,'B01'),(1,'B02'),(1,'B03'),(1,'B04'),(1,'B05'),

(2,'A01'),(2,'A02'),(2,'A03'),(2,'A04'),(2,'A05'),
(2,'B01'),(2,'B02'),(2,'B03'),(2,'B04'),(2,'B05'),

(3,'A01'),(3,'A02'),(3,'A03'),(3,'A04'),(3,'A05'),
(3,'B01'),(3,'B02'),(3,'B03'),(3,'B04'),(3,'B05'),

(4,'A01'),(4,'A02'),(4,'A03'),(4,'A04'),(4,'A05'),
(4,'B01'),(4,'B02'),(4,'B03'),(4,'B04'),(4,'B05'),

(5,'A01'),(5,'A02'),(5,'A03'),(5,'A04'),(5,'A05'),
(5,'B01'),(5,'B02'),(5,'B03'),(5,'B04'),(5,'B05'),

(6,'A01'),(6,'A02'),(6,'A03'),(6,'A04'),(6,'A05'),
(6,'B01'),(6,'B02'),(6,'B03'),(6,'B04'),(6,'B05');

INSERT INTO tbl_functions VALUES
('F00001','2026-06-10','14:00:00','MV001',1,'P001',NULL),
('F00002','2026-06-10','17:00:00','MV001',1,'P001',1),
('F00003','2026-06-11','16:00:00','MV002',2,'P002',NULL),
('F00004','2026-06-11','20:00:00','MV003',3,'P005',NULL),
('F00005','2026-06-12','19:00:00','MV004',4,'P001',NULL),
('F00006','2026-06-12','21:00:00','MV005',5,'P001',2),
('F00007','2026-06-13','15:00:00','MV006',6,'P002',NULL),
('F00008','2026-06-13','18:00:00','MV007',1,'P001',NULL),
('F00009','2026-06-14','20:00:00','MV008',2,'P002',NULL),
('F00010','2026-06-14','22:00:00','MV003',3,'P005',NULL),
('F00011','2026-06-15','15:00:00','MV004',4,'P001',NULL),
('F00012','2026-06-15','18:00:00','MV005',5,'P001',NULL),
('F00013','2026-06-16','20:00:00','MV001',6,'P005',1),
('F00014','2026-06-16','16:00:00','MV002',1,'P002',NULL),
('F00015','2026-06-17','19:00:00','MV007',2,'P001',NULL);

INSERT INTO tbl_tickets (id_tickets,serial_number) VALUES
(1,'FLX-2026-000001'),
(2,'FLX-2026-000002'),
(3,'FLX-2026-000003'),
(4,'FLX-2026-000004'),
(5,'FLX-2026-000005'),
(6,'FLX-2026-000006'),
(7,'FLX-2026-000007'),
(8,'FLX-2026-000008'),
(9,'FLX-2026-000009'),
(10,'FLX-2026-000010'),
(11,'FLX-2026-000011'),
(12,'FLX-2026-000012'),
(13,'FLX-2026-000013'),
(14,'FLX-2026-000014'),
(15,'FLX-2026-000015'),
(16,'FLX-2026-000016'),
(17,'FLX-2026-000017'),
(18,'FLX-2026-000018'),
(19,'FLX-2026-000019'),
(20,'FLX-2026-000020');

INSERT INTO tbl_sales
(id_sales,id_customers,id_places,id_employees,status)
VALUES
(1,1,'PL001',2,'Completada'),
(2,2,'PL001',2,'Completada'),
(3,3,'PL002',3,'Completada'),
(4,4,'PL003',4,'Completada'),
(5,5,'PL004',5,'Completada'),
(6,6,'PL005',6,'Completada'),
(7,7,'PL001',1,'Completada'),
(8,8,'PL002',3,'Completada'),
(9,9,'PL003',4,'Completada'),
(10,10,'PL005',6,'Completada'),
(11,1,'PL001',2,'Completada'),
(12,2,'PL002',3,'Completada'),
(13,3,'PL003',4,'Completada'),
(14,4,'PL004',5,'Completada'),
(15,5,'PL005',6,'Completada'),
(16,6,'PL001',1,'Completada'),
(17,7,'PL002',3,'Completada'),
(18,8,'PL003',4,'Completada'),
(19,9,'PL004',5,'Completada'),
(20,10,'PL005',6,'Completada');

INSERT INTO tbl_payments
(id_payments,id_sales,payment_method,value)
VALUES
('PAY00001',1,'Tarjeta crédito',18000),
('PAY00002',2,'Nequi',9000),
('PAY00003',3,'Tarjeta débito',12000),
('PAY00004',4,'Tarjeta crédito',28000),
('PAY00005',5,'Efectivo',18000),
('PAY00006',6,'Nequi',9000),
('PAY00007',7,'Tarjeta crédito',12000),
('PAY00008',8,'Efectivo',18000),
('PAY00009',9,'Tarjeta débito',12000),
('PAY00010',10,'Daviplata',18000),
('PAY00011',11,'Tarjeta crédito',28000),
('PAY00012',12,'Nequi',12000),
('PAY00013',13,'Tarjeta débito',18000),
('PAY00014',14,'Efectivo',18000),
('PAY00015',15,'Tarjeta crédito',9000),
('PAY00016',16,'Nequi',18000),
('PAY00017',17,'Tarjeta débito',12000),
('PAY00018',18,'Efectivo',18000),
('PAY00019',19,'Daviplata',28000),
('PAY00020',20,'Tarjeta crédito',18000);

INSERT INTO tbl_detailTickets
(id_detailTickets,id_seats,id_sales,id_tickets,id_functions,id_prices,price_applied,id_promotions)
VALUES
(1,1,1,1,'F00001','P001',18000,NULL),
(2,2,2,2,'F00002','P001',9000,1),
(3,11,3,3,'F00003','P002',12000,NULL),
(4,21,4,4,'F00004','P005',28000,NULL),
(5,31,5,5,'F00005','P001',18000,NULL),
(6,41,6,6,'F00006','P001',9000,2),
(7,51,7,7,'F00007','P002',12000,NULL),
(8,3,8,8,'F00008','P001',18000,NULL),
(9,12,9,9,'F00009','P002',12000,NULL),
(10,22,10,10,'F00010','P005',28000,NULL),

(11,32,11,11,'F00011','P001',18000,NULL),
(12,42,12,12,'F00012','P001',18000,NULL),
(13,52,13,13,'F00013','P005',14000,1),
(14,4,14,14,'F00014','P002',12000,NULL),
(15,13,15,15,'F00015','P001',18000,NULL),

(16,5,16,16,'F00001','P001',18000,NULL),
(17,14,17,17,'F00003','P002',12000,NULL),
(18,23,18,18,'F00004','P005',28000,NULL),
(19,33,19,19,'F00005','P001',18000,NULL),
(20,43,20,20,'F00006','P001',9000,2);

SELECT * FROM tbl_detailTickets