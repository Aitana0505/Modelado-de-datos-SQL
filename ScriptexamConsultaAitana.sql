-- Consultas 

select a.idmodel as "Modelo", b.brand as "Marca", b.company_group as "Grupo empresarial"
from fleetmaster.cars a, fleetmaster.model b 
where a.idmodel=b.idmodel;

select dt_purchase as "Fecha de compra"
from fleetmaster.cars;

select plate as "Matricula del coche"
from fleetmaster.cars;

select  b.name as "color del coche"
from fleetmaster.cars a inner join fleetmaster.colour b on a.idcolour=b.idcolour;

select num_kms as "Kms del coche"
from fleetmaster.cars;

select b.name as "Compañía aseguradora"
from fleetmaster.insurance_policy a inner join fleetmaster.company b on a.idcompany=b.idcompany;

select b.num_policy as "Número de Póliza"
from fleetmaster.cars a inner join fleetmaster.insurance_policy b on a.idcar = b.idcar; 

