@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item Pedido (Consumo)'
@Metadata.allowExtensions: true
define view entity ZDVC_C_PEDITEM
  as projection on ZDVC_I_PEDITEM
{
  key OrderId,
  key ItemNo,
      ProductName,
      Quantity,
      UnitPrice,
      Subtotal,

      _Pedido : redirected to parent ZDVC_C_PEDIDO
}

