-- Active: 1668607010895@@127.0.0.1@5432@postgres

select cliente.id_cliente as "Cliente id",
       cliente.ds_cliente as "Cliente",
       produto.id_produto as "Produto id",
       produto.ds_produto as "Produto"
    FROM cliente
    JOIN compra_cliente on compra_cliente.id_cliente = cliente.id_cliente
    JOIN produto on produto.id_produto = compra_cliente.id_produto;
