CREATE DATABASE TrabajoFinalIO

Use TrabajoFinalIO

CREATE TABLE Sku(
id_sku int identity primary key,
nombre varchar(25)
);

CREATE TABLE Planta(
id_planta int identity primary key,
nombre varchar(25)
);

CREATE TABLE Almacen(
id_almacen int identity primary key,
nombre varchar(25)
);

CREATE TABLE Semana(
id_semana int identity primary key,
nombre varchar(25)
);

CREATE TABLE Sku_Pla(
id_sku int,
id_planta int,
capacidad float
);

CREATE TABLE Pla_Alm(
id_planta int,
id_almacen int,
costo float
);

CREATE TABLE Sku_Pla_Alm_Sem(
id_sku int,
id_planta int,
id_almacen int,
id_semana int,
solucionX float
);

CREATE TABLE Sku_Alm_Sem(
id_sku int,
id_almacen int,
id_semana int,
solucionY float
);

Use TrabajoFinalIO

ALTER TABLE Sku_Pla
ADD CONSTRAINT FK_SKU FOREIGN KEY(id_sku) REFERENCES Sku(id_sku);
ALTER TABLE Sku_Pla
ADD CONSTRAINT FK_PLANTA FOREIGN KEY(id_planta) REFERENCES Planta(id_planta);

ALTER TABLE Pla_Alm
ADD CONSTRAINT FK_PLANTA_ALM FOREIGN KEY(id_planta) REFERENCES Planta(id_planta);
ALTER TABLE Pla_Alm
ADD CONSTRAINT FK_ALMACEN_PLA FOREIGN KEY(id_almacen) REFERENCES Almacen(id_almacen);

ALTER TABLE Sku_Pla_Alm_Sem
ADD CONSTRAINT FK_SKU_PLA_ALM FOREIGN KEY(id_sku) REFERENCES Sku(id_sku);
ALTER TABLE Sku_Pla_Alm_Sem
ADD CONSTRAINT FK_PLANTA_ALM_SEM FOREIGN KEY(id_planta) REFERENCES Planta(id_planta);
ALTER TABLE Sku_Pla_Alm_Sem
ADD CONSTRAINT FK_ALMACEN_SEM_S FOREIGN KEY(id_almacen) REFERENCES Almacen(id_almacen);
ALTER TABLE Sku_Pla_Alm_Sem
ADD CONSTRAINT FK_SEMANA_SKU_A FOREIGN KEY(id_semana) REFERENCES Semana(id_semana);

ALTER TABLE Sku_Alm_Sem
ADD CONSTRAINT FK_SKU_EM FOREIGN KEY(id_sku) REFERENCES Sku(id_sku);
ALTER TABLE Sku_Alm_Sem
ADD CONSTRAINT FK_ALM FOREIGN KEY(id_almacen) REFERENCES Almacen(id_almacen);
ALTER TABLE Sku_Alm_Sem
ADD CONSTRAINT FK_SEMA FOREIGN KEY(id_semana) REFERENCES Semana(id_semana);

--AGREGAR VALORES A LAS TABLAS PRINCIPALES
-- Agregar datos a la tabla Sku
INSERT INTO Sku (nombre) VALUES 
('Sku 1'), 
('Sku 2');

-- Agregar datos a la tabla Planta
INSERT INTO Planta (nombre) VALUES 
('Huachipa'), 
('Arequipa'), 
('Majes'), 
('Cajamarca'), 
('Trujillo');

-- Agregar datos a la tabla Almacen
INSERT INTO Almacen (nombre) VALUES 
('Lima'), 
('Piura'), 
('Cajamarca'), 
('Chiclayo'), 
('Trujillo'), 
('Tarapoto'), 
('Huancayo'), 
('Ica'), 
('Arequipa'), 
('Cuzco'), 
('Juliaca'), 
('Tacna');

-- Agregar datos a la tabla Semana
INSERT INTO Semana (nombre) VALUES 
('Semana 1'), 
('Semana 2'), 
('Semana 3'), 
('Semana 4'), 
('Semana 5'), 
('Semana 6'), 
('Semana 7'), 
('Semana 8'), 
('Semana 9'), 
('Semana 10'), 
('Semana 11'), 
('Semana 12');

