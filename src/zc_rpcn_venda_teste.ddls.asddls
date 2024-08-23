@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TESTE'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_RPCN_VENDA_TESTE
  as projection on zi_rpcn_vendas_c
{
  key VendaId,    
      DataVenda,
      MesAno,
      Vendedor,
      Resumo,
      @DefaultAggregation: #SUM
      TotalCompra,
      /* Associations */
      _itens
}
