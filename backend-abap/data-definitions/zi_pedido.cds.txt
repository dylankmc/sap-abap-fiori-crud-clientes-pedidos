@EndUserText.label: 'Interface - Pedido'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZI_PEDIDO
  as select from ztb_pedido
  association to parent ZI_CLIENTE as _Cliente
    on $projection.ClienteId = _Cliente.ClienteId
{
  key client_id as ClienteId,
  key pedido_id as PedidoId,

      data      as DataPedido,
      hora      as HoraPedido,
      descricao as Descricao,

      @Semantics.amount.currencyCode: 'Moeda'
      valor     as Valor,

      moeda     as Moeda,

      status    as Status,

      _Cliente
}