--AGREGAR DATOS A LAS TABLAS COMBINADAS
-- Agregar datos a la tabla Pla_Alm
INSERT INTO Pla_Alm (id_planta, id_almacen, costo) VALUES 
-- Huachipa
(1, 1, 50), (1, 2, 635), (1, 3, 527), (1, 4, 419), (1, 5, 347), (1, 6, 608), (1, 7, 196), (1, 8, 192), (1, 9, 648), (1, 10, 710), (1, 11, 828), (1, 12, 832), 
-- Arequipa
(2, 1, 648), (2, 2, 916), (2, 3, 737), (2, 4, 765), (2, 5, 574), (2, 6, 860), (2, 7, 428), (2, 8, 532), (2, 9, 50), (2, 10, 315), (2, 11, 194), (2, 12, 236), 
-- Majes
(3, 1, 696), (3, 2, 960), (3, 3, 781), (3, 4, 809), (3, 5, 618), (3, 6, 905), (3, 7, 473), (3, 8, 576), (3, 9, 56), (3, 10, 364), (3, 11, 238), (3, 12, 318), 
-- Cajamarca
(4, 1, 527), (4, 2, 156), (4, 3, 50), (4, 4, 121), (4, 5, 85), (4, 6, 332), (4, 7, 513), (4, 8, 719), (4, 9, 914), (4, 10, 754), (4, 11, 838), (4, 12, 1020), 
-- Trujillo
(5, 1, 347), (5, 2, 352), (5, 3, 85), (5, 4, 128), (5, 5, 50), (5, 6, 427), (5, 7, 439), (5, 8, 645), (5, 9, 840), (5, 10, 832), (5, 11, 916), (5, 12, 1098);

-- Agregar datos a la tabla Sku_Alm_Sem
-- Sku 1
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 1, 1, 19139), (1, 1, 2, 18535), (1, 1, 3, 21557), (1, 1, 4, 18132), (1, 1, 5, 21355), (1, 1, 6, 21960), (1, 1, 7, 17729), (1, 1, 8, 18736), (1, 1, 9, 22161), (1, 1, 10, 17527), (1, 1, 11, 22363), (1, 1, 12, 21758);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 2, 1, 3349), (1, 2, 2, 3244), (1, 2, 3, 3772), (1, 2, 4, 3173), (1, 2, 5, 3737), (1, 2, 6, 3843), (1, 2, 7, 3103), (1, 2, 8, 3279), (1, 2, 9, 3878), (1, 2, 10, 3067), (1, 2, 11, 3913), (1, 2, 12, 3808);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 3, 1, 2632), (1, 3, 2, 2549), (1, 3, 3, 2964), (1, 3, 4, 2493), (1, 3, 5, 2936), (1, 3, 6, 3019), (1, 3, 7, 2438), (1, 3, 8, 2576), (1, 3, 9, 3047), (1, 3, 10, 2410), (1, 3, 11, 3075), (1, 3, 12, 2992);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 4, 1, 2871), (1, 4, 2, 2780), (1, 4, 3, 3234), (1, 4, 4, 2720), (1, 4, 5, 3203), (1, 4, 6, 3294), (1, 4, 7, 2659), (1, 4, 8, 2810), (1, 4, 9, 3324), (1, 4, 10, 2629), (1, 4, 11, 3354), (1, 4, 12, 3264);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 5, 1, 3589), (1, 5, 2, 3476), (1, 5, 3, 4043), (1, 5, 4, 3400), (1, 5, 5, 4005), (1, 5, 6, 4118), (1, 5, 7, 3325), (1, 5, 8, 3514), (1, 5, 9, 4156), (1, 5, 10, 3287), (1, 5, 11, 4194), (1, 5, 12, 4081);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 6, 1, 2153), (1, 6, 2, 2085), (1, 6, 3, 2425), (1, 6, 4, 2040), (1, 6, 5, 2402), (1, 6, 6, 2470), (1, 6, 7, 1995), (1, 6, 8, 2108), (1, 6, 9, 2493), (1, 6, 10, 1972), (1, 6, 11, 2516), (1, 6, 12, 2448);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 7, 1, 2632), (1, 7, 2, 2549), (1, 7, 3, 2964), (1, 7, 4, 2493), (1, 7, 5, 2936), (1, 7, 6, 3019), (1, 7, 7, 2438), (1, 7, 8, 2576), (1, 7, 9, 3047), (1, 7, 10, 2410), (1, 7, 11, 3075), (1, 7, 12, 2992);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 8, 1, 2153), (1, 8, 2, 2085), (1, 8, 3, 2425), (1, 8, 4, 2040), (1, 8, 5, 2402), (1, 8, 6, 2470), (1, 8, 7, 1995), (1, 8, 8, 2108), (1, 8, 9, 2493), (1, 8, 10, 1972), (1, 8, 11, 2516), (1, 8, 12, 2448);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 9, 1, 3110), (1, 9, 2, 3012), (1, 9, 3, 3503), (1, 9, 4, 2946), (1, 9, 5, 3470), (1, 9, 6, 3568), (1, 9, 7, 2881), (1, 9, 8, 3045), (1, 9, 9, 3601), (1, 9, 10, 2848), (1, 9, 11, 3634), (1, 9, 12, 3536);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 10, 1, 2392), (1, 10, 2, 2317), (1, 10, 3, 2695), (1, 10, 4, 2266), (1, 10, 5, 2669), (1, 10, 6, 2745), (1, 10, 7, 2216), (1, 10, 8, 2342), (1, 10, 9, 2770), (1, 10, 10, 2191), (1, 10, 11, 2795), (1, 10, 12, 2720);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 11, 1, 2153), (1, 11, 2, 2085), (1, 11, 3, 2425), (1, 11, 4, 2040), (1, 11, 5, 2402), (1, 11, 6, 2470), (1, 11, 7, 1995), (1, 11, 8, 2108), (1, 11, 9, 2493), (1, 11, 10, 1972), (1, 11, 11, 2516), (1, 11, 12, 2448);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (1, 12, 1, 1675), (1, 12, 2, 1622), (1, 12, 3, 1886), (1, 12, 4, 1587), (1, 12, 5, 1869), (1, 12, 6, 1921), (1, 12, 7, 1551), (1, 12, 8, 1639), (1, 12, 9, 1939), (1, 12, 10, 1534), (1, 12, 11, 1957), (1, 12, 12, 1904);

