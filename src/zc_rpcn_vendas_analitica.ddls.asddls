@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Analitica'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_rpcn_vendas_analitica
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
