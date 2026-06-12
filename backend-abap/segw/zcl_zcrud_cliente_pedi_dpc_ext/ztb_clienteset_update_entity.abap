METHOD ztb_clienteset_update_entity.
  DATA: ls_cliente     TYPE ztb_cliente,
        ls_cliente_old TYPE ztb_cliente.

  READ TABLE it_key_tab INTO DATA(ls_key) WITH KEY name = 'ClientId'.

  SELECT SINGLE * FROM ztb_cliente
    INTO ls_cliente_old
    WHERE client_id = ls_key-value.

  io_data_provider->read_entry_data( IMPORTING es_data = ls_cliente ).

  ls_cliente-mandt = sy-mandt.
  ls_cliente-data  = ls_cliente_old-data.
  ls_cliente-hora  = ls_cliente_old-hora.

  MODIFY ztb_cliente FROM ls_cliente.

  IF sy-subrc <> 0.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
      EXPORTING
        textid = /iwbep/cx_mgw_busi_exception=>business_error.
  ENDIF.

  er_entity = ls_cliente.
ENDMETHOD.
