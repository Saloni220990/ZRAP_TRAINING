@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Header Consumption View'
@Metadata.allowExtensions: true

define root view entity YC_POH
  as projection on YR_POH_TP
{
  key Ebeln,
      Bukrs,
      Bstyp,
      Bsart,
      Bsakz,
      Loekz,
      Statu,
      Aedat,
      Ernam,
      Pincr,
      Lponr,
      Lifnr,
      Spras,
      Ekorg,
      Ekgrp,
      Waers,
      Wkurs,
      Kufix,
      Bedat,
      Kdatb,
      Kdate,
      Bwbdt,
      Angdt,
      Bnddt,
      Gwldt,
      Ausnr,
      Angnr,
      Ihran,
      Ihrez,
      Verkf,
      Telf1,
      Llief,
      Kunnr,

      _poitem : redirected to composition child YC_POI
}
