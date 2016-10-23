/*seleciona todos os amigos de uma pessoa, e lista o nome numa unica coluna*/
select if(f.id_target = 'email@email.com', ur.name, ut.name) as 'fr_name' 
from friends f inner join users ur on ur.email = f.id_request inner join users ut on ut.email = f.id_target 
where status = 'a' and 'email@email.com' in (f.id_target, f.id_request);

/*seleciona todos os amigos de uma pessoa, e lista o nome e img do amigo*/
select if(f.id_target = 'email@email.com', ur.name, ut.name) as 'fr_name', if(f.id_target = 'email@email.com', ur.img, ut.img) as 'fr_img'
from friends f inner join users ur on ur.email = f.id_request inner join users ut on ut.email = f.id_target 
where status = 'a' and 'email@email.com' in (f.id_target, f.id_request);

/*insert query pra pedido de amizade*/
insert into friends(id_request, id_target, date_sent) values 
('add here requestor', 'add here target', 'add here probably curdate-time');
