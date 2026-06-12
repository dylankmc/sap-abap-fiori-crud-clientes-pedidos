# SAP ABAP + Fiori CRUD – Clientes e Pedidos

Projeto de portfólio desenvolvido para demonstrar a criação de uma aplicação **SAP Fiori/UI5 integrada a backend ABAP/OData**, simulando um cenário empresarial de cadastro e manutenção de **clientes e pedidos**.

A solução foi construída utilizando **SAP Business Application Studio**, **SAPUI5**, **JavaScript**, **XML Views**, **Fragments**, **OData**, **ABAP**, **CDS Views**, **Eclipse ADT** e **SAP GUI**.

---

## Visão Geral do Projeto

Este projeto simula uma aplicação corporativa SAP para gestão de clientes e pedidos, permitindo realizar operações de CRUD em uma interface moderna SAP Fiori.

O objetivo principal é demonstrar o fluxo completo de desenvolvimento SAP:

* Desenvolvimento do frontend no **SAP Business Application Studio**
* Estruturação do backend no **Eclipse ADT**
* Criação e validação de objetos ABAP/CDS
* Exposição de dados via **OData**
* Configuração e testes no **SAP GUI**
* Consumo do serviço OData pela aplicação SAPUI5

---

## Objetivo Profissional

Este repositório foi criado como projeto de portfólio para demonstrar conhecimentos práticos em desenvolvimento SAP, principalmente nas áreas de:

* SAP Fiori / SAPUI5
* Desenvolvimento ABAP
* Serviços OData
* CDS Views
* Integração frontend e backend
* Organização de projeto em Git/GitHub
* Documentação técnica para ambientes corporativos

---

## Funcionalidades

* Listagem de clientes
* Cadastro de novo cliente
* Edição de cliente existente
* Exclusão de cliente com confirmação
* Listagem de pedidos
* Cadastro de pedidos vinculados a clientes
* Consumo de serviço OData
* Uso de XML Views
* Uso de Fragments para dialogs
* Uso de Controllers JavaScript
* Validações básicas de campos
* Mensagens de retorno ao usuário com MessageToast e MessageBox

---

## Tecnologias Utilizadas

### Frontend

* SAP Business Application Studio
* SAPUI5
* SAP Fiori
* JavaScript
* XML Views
* Fragments
* JSON Model
* OData Model
* HTML5 / CSS

### Backend

* ABAP
* CDS Views
* Metadata Extensions
* Behavior Class
* Service Definition
* Service Binding
* SEGW / SAP Gateway
* Classe DPC_EXT
* SAP GUI
* Eclipse IDE com ABAP Development Tools

### Versionamento

* Git
* GitHub

---

## Arquitetura da Solução

```text
SAP Fiori / SAPUI5 App
        |
        | Consumo OData
        |
SAP Gateway / Serviço OData
        |
        |
Backend ABAP / DPC_EXT / CDS Views
        |
        |
Tabelas ZTB_CLIENTE e ZTB_PEDIDO
```

---

## Estrutura do Repositório

```text
sap-abap-fiori-crud-clientes-pedidos/
│
├── backend-abap/
│   ├── classes/
│   ├── data-definitions/
│   ├── metadata-extensions/
│   ├── service-bindings/
│   ├── service-definitions/
│   ├── tables/
│   └── segw/
│
├── frontend-ui5/
│   ├── webapp/
│   ├── package.json
│   └── ui5.yaml
│
└── docs/
│   ├── demo/
│   └── prints/
```

---

## Frontend SAPUI5

A camada frontend foi desenvolvida no **SAP Business Application Studio**, utilizando SAPUI5 com organização baseada em views, controllers, fragments e models.

Principais responsabilidades do frontend:

* Exibir os dados de clientes e pedidos
* Acionar operações de criação, edição e exclusão
* Consumir o serviço OData
* Controlar dialogs e formulários
* Exibir mensagens de sucesso, erro e confirmação
* Organizar a experiência do usuário no padrão Fiori

Principais arquivos:

```text
frontend-ui5/
└── webapp/
    ├── controller/
    ├── view/
    ├── model/
    ├── fragment/
    ├── i18n/
    ├── manifest.json
    └── Component.js
```

---

## Backend ABAP / OData

A camada backend foi estruturada em ambiente SAP ABAP, utilizando objetos criados e documentados a partir do Eclipse ADT e SAP GUI.

O backend é responsável por disponibilizar os dados consumidos pela aplicação Fiori e permitir as operações de CRUD.

Objetos principais documentados:

* CDS Views de Cliente e Pedido
* Metadata Extensions
* Service Definition
* Service Binding
* Behavior Class
* Projeto OData SEGW
* Classe DPC_EXT
* Estruturas/tabelas de apoio

Principais operações implementadas:

```text
GET_ENTITYSET
GET_ENTITY
CREATE_ENTITY
UPDATE_ENTITY
DELETE_ENTITY
```

---


## Demonstração da Aplicação


### Tela inicial / Listagem de Clientes

<img width="1917" height="944" alt="tela-inicial-cliente png" src="https://github.com/user-attachments/assets/a71f346b-ab05-42f7-998d-18a86306c1a4" />

### Cadastro de Cliente

<img width="1919" height="942" alt="cadastro-de-cliente png" src="https://github.com/user-attachments/assets/848e49ba-2e41-41c5-9e6c-7ddb089649d7" />

