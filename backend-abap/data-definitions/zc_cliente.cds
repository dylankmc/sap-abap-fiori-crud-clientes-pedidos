@EndUserText.label: 'Consumo - Cliente'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_CLIENTE
  provider contract transactional_query
  as projection on ZI_CLIENTE
{
  key ClienteId,
      DataCadastro,
      HoraCadastro,
      Nome,
      Email,
      Status,

      _Pedidos : redirected to composition child ZC_PEDIDO
}
