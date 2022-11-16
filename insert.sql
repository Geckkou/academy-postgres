-- Active: 1668607010895@@127.0.0.1@5432@postgres

insert into produto values 
    (default, 'Margarina', 50),
    (default, 'Tomate', 10),
    (default, 'Macarrão', 15),
    (default, 'Sabonete', 5),
    (default, 'Esponja', 3);

insert into estoque values 
    (1, 127),
    (2, 2),
    (3, 15),
    (4, 7),
    (5, 7);

insert into cliente values 
    (default, 'Maria da Silva'),
    (default, 'João Pedro'),
    (default, 'Eduardo Pereira');

insert into compra_cliente values 
    (default, 1, 1, 5),
    (default, 1, 3, 7),
    (default, 1, 5, 2),
    (default, 3, 1, 7),
    (default, 3, 1, 2),
    (default, 3, 4, 5),
    (default, 3, 5, 9);