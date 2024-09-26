create table clients(
client_id int primary key auto_increment,
nom varchar(255),
primer_cognom varchar(255),
segon_cognom varchar(255),
email varchar(255),
contrasenya varchar(255),
data_registre timestamp default current_timestamp
);

create table vehicles(
vehicle_id int,
client_id int,
matricula varchar(255),
marca varchar(255),
model varchar(255),
color varchar(255),
foreign key (client_id) references clients(client_id) on delete cascade
);

create table parkings(
parking_id int primary key auto_increment,
nom varchar(255),
ubicacio varchar(255),
places_disponibles int,
total_places int
);

create table reserves(
reserva_id int,
client_id int,
parking_id int,
data_reserva timestamp default current_timestamp,
estat enum('activa', 'cancel·lada'),
foreign key (client_id) references clients(client_id) on delete cascade,
foreign key (parking_id) references parkings(parking_id) on delete cascade
);