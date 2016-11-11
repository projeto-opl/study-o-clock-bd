use rinf;

delete from cities;
insert into cities(`name`) values
('São josé dos campos'),
('Jacareí'),
('Taubaté');

delete from schools;
insert into schools(`name`) values
('ETEP Esplanada'),
('ETEP Jacareí'),
('ETEP Taubaté');

delete from users;
insert into users(email, `name`, pass, id_schools, sex, id_cities, birthdate, validated) values
('vhoyer@live.com', 'Vinicius Hoyer', 'pass123', 1, 'm', 1, '1999-12-06', 1),
('test2@email.com', 'Joaquinvaldison', 'pass123', 1, 'm', 1, '2016-04-15', 1),
('test3@email.com', 'Joaniscrevison', 'pass123', 1, 'm', 1, '2000-06-30', 1),
('test4@email.com', 'Jhon Titor', 'pass123', 1, 'm', 1, '2000-06-30', 1),
('test5@email.com', 'joan filterston', 'pass123', 1, 'f', 1, '2000-10-21', 1);

delete from reputation;
insert into reputation(id_target, id_commenter, stance, message) values
('vhoyer@live.com', 'test3@email.com','l', 'esse cara é legal pakas'),
('vhoyer@live.com', 'test2@email.com','l', 'esse cara é okay...'),
('test2@email.com', 'test3@email.com','d', 'esse cara é não legal pakas'),
('test3@email.com', 'vhoyer@live.com','l', 'esse cara é legal pakas votou por mim'),
('test3@email.com', 'test2@email.com','d', 'esse cara é não legal pakas votou por mim pra baixo D:');

delete from emails;
insert into emails(email, id_users) values
('vhoyer8@gmail', 'vhoyer@live.com');

delete from friends;
insert into friends(id_request, id_target, date_sent, date_anwser, `status`) values
('vhoyer@live.com', 'test3@email.com', '2016-01-10 13:40:00', '2016-01-10 13:40:01', 'a'),
('vhoyer@live.com', 'test2@email.com', '2016-01-10 13:40:00', '2016-01-10 13:40:01', 'a'),
('test2@email.com', 'test3@email.com', '2016-01-10 13:40:00', null, 'd'),
('test5@email.com', 'vhoyer@live.com', '1111-11-11 00:00:00', '1111-11-11 00:00:00', 'a');

delete from tags;
insert into tags(description) values
('I donno y it exists, cuz time pass n memory fade');

delete from groups;
insert into groups(`name`, tags) values
('grupo 1', 1),
('tecnicos info', 1),
('tecnicos meca', 1),
('tecnicos mec', 1),
('tecnicos web', 1),
('tecnicos eletro', 1);

delete from rel_groups;
insert into rel_groups(id_users, id_groups, is_adm) values
('vhoyer@live.com', 1, 1),
('vhoyer@live.com', 2, 1),
('vhoyer@live.com', 3, 1),
('vhoyer@live.com', 4, 1),
('vhoyer@live.com', 5, 1),
('vhoyer@live.com', 6, 1),
('test2@email.com', 2, 1),
('test2@email.com', 1, 0),
('test2@email.com', 3, 0),
('test3@email.com', 2, 0);

/*
 *insert into areas(description) values
 *('matematica'),
 *('fisica'),
 *('quimica'),
 *('biologia'),
 *('historia'),
 *('geogafia'),
 *('sociologia'),
 *('filosofia'),
 *('lingua portuguesa'),
 *('literatura brasileira'),
 *('lingua inglesa'),
 *('educacao fisica'),
 *('arte');
 */

/*
 *insert into marks(id_users, id_area, mark) values
 *('vhoyer@live.com',  1, 9.3),
 *('vhoyer@live.com',  2, 7.9),
 *('vhoyer@live.com',  3, 6.0),
 *('vhoyer@live.com',  4, 9.2),
 *('vhoyer@live.com',  5, 9.0),
 *('vhoyer@live.com',  6, 7.5),
 *('vhoyer@live.com',  7, 8.0),
 *('vhoyer@live.com',  8, 6.4),
 *('vhoyer@live.com',  9, 7.0),
 *('vhoyer@live.com', 10, 7.0),
 *('vhoyer@live.com', 11, 5.5),
 *('vhoyer@live.com', 12, 6.2),
 *('vhoyer@live.com', 13, 4.5);
 */
