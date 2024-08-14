@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Exemplo de extensão'
@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AbapCatalog.extensibility: {
  extensible: true,
  elementSuffix: 'ZRC',
  allowNewDatasources: false,
  allowNewCompositions: false,
  dataSources: [ 'Booking_WSU' ],
  quota: {
    maximumFields: 100 ,
    maximumBytes: 10000
  }
}
define view entity ZC_Booking_WSU_D_WS
  as select from zbooking_w00d_ws as Booking_WSU
{
  key bookinguuid                   as BookingUUID,
      parentuuid                    as ParentUUID,
      bookingid                     as BookingID,
      bookingdate                   as BookingDate,
      customerid                    as CustomerID,
      carrierid                     as CarrierID,
      connectionid                  as ConnectionID
}
