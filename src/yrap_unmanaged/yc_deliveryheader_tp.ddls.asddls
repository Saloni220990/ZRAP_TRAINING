@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery Header Projection View'
@Metadata.allowExtensions: true

define root view entity YC_DELIVERYHEADER_TP 
  as projection on YR_DELIVERYHEADER_TP
{
    key Vbeln,
    Ernam,
    Erzet,
    Erdat,
    Bzirk,
    Vstel,
    Vkorg,
    Lfart,
    Autlf,
    Kzazu,
    Wadat,
    Lddat,
    Tddat,
    Lfdat,
    Kodat,
    Ablad,
    Inco1,
    Inco2,
    Expkz,
    Route,
    Vbtyp,
    Lprio,
    Vsbed,
    Btgew,
    Ntgew,
    Gewei,
    Volum,
    Voleh,
    Anzpk,
    Berot,
    Aedat,
    Bolnr,
    Xabln,
    WadatIst,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _item : redirected to composition child YC_DELIVERYLINE
}
