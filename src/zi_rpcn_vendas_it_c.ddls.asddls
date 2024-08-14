@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Vendas Itens'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_rpcn_vendas_it_c
  as select from zi_rpcn_vendas_it as _Vendas
  association [1..1] to zi_rpcn_produtos as _Produto on $projection.ProdutoId = _Produto.ProdutoId
{
  key VendaId,
  key VendaItem,
      ProdutoId,
      Quantidade,
      
      _Produto.Preco * Quantidade as ValorTotal,

      _Produto
}
