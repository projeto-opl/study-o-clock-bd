/*View dos integrantes do grupo, retorna todos os usuarios do grupo e se são admnistradores ou não*/
create view `gp_adms` as 
select u.name as 'Nome do user', g.name as 'Nome do grupo', if(r.is_adm = 1, 's', 'n') as 'E administrador?' 
from rel_groups r left join groups g on r.id_groups = g.id left join users u on u.email = r.id_users;
