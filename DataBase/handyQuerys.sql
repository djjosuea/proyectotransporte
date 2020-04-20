--Ver todas las rutas con informacion de lugares
SELECT * FROM `ruta` INNER JOIN `lugar` where ruta.id_lugar = lugar.id ORDER BY ruta.id, posicion;

--Ver las rutas dado un id de origen y uno de destino
SELECT * from ruta  WHERE
(SELECT posicion from ruta as rutaOrigen where rutaOrigen.id = ruta.id and rutaOrigen.id_lugar = /*el lugar de origen*/ 4)
<
(SELECT posicion from ruta as rutaDestino where rutaDestino.id = ruta.id and rutaDestino.id_lugar = /*el lugar de destino*/ 2)
order by id, posicion;

--Ver el origen y el destino de cada ruta
SELECT  id_origen, id_lugar as id_destino, origen, comunidad as destino, ruta.id as id_ruta from ruta 
inner join lugar on lugar.id = ruta.id_lugar
inner join (
    SELECT id_lugar as id_origen, comunidad as origen, ruta.id from ruta 
    inner join lugar on lugar.id = ruta.id_lugar
    where posicion = (
        select min(posicion) from ruta as r where ruta.id = r.id 
    ) 
) tablaOrigen on ruta.id = tablaOrigen.id
where posicion = (
    select max(posicion) from ruta as r where ruta.id = r.id 
);

--Ver el origen y el destino de cada horario
SELECT * FROM `horario`
inner join (
    SELECT  id_origen, id_lugar as id_destino, origen, comunidad as destino, ruta.id as id_ruta from ruta 
    inner join lugar on lugar.id = ruta.id_lugar
    inner join (
        SELECT id_lugar as id_origen, comunidad as origen, ruta.id from ruta 
        inner join lugar on lugar.id = ruta.id_lugar
        where posicion = (
            select min(posicion) from ruta as r where ruta.id = r.id 
        ) 
    ) tablaOrigen on ruta.id = tablaOrigen.id
    where posicion = (
        select max(posicion) from ruta as r where ruta.id = r.id 
    )
) rutas on horario.id_ruta = rutas.id_ruta