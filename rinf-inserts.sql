use rinf;

insert into cities(name) values
('São josé dos campos'),
('Jacareí'),
('Taubaté');

insert into schools(name) values
('ETEP Esplanada'),
('ETEP Jacareí'),
('ETEP Taubaté');

insert into users(email, name, pass, id_school, sex, id_cities, birthday) values
('vhoyer@live.com', 'Vinícius Hoyer', 'pass123', 1, 'm', 1, '1999-12-06'),
('test2@email.com', 'Joaquinvaldison', 'pass123', 1, 'm', 1, '2016-04-15'),
('test3@email.com', 'Joaniscrévison', 'pass123', 1, 'm', 1, '2000-06-30'),
('test4@email.com', 'Jhon Titor', 'pass123', 1, 'm', 1, '2000-06-30'),
('test5@email.com', 'joan filterston', 'pass123', 1, 'f', 1, '2000-10-21');

insert into reputation(id_target, id_commenter, stance, message) values
(1, 3,'l', 'esse cara é legal pakas'),
(1, 2,'l', 'esse cara é okay...'),
(2, 3,'d', 'esse cara é não legal pakas'),
(3, 1,'l', 'esse cara é legal pakas votou por mim'),
(3, 2,'d', 'esse cara é não legal pakas votou por mim pra baixo D:');

insert into emails(email, id_users) values
('vhoyer8@gmail', 1);

insert into friends(id_request, id_target, date_sent, date_anwser, `status`) values
(1, 3, '2016-01-10 13:40:00', '2016-01-10 13:40:01', 'a'),
(1, 2, '2016-01-10 13:40:00', '2016-01-10 13:40:01', 'a'),
(2, 3, '2016-01-10 13:40:00', null, 'd');

insert into tags(description) values
('I donno y it exists, cuz time pass n memory fade')

insert into groups(name, tags) values
('grupo 1', 1),
('tecnicos info', 1),
('tecnicos meca', 1),
('tecnicos mec', 1),
('tecnicos web', 1),
('tecnicos eletro', 1);

insert into rel_groups(id users, id_groups, is_amd) values
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(2, 2, 1),
(2, 1, 0),
(2, 3, 0),
(3, 2, 0);
