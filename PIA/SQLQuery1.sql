USE NETFLIX
GO

Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547896, 'Steven Spielber'
	)

Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547897, 'Peter Jackson'
	)
	
Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547898, 'Martin Scorsese'
	)
	
Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547899, 'Christopher Nola'
	)
	
Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547900, 'Steven Soderberg'
	)
	
Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547901, 'Ridley Scott'
	)
	
Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547902, 'Quentin Tarantino'
	)
	
Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547903, 'Michael Mann'
	)
	
Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547904, 'James Cameron'
	)
	
Insert into Director(
	IdDirector, nombre
	)
	
values
	(
		1547905, 'Guillermo del Toro'
	)
select * from Director

Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758960, 'Drama'
	)
	
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758961, 'Comedia'
	)
	
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758962, 'Accion'
	)
	
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758963, 'Ciencia Ficcion'
	)
	
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758964, 'Fantasia'
	)
	
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758965, 'Terror'
	)
	
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758966, 'Romance'
	)
	
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758967, 'Musical'
	)
	
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758968, 'Melodrama'
	)
Insert into Genero(
	IdGenero, tipo
	)
	
values
	(
		1758969, 'Suspenso'
	)
	
select * from Genero

Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256870, 'guillermo del toro'
	)
	
Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256871, 'Pablo Larrin'
	)
	
Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256872, 'Richard Linklater'
	)
	
Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256873, 'Carlos Vermut'
	)
	
Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256874, 'Paolo Sorrentino'
	)
	
Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256875, 'Harmoni Korine'
	)
	

Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256876, 'Joachim Lafosse'
	)
	

Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256877, 'Xavier Dolan'
	)
	
Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256878, 'Leos Carax'
	)
	
Insert into Autores(
	IdAutor, Nombre
	)
	
values
	(
		256879, 'Carlos Reygadas'
	)
	
delete
from Autores
where IdAutor = '256880'

select * from Autores

Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589644, 'Elisa Hebreo'
	)

Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589641, 'Eloisa Germano'
	)

Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589642, 'Eloy Frances'
	)
	
Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589645, 'Baldomero Germano'
	)
	
Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589646, 'Belen Hebrero'
	)

Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589647, 'Benigno Latino'
	)
	
Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589648, 'Benjamin Hebrero'
	)
	
Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589649, 'Berenice Griego'
	)
	
Insert into usuario(
	IdUsuario, Nombre
	)
	
values
	(
		2589650, 'Leslie Carreon'
	)
	
select * from usuario


Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358961, 'Infantil', 100
	)
	
Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358962, 'Familiar', 300
	)
	
Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358963, 'Infantil', 100
	)
	
Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358964, 'Familiar', 300
	)
	
Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358965, 'Infantil', 100
	)

Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358966, 'Familiar', 300
	)
	
Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358967, 'Infantil', 100
	)
	
Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358968, 'Familiar', 300
	)
	
Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358969, 'Infantil', 100
	)
	
Insert into Subscripcion(
	IdSubscripcion, Nombre, Costo
	)
	
values
	(
		358970, 'Familiar', 300
	)
	
select * from Subscripcion

Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589620, 'Tarjeta de credito'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589621, 'Tarjeta de regalo'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589622, 'PayPal'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589623, 'Tarjeta de Prepago'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589624, 'Tarjeta de regalo'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589625, 'Tarjeta de credito'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589626, 'PayPal'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589627, 'Tarjeta de prepago'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589628, 'Tarjeta de regalo'
	)
	
Insert into MetodoDePago(
	IdMetodoDePago, FormaDePago
	)
	
values
	(
		4589629, 'Tarjeta de credito'
	)
	
delete
from MetodoDePago
where IdMetodoDePago = '4589630'
select * from MetodoDePago

Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478960, 'Will Smith'
	)
Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478961, 'Chloe Grace Moretz'
	)

Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478962, 'Zac Efron'
	)

Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478963, 'Johnny Deep'
	)
				
Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478964, 'Jennifer Lawrence'
	)
					
Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478965, 'Dakota Johnson'
	)

Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478966, 'Brad Pitt'
	)

Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478967, 'Robert Downey Jr.'
	)

Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478968, 'Ian Somerhalder'
	)
									
