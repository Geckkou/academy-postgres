-- Active: 1668607010895@@127.0.0.1@5432@postgres
select estoque.id_produto as "Id",
       produto.ds_produto as "Produto"
    from estoque
    join produto on produto.id_produto = estoque.id_produto
    where qt_produto < 50 or
          qt_produto < 10 or 
          qt_produto < 15 or 
          qt_produto < 5  or  
          qt_produto < 3;

        