/*seleciona todos os amigos de uma pessoa, e lista o nome numa unica coluna*/
select if(f.id_target = 'vhoyer@live.com', ur.name, ut.name) as 'amigos' 
from friends f inner join users ur on ur.email = f.id_request inner join users ut on ut.email = f.id_target 
where status = 'a' and 'vhoyer@live.com' in (f.id_target, f.id_request);
