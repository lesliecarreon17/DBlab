use netflix

select Pago.Monto
From Pago
group by Pago.Monto
order by Pago.Monto asc

select COUNT (MetodoDePago.FormaDePago) as 'cantidad de tarjetas'
from MetodoDePago
group by MetodoDePago.FormaDePago

select COUNT (Pago.Monto) as 'precios', MAX(Pago.Monto) as 'Pago maximo', SUM (Pago.Monto) as 'total valores'
from Pago
where Monto = '100'

select COUNT (Pago.Monto) as 'precios', MAX (Pago.Monto) as 'Pago maximo', SUM (Pago.Monto) as 'total'
from Pago
where Monto > '1000'

select COUNT (MetodoDePago.FormaDePago) as 'cantidad de tarjetas'
from MetodoDePago
group by MetodoDePago.FormaDePago
having MIN (MetodoDePago.FormaDePago) < 50

select top 2*
from Peliculas
order by Peliculas.Nombre desc

select top 4*
from  MetodoDePago
order by MetodoDePago.FormaDePago asc


