-- Active: 1668607010895@@127.0.0.1@5432@postgres

select cliente.id_cliente as "Id", 
       cliente.ds_cliente as "Cliente"
    from cliente
    where cliente.id_cliente not in (
        select cliente.id_cliente
        from compra_cliente
        join cliente on cliente.id_cliente = compra_cliente.id_cliente
    );