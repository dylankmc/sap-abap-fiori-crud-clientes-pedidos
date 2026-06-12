METHOD ztb_clienteset_delete_entity.
  DATA: lv_client TYPE ztb_cliente-client_id.

  READ TABLE it_key_tab INTO DATA(ls_key) WITH KEY name = 'ClientId'.
  lv_client = ls_key-value.

  DELETE FROM ztb_cliente WHERE client_id = lv_client.

  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
      EXPORTING
        textid = /iwbep/cx_mgw_busi_exception=>business_error.
  ENDIF.
ENDMETHOD.
