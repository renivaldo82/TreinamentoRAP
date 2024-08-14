@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Vendas Itens'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_rpcn_vendas_it
  as select from zrpcn_vendas_it
{
  key venda_id   as VendaId,
  key venda_item as VendaItem,
      produto_id as ProdutoId,
      quantidade as Quantidade
}
