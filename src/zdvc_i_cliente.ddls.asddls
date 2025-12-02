@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interfaz Clientes'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZDVC_I_CLIENTE
  as select from zdvc_tab_cliente
{
  key client_id as ClientId,
      name      as Name,
      email     as Email,
      phone     as Phone
}