-- Sku 2
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 1, 1, 3168), (2, 1, 2, 3068), (2, 1, 3, 3568), (2, 1, 4, 3001), (2, 1, 5, 3534), (2, 1, 6, 3634), (2, 1, 7, 2934), (2, 1, 8, 3101), (2, 1, 9, 3668), (2, 1, 10, 2901), (2, 1, 11, 3701), (2, 1, 12, 3601);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 2, 1, 554), (2, 2, 2, 537), (2, 2, 3, 624), (2, 2, 4, 525), (2, 2, 5, 619), (2, 2, 6, 636), (2, 2, 7, 513), (2, 2, 8, 543), (2, 2, 9, 642), (2, 2, 10, 508), (2, 2, 11, 648), (2, 2, 12, 630);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 3, 1, 436), (2, 3, 2, 422), (2, 3, 3, 491), (2, 3, 4, 413), (2, 3, 5, 486), (2, 3, 6, 500), (2, 3, 7, 403), (2, 3, 8, 426), (2, 3, 9, 504), (2, 3, 10, 399), (2, 3, 11, 509), (2, 3, 12, 495);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 4, 1, 475), (2, 4, 2, 460), (2, 4, 3, 535), (2, 4, 4, 450), (2, 4, 5, 530), (2, 4, 6, 545), (2, 4, 7, 440), (2, 4, 8, 465), (2, 4, 9, 550), (2, 4, 10, 435), (2, 4, 11, 555), (2, 4, 12, 540);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 5, 1, 594), (2, 5, 2, 575), (2, 5, 3, 669), (2, 5, 4, 563), (2, 5, 5, 663), (2, 5, 6, 682), (2, 5, 7, 550), (2, 5, 8, 582), (2, 5, 9, 688), (2, 5, 10, 544), (2, 5, 11, 694), (2, 5, 12, 675);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 6, 1, 356), (2, 6, 2, 345), (2, 6, 3, 401), (2, 6, 4, 338), (2, 6, 5, 398), (2, 6, 6, 409), (2, 6, 7, 330), (2, 6, 8, 349), (2, 6, 9, 413), (2, 6, 10, 326), (2, 6, 11, 416), (2, 6, 12, 405);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 7, 1, 436), (2, 7, 2, 422), (2, 7, 3, 491), (2, 7, 4, 413), (2, 7, 5, 486), (2, 7, 6, 500), (2, 7, 7, 403), (2, 7, 8, 426), (2, 7, 9, 504), (2, 7, 10, 399), (2, 7, 11, 509), (2, 7, 12, 495);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 8, 1, 356), (2, 8, 2, 345), (2, 8, 3, 401), (2, 8, 4, 338), (2, 8, 5, 398), (2, 8, 6, 409), (2, 8, 7, 330), (2, 8, 8, 349), (2, 8, 9, 413), (2, 8, 10, 326), (2, 8, 11, 416), (2, 8, 12, 405);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 9, 1, 515), (2, 9, 2, 498), (2, 9, 3, 580), (2, 9, 4, 488), (2, 9, 5, 574), (2, 9, 6, 591), (2, 9, 7, 477), (2, 9, 8, 504), (2, 9, 9, 596), (2, 9, 10, 471), (2, 9, 11, 601), (2, 9, 12, 585);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 10, 1, 396), (2, 10, 2, 383), (2, 10, 3, 446), (2, 10, 4, 375), (2, 10, 5, 442), (2, 10, 6, 454), (2, 10, 7, 367), (2, 10, 8, 388), (2, 10, 9, 458), (2, 10, 10, 363), (2, 10, 11, 463), (2, 10, 12, 450);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 11, 1, 356), (2, 11, 2, 345), (2, 11, 3, 401), (2, 11, 4, 338), (2, 11, 5, 398), (2, 11, 6, 409), (2, 11, 7, 330), (2, 11, 8, 349), (2, 11, 9, 413), (2, 11, 10, 326), (2, 11, 11, 416), (2, 11, 12, 405);
INSERT INTO Sku_Alm_Sem (id_sku, id_almacen, id_semana, solucionY) VALUES (2, 12, 1, 277), (2, 12, 2, 268), (2, 12, 3, 312), (2, 12, 4, 263), (2, 12, 5, 309), (2, 12, 6, 318), (2, 12, 7, 257), (2, 12, 8, 271), (2, 12, 9, 321), (2, 12, 10, 254), (2, 12, 11, 324), (2, 12, 12, 315);