Insert into Actores(
	IdActor, Nombre
	)
	
values
	(
		1478969, 'Dylan Obrien'
	)
select * from Actores

Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236980, '04/09/2017', '03/10/2017'
	)
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
values
	(
		1236979, '04/09/2017', '03/10/2017'
	)		
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236981, '10/05/2017', '09/06/2017'
	)
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236982, '28/07/2017', '27/08/2017'
	)
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236983, '24/06/2017', '23/07/2017'
	)
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236984, '16/11/2017', '15/12/2017'
	)	
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236985, '19/08/2017', '18/09/2017'
	)
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236986, '05/01/2017', '04/02/2017'
	)
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236987, '02/10/2017', '01/11/2017'
	)
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236988, '25/05/2017', '24/06/2017'
	)
		
Insert into Compras(
	IdCompras, FechaInicio, FechaFinal
	)
	
values
	(
		1236989, '31/08/2017', '30/09/2017'
	)
delete 
from Compras
where IdCompras = '1236980'
Select * from Compras 	

Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698740, '31/08/2017'
	)		
	
Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698741, '05/09/2015'
	)		
	
Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698742, '21/01/2016'
	)		
	
Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698743, '11/05/2017'
	)		
	
Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698744, '06/03/2018'
	)		

Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698745, '27/04/2017'
	)		
	
Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698746, '24/06/2016'
	)		
	
Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698747, '14/03/2018'
	)		
	
Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698748, '25/12/2015'
	)		
	
Insert into DemandaPelicula(
	IdDemandaPelicula, Fecha
	)
	
values
	(
		5698749, '05/08/2017'
	)		
	
select * from DemandaPelicula										

Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259860, 'Activo'
	)		

Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259861, 'Pasivo'
	)			
	
Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259862, 'Inactivo'
	)	

Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259863, 'Activo'
	)			
	
Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259864, 'Pasivo'
	)		
	
Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259865, 'Inactivo'
	)		
	
Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259866, 'Activo'
	)		
	
Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259867, 'Pasivo'
	)		
	
Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259868, 'Inactivo'
	)		
	
Insert into Estatus(
	IdEstatus, Nombre
	)
	
values
	(
		259869, 'Activo'
	)		
select * from Estatus	

Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458930, '500'
	)	
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458931, '200'
	)			
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458932, '100'
	)		
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458933, '300'
	)
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458934, '400'
	)			
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458935, '600'
	)			
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458936, '700'
	)		
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458937, '800'
	)	
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458938, '800'
	)		
	
Insert into Pago(
	IdPago, Monto
	)
	
values
	(
		458939, '900'
	)			
select * from Pago		

Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635870, 'Eloisa'
	)	
	
Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635871, 'Eloy'
	)		
	
Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635872, 'Elisa'
	)		
	
Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635873, 'Baldomero'
	)	
	
Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635874, 'Belen'
	)	
	
Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635875, 'Benigno'
	)	
	
Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635876, 'Benjamin'
	)	
	
Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635877, 'Berenice'
	)	
	
Insert into Perfiles(
	IdPerfil, Nombre
	)
	
values
	(
	 635878, 'Leslie'
	)	
select * from Perfiles		

Insert into Tipo(
	IdTipo, Tipo
	)
	
values
	(
	 986750, 'Premium'
	)
	
Insert into Tipo(
	IdTipo, Tipo
	)
	
values
	(
	 986751, 'Basico'
	)	
	
Insert into Tipo(
	IdTipo, Tipo
	)
	
values
	(
	 986752, 'Normal'
	)
select * from Tipo		

Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325690, 'orgullo y prejuicio', '2:15'
	)
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325691, 'one day', '1:48'
	)	
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325692, 'Shrek', '1:35'
	)
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325693, 'Ted', '1:52'
	)
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325694, 'Mi Villano Favorito', '1:36'
	)
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325695, 'Lo que el agua se llevo', '1:26'
	)
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325696, 'el vidente', '1:36'
	)
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325697, 'Rush', '2:03'
	)
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325698, 'Identidad Secreta', '1:46'
	)
	
Insert into Peliculas(
	IdPelicula, Nombre, Tiempo
	)
	
values
	(
	 325699, 'Push', '1:51'
	)
select * from Peliculas									