create database peluqueriacanina
use peluqueriacanina


create table Dueno (
DNI int not null,
Nombre varchar(50) not null,
Apellido varchar (50) not null,
Telefono varchar (15),
Direccion varchar (60)
constraint clavedni primary key (DNI) 
)

Create table Perro(
ID_perro int identity(1,1)not null,
Nombre varchar(50) not null,
Fecha_nac date not null,
sexo varchar (10),
Dueno_DNI int not null
constraint claveperro primary key (ID_perro)  
FOREIGN KEY (Dueno_DNI) REFERENCES Dueno(DNI)
)

Create table Historial(
ID_historial int identity(1,1) not null,
Fecha date not null,
Perro int not null,
Descripcion varchar (100),
monto float
constraint clavehistorial primary key (ID_historial)  
FOREIGN KEY (Perro) REFERENCES Perro(ID_perro)
)
---cargo datos a las tablas
insert into Dueno Values (35551782,'Luciano','De La Fuente','3521-443282','Av. Fray 126')
insert into Perro (Nombre,Fecha_nac,Sexo,Dueno_DNI) Values ('Azul','12/02/2018','Hembra',35551782)
insert into Dueno Values (35551746,'Gonzalo','Graña','3521-445566','Velez Sarsfield S/N')
insert into Perro (Nombre,Fecha_nac,Sexo,Dueno_DNI) Values ('Morron','02/10/2008','Macho',35551746)
insert into Dueno Values (35551800,'Pedro','Pinto','3521-437866','Dean Funes 408')
insert into Perro (Nombre,Fecha_nac,Sexo,Dueno_DNI) Values ('PANCHA','17/05/2010','HEMBRA',35551800)

--Ejercico numero 4
select P.Nombre from Perro P
inner join Dueno D on D.DNI = P.Dueno_DNI
where D.Nombre ='Pedro'


