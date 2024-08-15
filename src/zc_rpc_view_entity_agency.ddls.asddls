@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Scalar Function'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_RPC_VIEW_ENTITY_AGENCY
  as select from ZI_RPC_VIEW_ENTITY_AGENCY
{
  key AgencyId,
      upper(Name)                                           as Name,
      Street,
      PostalCode,
      concat( concat( City, '-' ), CountryCode)             as CityCountryCode,
      substring( PhoneNumber, 3, 8)                         as PhoneNumber,
      EmailAddress,
      WebAddress,
      zfx_add_n_to_id( parameter1_name => cast(AgencyId as int4),
                       parameter2_name => cast(5 as int4) ) as NewAgencyId
}
