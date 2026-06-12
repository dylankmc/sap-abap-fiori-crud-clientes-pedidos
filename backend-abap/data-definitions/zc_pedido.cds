@EndUserText.label: 'Consumo - Pedido'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_PEDIDO
  as projection on ZI_PEDIDO
{
  key ClienteId,
  key PedidoId,

      DataPedido,
      HoraPedido,
      Descricao,
      Valor,
      Moeda,
      Status,

      _Cliente : redirected to parent ZC_CLIENTE
}
