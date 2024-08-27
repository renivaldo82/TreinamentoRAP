@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Vendas'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zi_rpcn_vendas_c
  as select from zi_rpcn_vendas
  association [1..*] to zi_rpcn_vendas_it_c as _itens on $projection.VendaId = _itens.VendaId
{
  key VendaId,
      DataVenda,
      concat(concat(substring(DataVenda, 1, 4), '/'), substring(DataVenda, 5, 2))  as MesAno,
      Vendedor,
      case
        when sum(_itens.ValorTotal) > cast( '300000.00' as abap.dec( 12, 4 ) )
        then 'Muito Caro'
        else 'Caro'
        end as Resumo,
        
      sum(_itens.ValorTotal) as TotalCompra,

      _itens
}
group by
  VendaId,
  DataVenda,
  Vendedor
