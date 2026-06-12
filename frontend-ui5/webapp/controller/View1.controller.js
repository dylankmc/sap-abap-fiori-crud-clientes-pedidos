sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast",
    "sap/m/MessageBox",
    "sap/ui/model/json/JSONModel",
    "sap/ui/core/Fragment"
], function (Controller, MessageToast, MessageBox, JSONModel, Fragment) {
    "use strict";

    return Controller.extend("zcrud.zcrudclientepedido.controller.View1", {

onInit: function () {
    this.oModel = this.getOwnerComponent().getModel();
    this.getView().setModel(new JSONModel({}), "dialogModel");
},

        _getClienteDialog: function () {
            if (!this._pClienteDialog) {
                this._pClienteDialog = Fragment.load({
                    id: this.getView().getId() + "--cliente",
                    name: "zcrud.zcrudclientepedido.view.Cliente",
                    controller: this
                }).then(function (oDialog) {
                    this.getView().addDependent(oDialog);
                    return oDialog;
                }.bind(this));
            }
            return this._pClienteDialog;
        },

        _getPedidoDialog: function () {
            if (!this._pPedidoDialog) {
                this._pPedidoDialog = Fragment.load({
                    id: this.getView().getId() + "--pedido",
                    name: "zcrud.zcrudclientepedido.view.Pedido",
                    controller: this
                }).then(function (oDialog) {
                    this.getView().addDependent(oDialog);
                    return oDialog;
                }.bind(this));
            }
            return this._pPedidoDialog;
        },

        onNovoCliente: function () {
            this.getView().getModel("dialogModel").setData({ isEdit: false, Status: "A" });
            this._getClienteDialog().then(function (oDialog) { oDialog.open(); });
        },

        onEditarCliente: function () {
            var oItem = this.byId("tabelaClientes").getSelectedItem();
        if (!oItem) {
            MessageToast.show("Selecione um cliente.");
        return;
        }

    this._sEditPath = oItem.getBindingContext().getPath();

    var oData = Object.assign({}, oItem.getBindingContext().getObject());
    oData.isEdit = true;
    this.getView().getModel("dialogModel").setData(oData);
    this._getClienteDialog().then(function (oDialog) { oDialog.open(); });
},

onConfirmarCliente: function () {
    var oDialogModel = this.getView().getModel("dialogModel");
    var bIsEdit = oDialogModel.getData().isEdit;
    var oData = Object.assign({}, oDialogModel.getData());

    delete oData.isEdit;
    delete oData.__metadata;

    var sEntitySet = "/ZTB_CLIENTESet";

    if (bIsEdit) {
        this.oModel.update(this._sEditPath, oData, {
            success: function () {
                MessageToast.show("Cliente atualizado!");
                this.oModel.refresh(true);
                this.onFecharDialogCliente();
            }.bind(this),
            error: function (oError) {
                var sMensagem = "Erro ao atualizar cliente.";
                try {
                    var oResposta = JSON.parse(oError.responseText);
                    if (oResposta.error && oResposta.error.message) {
                        sMensagem = oResposta.error.message.value || oResposta.error.message;
                    }
                } catch (e) {}
                MessageBox.error(sMensagem);
            }.bind(this)
        });
    } else {
        this.oModel.create(sEntitySet, oData, {
            success: function () {
                MessageToast.show("Cliente criado!");
                this.oModel.refresh(true);
                this.onFecharDialogCliente();
            }.bind(this),
            error: function () {
                MessageBox.error("Erro ao criar cliente.");
            }.bind(this)
        });
    }
},

        onExcluirCliente: function () {
            var oItem = this.byId("tabelaClientes").getSelectedItem();
            if (!oItem) {
                MessageToast.show("Selecione um cliente para excluir.");
                return;
            }
            var sPath = oItem.getBindingContext().getPath();
            MessageBox.confirm("Confirmar exclusão do cliente?", {
                onClose: function (oAction) {
                    if (oAction === MessageBox.Action.OK) {
                        this.oModel.remove(sPath, {
                            success: function () { MessageToast.show("Cliente excluído!"); },
                            error: function () { MessageBox.error("Erro ao excluir cliente."); }
                        });
                    }
                }.bind(this)
            });
        },

        onFecharDialogCliente: function () {
            this._getClienteDialog().then(function (oDialog) { oDialog.close(); });
        },

        onAtualizarClientes: function () {
            this.byId("tabelaClientes").getBinding("items").refresh();
        },

        onNovoPedido: function () {
            this.getView().getModel("dialogModel").setData({ isEdit: false, Moeda: "BRL" });
            this._getPedidoDialog().then(function (oDialog) { oDialog.open(); });
        },

       onEditarPedido: function () {
            var oItem = this.byId("tabelaPedidos").getSelectedItem();
        if (!oItem) {
            MessageToast.show("Selecione um pedido.");
        return;
    }

    this._sEditPathPedido = oItem.getBindingContext().getPath();

    var oData = Object.assign({}, oItem.getBindingContext().getObject());
    oData.isEdit = true;
    this.getView().getModel("dialogModel").setData(oData);
    this._getPedidoDialog().then(function (oDialog) { oDialog.open(); });
},

    onConfirmarPedido: function () {
    var oDialogModel = this.getView().getModel("dialogModel");
    var bIsEdit = oDialogModel.getData().isEdit;
    var oData = Object.assign({}, oDialogModel.getData());

    delete oData.isEdit;
    delete oData.__metadata;

    var sEntitySet = "/ZTB_PEDIDOSet";

    if (bIsEdit) {
        this.oModel.update(this._sEditPathPedido, oData, {
            success: function () {
                MessageToast.show("Pedido atualizado!");
                this.oModel.refresh(true);
                this.onFecharDialogPedido();
            }.bind(this),
            error: function (oError) {
                var sMensagem = "Erro ao atualizar pedido.";
                try {
                    var oResposta = JSON.parse(oError.responseText);
                    if (oResposta.error && oResposta.error.message) {
                        sMensagem = oResposta.error.message.value || oResposta.error.message;
                    }
                } catch (e) {}
                MessageBox.error(sMensagem);
            }.bind(this)
        });
    } else {
        this.oModel.create(sEntitySet, oData, {
            success: function () {
                MessageToast.show("Pedido criado!");
                this.oModel.refresh(true);
                this.onFecharDialogPedido();
            }.bind(this),
            error: function () {
                MessageBox.error("Erro ao criar pedido.");
            }.bind(this)
        });
    }
},

        onExcluirPedido: function () {
            var oItem = this.byId("tabelaPedidos").getSelectedItem();
            if (!oItem) {
                MessageToast.show("Selecione um pedido para excluir.");
                return;
            }
            var sPath = oItem.getBindingContext().getPath();
            MessageBox.confirm("Confirmar exclusão do pedido?", {
                onClose: function (oAction) {
                    if (oAction === MessageBox.Action.OK) {
                        this.oModel.remove(sPath, {
                            success: function () { MessageToast.show("Pedido excluído!"); },
                            error: function () { MessageBox.error("Erro ao excluir pedido."); }
                        });
                    }
                }.bind(this)
            });
        },

        onFecharDialogPedido: function () {
            this._getPedidoDialog().then(function (oDialog) { oDialog.close(); });
        },

        onAtualizarPedidos: function () {
            this.byId("tabelaPedidos").getBinding("items").refresh();
        }
    });
});
