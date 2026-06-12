@Metadata.layer: #CORE
@UI.headerInfo: {
  typeName: 'Pedido',
  typeNamePlural: 'Pedidos',
  title: {
    type: #STANDARD,
    value: 'PedidoId'
  },
  description: {
    type: #STANDARD,
    value: 'Descricao'
  }
}
annotate view ZC_PEDIDO with
{
  @UI: {
    lineItem: [{ position: 10, label: 'ID Pedido' }],
    identification: [{ position: 10, label: 'ID Pedido' }]
  }
  PedidoId;

  @UI: {
    lineItem: [{ position: 20, label: 'Descrição' }],
    identification: [{ position: 20, label: 'Descrição' }]
  }
  Descricao;

  @UI: {
    lineItem: [{ position: 30, label: 'Valor' }],
    identification: [{ position: 30, label: 'Valor' }]
  }
  Valor;

  @UI: {
    lineItem: [{ position: 40, label: 'Moeda' }],
    identification: [{ position: 40, label: 'Moeda' }]
  }
  Moeda;

  @UI: {
    lineItem: [{ position: 50, label: 'Status' }],
    identification: [{ position: 50, label: 'Status' }]
  }
  Status;

  @UI: {
    lineItem: [{ position: 60, label: 'Data' }],
    identification: [{ position: 60, label: 'Data Pedido' }]
  }
  DataPedido;

  @UI: {
    lineItem: [{ position: 70, label: 'Hora' }],
    identification: [{ position: 70, label: 'Hora Pedido' }]
  }
  HoraPedido;
}
