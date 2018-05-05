select * from Actores
select * from Autores
select * from compras
select * from DemandaPelicula
select * from Director
select * from Estatus
select * from Genero
select * from MetodoDePago
select * from Pago
select * from Peliculas
select * from Perfiles
select * from Subscripcion
select * from Tipo
select * from usuario

create view Actores_Peliculas as
select Actores as Will Smith as Chloe Grace Moretz as Zac Efron as Johnny Deep as Jennifer Lawrence as Dakota Johnson as Brad Pitt as Robert Downey Jr.
from Actores a
join Actores on Peliculas

create view Autores_Peliculas as
select Autores as guillermo del toro as Pablo Larrin as Richard Linklater as Carlos Vermut as Paolo Sorrentino as Harmoni Korine as Joachin Lafosse as Xavier Dolan
from Autores a
join Autores on Peliculas



create view Pago_Subscripcion as
select p.MetodoDePago as Tarjeta de regalo as Paypal as Tarjeta de credito as Tarjeta de Prepago
from MetodoDePago m
join pago p on p.IdMetodoDePago

create view Director_Pelicula as
select p.nombre_Peliculas as NombrePelicula, p.tiempo as TiempoPelicula, d.nombre as Director
from Pelicula p
join director d  on p.IdPelicula = d.IdDirector 

create view 