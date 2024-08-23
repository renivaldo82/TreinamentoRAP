CLASS zcl_rpcn_cargas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_RPCN_CARGAS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TYPES: tt_venda      TYPE TABLE OF zrpcn_vendas WITH DEFAULT KEY,
           tt_venda_item TYPE TABLE OF zrpcn_vendas_it WITH DEFAULT KEY,
           tt_produto    TYPE TABLE OF zrpcn_produtos WITH DEFAULT KEY.

    DATA(lt_venda) = VALUE tt_venda(
        ( venda_id = 1 data_venda = '20240910' vendedor = 'João Silva' )
        ( venda_id = 2 data_venda = '20240910' vendedor = 'Maria Silva' )
        ( venda_id = 3 data_venda = '20240810' vendedor = 'Renivaldo' )
        ( venda_id = 4 data_venda = '20240810' vendedor = 'Luiz' )
        ( venda_id = 5 data_venda = '20240710' vendedor = 'Antonio' )
        ( venda_id = 6 data_venda = '20240710' vendedor = 'Rodrigo' )
        ( venda_id = 7 data_venda = '20240610' vendedor = 'Jonathan' )
        ( venda_id = 8 data_venda = '20240610' vendedor = 'João Silva' )
        ( venda_id = 9 data_venda = '20240510' vendedor = 'Maria Silva' )
        ( venda_id = 10 data_venda = '20240510' vendedor = 'Renivaldo' )
        ( venda_id = 11 data_venda = '20240410' vendedor = 'Luiz' )
        ( venda_id = 12 data_venda = '20240410' vendedor = 'Antonio' )
        ( venda_id = 13 data_venda = '20240310' vendedor = 'Rodrigo' )
        ( venda_id = 14 data_venda = '20240310' vendedor = 'Jonathan' )
        ( venda_id = 15 data_venda = '20240210' vendedor = 'João Silva' )
        ( venda_id = 16 data_venda = '20240210' vendedor = 'Maria Silva' )
        ( venda_id = 17 data_venda = '20240110' vendedor = 'Renivaldo' )
        ( venda_id = 18 data_venda = '20240110' vendedor = 'Luiz' )
        ( venda_id = 19 data_venda = '20240710' vendedor = 'Antonio' )
        ( venda_id = 20 data_venda = '20240710' vendedor = 'Rodrigo' )
        ( venda_id = 21 data_venda = '20240610' vendedor = 'Jonathan' )
    ).

    DATA(lt_venda_item) = VALUE tt_venda_item(
        ( venda_id = 1 venda_item = 1 produto_id = 1 quantidade = 1100 )
        ( venda_id = 1 venda_item = 2 produto_id = 2 quantidade = 2100 )
        ( venda_id = 1 venda_item = 3 produto_id = 3 quantidade = 3100 )
        ( venda_id = 2 venda_item = 1 produto_id = 1 quantidade = 4100 )
        ( venda_id = 2 venda_item = 2 produto_id = 2 quantidade = 5100 )
        ( venda_id = 3 venda_item = 1 produto_id = 1 quantidade = 6100 )
        ( venda_id = 3 venda_item = 2 produto_id = 2 quantidade = 7100 )
        ( venda_id = 3 venda_item = 1 produto_id = 3 quantidade = 8100 )
        ( venda_id = 4 venda_item = 2 produto_id = 1 quantidade = 9100 )
        ( venda_id = 4 venda_item = 1 produto_id = 2 quantidade = 1020 )
        ( venda_id = 4 venda_item = 2 produto_id = 3 quantidade = 1010 )
        ( venda_id = 5 venda_item = 1 produto_id = 1 quantidade = 1030 )
        ( venda_id = 6 venda_item = 2 produto_id = 2 quantidade = 1040 )
        ( venda_id = 6 venda_item = 1 produto_id = 1 quantidade = 1050 )
        ( venda_id = 6 venda_item = 2 produto_id = 3 quantidade = 1050 )
        ( venda_id = 7 venda_item = 1 produto_id = 3 quantidade = 1060 )
        ( venda_id = 7 venda_item = 2 produto_id = 1 quantidade = 1070 )
        ( venda_id = 8 venda_item = 1 produto_id = 3 quantidade = 1080 )
        ( venda_id = 9 venda_item = 2 produto_id = 2 quantidade = 1090 )
        ( venda_id = 10 venda_item = 1 produto_id = 1 quantidade = 1007 )
        ( venda_id = 11 venda_item = 2 produto_id = 2 quantidade = 1006 )
        ( venda_id = 12 venda_item = 3 produto_id = 3 quantidade = 1005 )
        ( venda_id = 13 venda_item = 3 produto_id = 2 quantidade = 1004 )
        ( venda_id = 14 venda_item = 3 produto_id = 1 quantidade = 1004 )
        ( venda_id = 15 venda_item = 3 produto_id = 3 quantidade = 1003 )
        ( venda_id = 16 venda_item = 2 produto_id = 3 quantidade = 1007 )
        ( venda_id = 17 venda_item = 2 produto_id = 2 quantidade = 1008 )
        ( venda_id = 18 venda_item = 1 produto_id = 2 quantidade = 1008 )
        ( venda_id = 19 venda_item = 1 produto_id = 1 quantidade = 1003 )
        ( venda_id = 20 venda_item = 1 produto_id = 2 quantidade = 1003 )
        ( venda_id = 21 venda_item = 2 produto_id = 2 quantidade = 1003 )
    ).

    DATA(lt_produto) = VALUE tt_produto(
        ( produto_id = 1 descricao = 'iPhone 14 Pro' preco = '12000.00' )
        ( produto_id = 2 descricao = 'iPhone 13 Pro' preco = '7000.00' )
        ( produto_id = 3 descricao = 'iPhone 12 Pro' preco = '4000.00' )
    ).

    DELETE FROM zrpcn_vendas.
    DELETE FROM zrpcn_vendas_it.
    DELETE FROM zrpcn_produtos.

    MODIFY zrpcn_vendas FROM TABLE @lt_venda.
    MODIFY zrpcn_vendas_it FROM TABLE @lt_venda_item.
    MODIFY zrpcn_produtos FROM TABLE @lt_produto.

  ENDMETHOD.
ENDCLASS.
