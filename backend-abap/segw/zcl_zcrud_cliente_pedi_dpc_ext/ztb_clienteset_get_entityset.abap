METHOD ztb_clienteset_get_entityset.

  DATA lt_clientes TYPE TABLE OF ztb_cliente.

  SELECT *
    FROM ztb_cliente
    INTO TABLE lt_clientes.

  " Copia para o entityset ignorando paginação do framework
  et_entityset = lt_clientes.

  " Informa ao framework que não há mais dados para paginar
  es_response_context-inlinecount = lines( et_entityset ).

ENDMETHOD.
