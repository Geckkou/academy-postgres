-- Active: 1668607010895@@127.0.0.1@5432@postgres
create table if not exists produto (
    id_produto serial primary key, 
    ds_produto varchar(255) not null, 
    qt_minima_reposicao integer not null 
);

create table if not exists estoque (
    id_produto integer not null primary key,
    qt_produto integer not null, 

    foreign key (id_produto) references produto (id_produto)
);

create table if not exists cliente(
    id_cliente serial primary key, 
    ds_cliente varchar(255) not null
);

create table if not exists compra_cliente(
    id_compra serial primary key,
    id_cliente integer not null, 
    id_produto integer not null,
    qt_produto integer not null,

    foreign key (id_cliente) references cliente (id_cliente),
    foreign key (id_produto) references produto (id_produto)
);

select * from produto;
select * from estoque;
select * from cliente;
select * from compra_cliente;

drop table compra_cliente;