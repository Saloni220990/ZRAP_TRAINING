@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery Line Projection View'
define view entity YC_DELIVERYLINE 
  as projection on YI_DELIVERYITEM
{
    key Vbeln,
    key Posnr,
    Pstyv,
    Matnr,
    Matkl,
    Werks,
    Lgort,
    Charg,
    Lfimg,
    Meins,
    Vrkme,
    Ntgew,
    Brgew,
    Gewei,
    Mbdat,
    Arktx,
    Vgbel,
    Vgpos,
    Fkrel,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _header : redirected to parent YC_DELIVERYHEADER_TP
}