### Cliente Cadastrado

<img width="1919" height="942" alt="cliente-cadastrado png" src="https://github.com/user-attachments/assets/f408be14-e5d2-4760-89a9-9c504ebbc2a0" />

### Edição de Cliente

<img width="1919" height="942" alt="edit-cliente png" src="https://github.com/user-attachments/assets/4fd71bbe-5d5c-4e3f-b4b7-2ee772f1f289" />

### Cliente Editado

<img width="1919" height="944" alt="editado-cliente png" src="https://github.com/user-attachments/assets/2af3be79-a14a-4418-97ec-1d4b87b9a75e" />

### Confirmação de Exclusão de Clientes

<img width="1919" height="942" alt="excluir-cliente png" src="https://github.com/user-attachments/assets/a9ec7de1-4a4f-48c0-86d9-6dbbb78183b7" />

### Cliente Excluído

<img width="1917" height="940" alt="cliente-excluído png" src="https://github.com/user-attachments/assets/3c722421-70aa-419c-ae2b-3034c5f63988" />

### Listagem de Pedidos

<img width="1919" height="940" alt="tela-inicial-pedido png" src="https://github.com/user-attachments/assets/0695d3e6-ed46-496a-8298-665c16c6d038" />

### Cadastro de Pedidos

<img width="1919" height="942" alt="cadastro-de-pedido png" src="https://github.com/user-attachments/assets/d65ba907-18c2-40ed-97a7-01620cb583ee" />

### Pedido Cadastrado

<img width="1919" height="942" alt="pedido-cadastrado png" src="https://github.com/user-attachments/assets/97c8c014-1937-4123-b0c4-bffab193e7a1" />

### Edição de Pedidos

<img width="1919" height="944" alt="edit-pedido png" src="https://github.com/user-attachments/assets/8a528557-843a-4844-a677-9b963df15148" />

### Pedido Editado

<img width="1919" height="942" alt="editado-pedido png" src="https://github.com/user-attachments/assets/fa2ebe55-9638-4567-abb2-dd7785a9343b" />

### Confirmação de Exclusão de Pedidos

<img width="1919" height="944" alt="excluir-pedido png" src="https://github.com/user-attachments/assets/4e19e71c-b99a-47ba-a94b-2ba286c0749a" />

### Pedido Excluído

<img width="1919" height="941" alt="pedido-excluido png" src="https://github.com/user-attachments/assets/f4f12a9b-5157-47b0-badc-197c6042ffd4" />


---

## Demonstração Técnica

### Projeto no SAP Business Application Studio

<img width="301" height="728" alt="Captura de tela 2026-06-12 070653" src="https://github.com/user-attachments/assets/52d7c522-9863-4302-a476-45f0208e2ce3" />

### Backend no Eclipse ADT

<img width="480" height="514" alt="eclipse-ide png" src="https://github.com/user-attachments/assets/10003b1c-267c-4a6a-95d1-2a7115509a1b" />

### Serviço OData no SAP GUI / SEGW

<img width="379" height="554" alt="sap-gui-segw png" src="https://github.com/user-attachments/assets/f6537641-799e-4b26-9e2a-3d6cdf693eab" />

---

## Como Executar o Frontend Localmente

Entre na pasta do frontend:

```bash
cd frontend-ui5
```

Instale as dependências:

```bash
npm install
```

Execute o projeto:

```bash
npm start
```

Ou, dependendo da configuração do ambiente:

```bash
ui5 serve
```

---

## Observação sobre Execução

Este projeto depende de ambiente SAP para execução completa do backend, incluindo:

* Sistema ABAP
* Serviço OData configurado
* SAP Gateway ativo
* Autorizações de acesso
* Destino/serviço disponível para consumo pelo app

---

## O que este projeto demonstra

Este projeto demonstra conhecimento prático em:

* Criação de aplicação SAP Fiori/UI5
* Organização de projeto frontend no BAS
* Consumo de serviço OData
* Criação e documentação de objetos ABAP
* Uso de CDS Views
* Estruturação de backend SAP
* Uso de SAP GUI para validação técnica
* Separação entre frontend, backend e documentação
* Versionamento de projeto SAP no GitHub
* Documentação profissional para portfólio

---

## Segurança e Privacidade

Este repositório foi preparado para fins de portfólio.

Não foram incluídos:

* Senhas
* Usuários SAP reais
* IPs internos
* Mandantes reais
* Dados sensíveis
* Dados reais de clientes
* URLs internas de ambiente SAP

Os dados utilizados são fictícios ou exemplos técnicos.

---

## Melhorias Futuras

* Adicionar mais validações de formulário
* Melhorar tratamento de erros no frontend
* Criar tela detalhada de cliente com pedidos relacionados
* Adicionar filtros e busca
* Criar documentação técnica mais detalhada do serviço OData
* Adicionar vídeo demonstrativo da aplicação funcionando
* Implementar testes unitários no frontend

---

## Autor

Desenvolvido por **Dylan K. Mcnamara**.

Projeto criado para fins de estudo, prática e portfólio profissional na área de desenvolvimento SAP.

---

## Palavras-chave

SAP, SAP Fiori, SAPUI5, ABAP, OData, CDS Views, RAP, SEGW, SAP Gateway, Business Application Studio, Eclipse ADT, SAP GUI, JavaScript, XML Views, GitHub, Portfólio SAP.
