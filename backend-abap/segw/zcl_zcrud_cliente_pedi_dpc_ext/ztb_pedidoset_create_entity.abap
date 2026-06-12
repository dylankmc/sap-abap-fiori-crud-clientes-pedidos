  method ztb_pedidoset_create_entity.

  DATA ls_entity TYPE zcl_zcrud_cliente_pedi_mpc=>ts_ztb_pedido.
  DATA ls_db     TYPE ztb_pedido.

  io_data_provider->read_entry_data(
    IMPORTING
      es_data = ls_entity
  ).

  MOVE-CORRESPONDING ls_entity TO ls_db.

  ls_db-mandt = sy-mandt.
  ls_db-data  = sy-datum.
  ls_db-hora  = sy-uzeit.

  IF ls_db-status IS INITIAL.
    ls_db-status = 'A'.
  ENDIF.

  INSERT ztb_pedido FROM ls_db.

  MOVE-CORRESPONDING ls_db TO er_entity.

  endmethod.
