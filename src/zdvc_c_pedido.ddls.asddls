@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Pedido (Consumo)'
@Metadata.allowExtensions: true
define root view entity ZDVC_C_PEDIDO
  provider contract transactional_query
  as projection on ZDVC_I_PEDIDO
{
  key OrderId,
      ClientId,
      OrderDate,
      TotalAmount,

      _Cliente,

      _Items : redirected to composition child ZDVC_C_PEDITEM
}
