@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interfaz Items de Pedido'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZDVC_I_PEDITEM
  as select from zdvc_tab_peditem
  association to parent ZDVC_I_PEDIDO as _Pedido 
  on $projection.OrderId = _Pedido.OrderId  
{
  key order_id     as OrderId,
  key item_no      as ItemNo,
      product_name as ProductName,
      quantity     as Quantity,
      unit_price   as UnitPrice,
      subtotal     as Subtotal,
      
      _Pedido
}
