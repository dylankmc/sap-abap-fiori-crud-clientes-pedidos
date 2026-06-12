  method ztb_clienteset_create_entity.

  BREAK-POINT.

  DATA ls_entity TYPE zcl_zcrud_cliente_pedi_mpc=>ts_ztb_cliente.
  DATA ls_db     TYPE ztb_cliente.

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

  INSERT ztb_cliente FROM ls_db.

  MOVE-CORRESPONDING ls_db TO er_entity.

  endmethod.