-- Agregar datos a la tabla Sku_Pla
-- Sku 1
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (1, 1, 22758);
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (1, 2, 6575);
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (1, 3, 4046);
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (1, 4, 6069);
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (1, 5, 11126);

-- Sku 2
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (2, 1, 3767);
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (2, 2, 1088);
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (2, 3, 670);
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (2, 4, 1004);
INSERT INTO Sku_Pla (id_sku, id_planta, capacidad) VALUES (2, 5, 1841);

-- Agregar datos a la tabla Sku_Pla_Alm_Sem
CREATE PROCEDURE InsertSkuPlaAlmSem
AS
BEGIN
    DECLARE @id_sku INT;
    DECLARE @id_planta INT;
    DECLARE @id_almacen INT;
    DECLARE @id_semana INT;
    
    -- Bucle para recorrer cada SKU, planta, almacén y semana
    SET @id_sku = 1;
    WHILE @id_sku <= 2 -- Ajusta según la cantidad de SKU que tengas
    BEGIN
        SET @id_planta = 1;
        WHILE @id_planta <= 5 -- Ajusta según la cantidad de plantas que tengas
        BEGIN
            SET @id_almacen = 1;
            WHILE @id_almacen <= 12 -- Ajusta según la cantidad de almacenes que tengas
            BEGIN
                SET @id_semana = 1;
                WHILE @id_semana <= 12 -- Ajusta según la cantidad de semanas que tengas
                BEGIN
                    -- Insertar en Sku_Pla_Alm_Sem con solucionX como NULL
                    INSERT INTO Sku_Pla_Alm_Sem (id_sku, id_planta, id_almacen, id_semana, solucionX)
                    VALUES (@id_sku, @id_planta, @id_almacen, @id_semana, NULL);
                    
                    SET @id_semana = @id_semana + 1;
                END;
                SET @id_almacen = @id_almacen + 1;
            END;
            SET @id_planta = @id_planta + 1;
        END;
        SET @id_sku = @id_sku + 1;
    END;
END;

EXEC InsertSkuPlaAlmSem;

--VISTAS
select * from Sku_Pla_Alm_Sem

--ACTUALIZAR
Use TrabajoFinalIO
UPDATE Sku_Alm_Sem
SET solucionY = 19139
WHERE id_sku = 1 AND id_almacen = 1 AND id_semana = 1;