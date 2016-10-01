use rinf;

/*insert into cities*/
insert into cities(name) values
('São josé dos campos'),
('Jacareí'),
('Taubaté');

/*insert into schools*/
insert into schools(name) values
('ETEP Esplanada'),
('ETEP Jacareí'),
('ETEP Taubaté');

/*insert into users*/
insert into users(email, name, pass, id_school, sex, id_cities, birthday) values
('test1@email.com', 'Joaquinvaldison', 'pass123', 1, 'm', 1, '06-12-1999'),
('test2@email.com', 'Joaniscrévison', 'pass123', 1, 'f', 1, '21-10-2000');
