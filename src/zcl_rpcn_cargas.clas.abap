CLASS zcl_rpcn_cargas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rpcn_cargas IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TYPES: tt_venda      TYPE TABLE OF zrpcn_vendas WITH DEFAULT KEY,
           tt_venda_item TYPE TABLE OF zrpcn_vendas_it WITH DEFAULT KEY,
           tt_produto    TYPE TABLE OF zrpcn_produtos WITH DEFAULT KEY.

    DATA(lt_venda) = VALUE tt_venda(
        ( venda_id = 1 data_venda = '20240910' vendedor = 'João Silva' )
        ( venda_id = 2 data_venda = '20240910' vendedor = 'Maria Silva' )
    ).

    DATA(lt_venda_item) = VALUE tt_venda_item(
        ( venda_id = 1 venda_item = 1 produto_id = 10 quantidade = 5 )
        ( venda_id = 1 venda_item = 2 produto_id = 5 quantidade = 10 )
        ( venda_id = 1 venda_item = 3 produto_id = 7 quantidade = 20 )
        ( venda_id = 2 venda_item = 1 produto_id = 10 quantidade = 50 )
        ( venda_id = 2 venda_item = 2 produto_id = 7 quantidade = 30 )
    ).

    DATA(lt_produto) = VALUE tt_produto(
        ( produto_id = 5 descricao = 'iPhone 14 Pro' preco = '12000.00' )
        ( produto_id = 7 descricao = 'iPhone 13 Pro' preco = '7000.00' )
        ( produto_id = 10 descricao = 'iPhone 12 Pro' preco = '4000.00' )
    ).

    DELETE FROM zrpcn_vendas.
    DELETE FROM zrpcn_vendas_it.
    DELETE FROM zrpcn_produtos.

    MODIFY zrpcn_vendas FROM TABLE @lt_venda.
    MODIFY zrpcn_vendas_it FROM TABLE @lt_venda_item.
    MODIFY zrpcn_produtos FROM TABLE @lt_produto.

  ENDMETHOD.
ENDCLASS.
