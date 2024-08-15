@AbapCatalog.sqlViewName: 'ZVAGENCY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VIEW AGENCY'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_RPC_VIEW_AGENCY
  as select from /dmo/agency
{
  key agency_id                    as AgencyId,
      name                         as Name,
      street                       as Street,
      postal_code                  as PostalCode,
      city                         as City,
      country_code                 as CountryCode,
      phone_number                 as PhoneNumber,
      email_address                as EmailAddress,
      web_address                  as WebAddress,
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_FUNC_ABAP'
      cast('' as abap.char( 255 )) as NomeAbap
}
