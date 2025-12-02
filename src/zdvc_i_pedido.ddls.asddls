@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interfaz Pedidos'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZDVC_I_PEDIDO
  as select from zdvc_tab_pedido
    association [0..1] to ZDVC_I_CLIENTE  as _Cliente
      on $projection.ClientId = _Cliente.ClientId

    composition [0..*] of ZDVC_I_PEDITEM as _Items
     
{
  key order_id     as OrderId,
      client_id    as ClientId,
      order_date   as OrderDate,
      total_amount as TotalAmount,

      _Cliente,
      _Items
}
