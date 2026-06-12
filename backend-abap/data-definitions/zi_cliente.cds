@EndUserText.label: 'Interface - Cliente'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_CLIENTE
  as select from ztb_cliente
  composition [0..*] of ZI_PEDIDO as _Pedidos
{
  key client_id as ClienteId,
      data      as DataCadastro,
      hora      as HoraCadastro,
      nome      as Nome,
      email     as Email,
      status    as Status,

      _Pedidos
}
