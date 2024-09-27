create table clientes(
cliente_id int primary key auto_increment,
nombre varchar(255),
primer_apellido varchar(255),
segon_apellido varchar(255),
correo_electronico varchar(255),
contraseña varchar(255),
fecha_registro timestamp default current_timestamp
);

create table vehiculos(
vehiculo_id int primary key auto_increment,
cliente_id int,
matricula varchar(255),
marca varchar(255),
modelo varchar(255),
color varchar(255),
foreign key (cliente_id) references clientes(cliente_id) on delete cascade
);

create table parkings(
parking_id int primary key auto_increment,
nombre varchar(255),
ubicacion varchar(255),
plazas_disponibles int,
total_plazas int
);

create table reservas(
reserva_id int primary key auto_increment,
cliente_id int,
parking_id int,
fecha_reserva timestamp default current_timestamp,
estado enum('activa', 'cancelada'),
foreign key (cliente_id) references clientes(cliente_id) on delete cascade,
foreign key (parking_id) references parkings(parking_id) on delete cascade
);

create table plazas(
plaza_id int primary key auto_increment,
parking_id int,
numero_plaza int,
estado enum('libre', 'ocupada') default 'libre',
foreign key (parking_id) references parkings(parking_id) on delete cascade
);
