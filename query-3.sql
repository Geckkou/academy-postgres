-- Active: 1668607010895@@127.0.0.1@5432@postgres

select produto.id_produto as "Id",
       produto.ds_produto as "Produto"
    from produto 
    where produto.id_produto not in (
        select produto.id_produto
        from compra_cliente
        join produto on produto.id_produto = compra_cliente.id_produto
    );
    