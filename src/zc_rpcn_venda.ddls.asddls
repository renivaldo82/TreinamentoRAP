@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Comsumption - Vendas'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_RPCN_VENDA
  as projection on zi_rpcn_vendas_c
{
      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem: [{ position: 10 }]
      @EndUserText.label: 'Venda'
  key VendaId,
      @UI.selectionField: [{ position: 20 }]
      @UI.lineItem: [{ position: 20 }]
      @EndUserText.label: 'Data da Venda'
      DataVenda,
      @UI.selectionField: [{ position: 30 }]
      @UI.lineItem: [{ position: 30 }]
      @EndUserText.label: 'Vendedor'
      Vendedor,
      @UI.selectionField: [{ position: 40 }]
      @UI.lineItem: [{ position: 40 }]
      @EndUserText.label: 'Resumo'
      Resumo,
      @UI.selectionField: [{ position: 50 }]
      @UI.lineItem: [{ position: 50 }]
      @EndUserText.label: 'Total da Compra'
      TotalCompra,
      /* Associations */
      _itens
}
