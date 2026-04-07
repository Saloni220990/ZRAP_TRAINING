@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Item Consumption View'
@Metadata.allowExtensions: true

define view entity YC_POI 
as projection on YI_POI
{
    key Ebeln,
    key Ebelp,
    Loekz,
    Statu,
    Aedat,
    Matnr,
    Ematn,
    Bukrs,
    Werks,
    Lgort,
    Bednr,
    Matkl,
    Infnr,
    Idnlf,
    Ktmng,
    Menge,
    Meins,
    Netwr,
    Brtwr,
    WaersRef,
    
    _poheader: redirected to parent YC_POH
}
