-- Active: 1668607010895@@127.0.0.1@5432@postgres

select compra_cliente.id_produto as "Produto",
       SUM(compra_cliente.qt_produto) as "Quantidade",
       produto.ds_produto as "Produto"
    from compra_cliente
    join produto on produto.id_produto = compra_cliente.id_produto
    group by 1,3
    order by 2 desc; 

