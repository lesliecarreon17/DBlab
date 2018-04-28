select * from Autores
select * from Director
select * from Genero
select * from peliculas 
select * from usuario
select * from MetodoDePago

create view Director_Peliculas as 
select s.nombre_pelicula as Nombre, s.tiempo as tiempo, p.nombre as Director
from Peliculas s
join peliculas p on s.IdDirector = p.IdPeliculas

create view Inventario_Producto as
select p.*, i.Cantidad_Almacen as Cantidad
from Producto p
join inventario i on p.ID_Producto = i.ID_Producto

create view Detalle_Producto as
select p.tipo as tipo, SUM(d.precio) as PTotal, SUM(d.cantidad) as CTotal
from DetalleCompra d
join producto p on d.ID_Producto = p.ID_Producto
group by p.tipo

create view Producto_Detalle_Orden as
select p.Nombre as Producto, d.Precio as precio, d.cantidad as cantidad, o.fecha as fecha
from DetalleCompra d 
join producto p on d.ID_Producto = p.ID_Producto
join OrdenCompra o on d.ID_Compra = o.ID_Compra

create view Sucursal_Inventario_Producto as
select s.Nombre_sucursal as sucursal ,p.nombre as producto, i.cantidad_almacen as cantidad
from Inventario i
join producto p on i.ID_Producto = p.ID_Producto
join sucursal s on i.ID_Sucursal = s.Id_sucursal

select * from
select Tipo, count(*) as CantidadProductos
from producto
group by tipo
)as t
where t.CantidadProducto >1

with MP as (
select producto, MAX(precio) as PrecioMaximo
from Producto_Detalle_Orden
group by producto
)
select *
from MP


select NombreSucursal, Proveedor
into #SucursalwProveedor
from Proveedor_Sucursal

select * from #sucursalwproveedor