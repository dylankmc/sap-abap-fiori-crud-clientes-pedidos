METHOD ztb_pedidoset_delete_entity.

  DATA: lv_client TYPE ztb_pedido-client_id,
        lv_pedido TYPE ztb_pedido-pedido_id.

  READ TABLE it_key_tab INTO DATA(ls_key1) WITH KEY name = 'ClientId'.
  READ TABLE it_key_tab INTO DATA(ls_key2) WITH KEY name = 'PedidoId'.

  lv_client = ls_key1-value.
  lv_pedido = ls_key2-value.

  DELETE FROM ztb_pedido
    WHERE client_id = lv_client
      AND pedido_id = lv_pedido.

  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
      EXPORTING
        textid = /iwbep/cx_mgw_busi_exception=>business_error.
  ENDIF.
ENDMETHOD.
