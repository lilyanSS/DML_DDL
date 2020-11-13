--- UNIVERSIDAD MARIANO GALVEZ SEMINARIO DE ANÁLISIS.
--- LILYAN SICA 1990-13-11645. 


-- Insertar estado del vehiculo.
INSERT INTO vehicles_status(name) SELECT * FROM( select 'Nuevo') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_status WHERE name='Nuevo');
INSERT INTO vehicles_status(name) SELECT * FROM( select 'Usado') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_status WHERE name='Usado');
INSERT INTO vehicles_status(name) SELECT * FROM( select 'Chocado') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_status WHERE name='Chocado');

-- Insertar tipo de vehiculo.
INSERT INTO vehicles_type(name) SELECT * FROM( select 'Mecánico') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_type WHERE name='Mecánico');
INSERT INTO vehicles_type(name) SELECT * FROM( select 'Automático') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_type WHERE name='Automático');


-- Insertar marcas de los vehiculos.
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Abarth') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Abarth');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'BMW') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='BMW');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Dacia') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Dacia');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Infiniti') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Infiniti');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Kia') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Kia');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Land Rover') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Land Rover');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Mercedes-Benz') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Mercedes-Benz');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Volkswagen') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Volkswagen');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Ferrari') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Ferrari');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Isuzu') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Isuzu');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'KTM') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='KTM');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Suzuki') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Suzuki');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Volvo') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Volvo');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Fiat') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Fiat');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Mitsubishi') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Mitsubishi');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Audi') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Audi');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Chevrolet') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Chevrolet');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Ford') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Ford');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Lamborghini') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Lamborghini');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Tesla') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Tesla');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Mitsubishi') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Mitsubishi');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Mazda') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Mazda');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Nissan') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Nissan');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Honda') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Honda');
INSERT INTO vehicles_brand(name) SELECT * FROM( select 'Toyota') AS tmp WHERE NOT EXISTS (SELECT name FROM vehicles_brand WHERE name='Toyota');


-- VERIFICAR LOS VEHICULOS QUE NO SE HAN VENDIDO.
SELECT * FROM vehicles_vehicle WHERE SOLD =0;

-- MOSTRAR LAS FOTOS DE LOS VEHICULOS.
SELECT photos.image_url, vehicle.model, vehicle.price, vehicle.type_id  FROM vehicles_photos photos, vehicles_vehicle vehicle
where photos.vehicle_id = vehicle.id;


