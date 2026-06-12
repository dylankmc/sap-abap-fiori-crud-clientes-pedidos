@Metadata.layer: #CORE
@UI.headerInfo: {
  typeName: 'Cliente',
  typeNamePlural: 'Clientes',
  title: {
    type: #STANDARD,
    value: 'Nome'
  },
  description: {
    type: #STANDARD,
    value: 'Email'
  }
}
annotate view ZC_CLIENTE with
{
  @UI.facet: [
    {
      id: 'DadosCliente',
      purpose: #STANDARD,
      type: #IDENTIFICATION_REFERENCE,
      label: 'Dados do Cliente',
      position: 10
    },
    {
      id: 'Pedidos',
      purpose: #STANDARD,
      type: #LINEITEM_REFERENCE,
      label: 'Pedidos',
      position: 20,
      targetElement: '_Pedidos'
    }
  ]

  @UI: {
    lineItem: [{ position: 10, label: 'ID Cliente' }],
    identification: [{ position: 10, label: 'ID Cliente' }],
    selectionField: [{ position: 10 }]
  }
  ClienteId;

  @UI: {
    lineItem: [{ position: 20, label: 'Nome' }],
    identification: [{ position: 20, label: 'Nome' }],
    selectionField: [{ position: 20 }]
  }
  Nome;

  @UI: {
    lineItem: [{ position: 30, label: 'E-mail' }],
    identification: [{ position: 30, label: 'E-mail' }]
  }
  Email;

  @UI: {
    lineItem: [{ position: 40, label: 'Status' }],
    identification: [{ position: 40, label: 'Status' }],
    selectionField: [{ position: 30 }]
  }
  Status;

  @UI: {
    lineItem: [{ position: 50, label: 'Data' }],
    identification: [{ position: 50, label: 'Data Cadastro' }]
  }
  DataCadastro;

  @UI: {
    lineItem: [{ position: 60, label: 'Hora' }],
    identification: [{ position: 60, label: 'Hora Cadastro' }]
  }
  HoraCadastro;
}
