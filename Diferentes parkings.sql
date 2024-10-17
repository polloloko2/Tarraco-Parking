create table parkings(
parking_id int primary key auto_increment,
nombre varchar(255),
ubicacion varchar(255),
plazas_disponibles int,
plazas_restantes int,
total_plazas int
);
insert into parkings(nombre, ubicacion, plazas_disponibles, plazas_restantes, total_plazas) values
('Primero', 'Avinguda Andorra', '50', '50', '50'),
('Segundo', 'Rambla Nova', '50','50', '50'),
('Tercero', 'Rambla Vella', '50','50', '50'),
('Cuarto', 'Plaça dels carrros', '50','50', '50'),
('Quinto', 'Port', '50','50', '50'),
('Sexto', 'Serrallo', '50','50', '50'),
('Séptimo', 'Casino', '50','50', '50'),
('Octavo', 'Ajuntament', '50','50', '50')
;
drop table parkings;
select * from parkings;
delete from parkings;
