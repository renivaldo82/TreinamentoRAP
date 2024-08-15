CLASS zcl_rpcn_ce_agency DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rpcn_ce_agency IMPLEMENTATION.


  METHOD if_rap_query_provider~select.

    DATA(lv_filter) = io_request->get_filter( )->get_as_sql_string( ).

    DATA(lo_paging) = io_request->get_paging( ).

    IF lo_paging IS BOUND.

      DATA(lv_offset) = lo_paging->get_offset( ).
      DATA(lv_top) = lo_paging->get_page_size( ).

    ENDIF.

    SELECT agency_id, name, street
    FROM /dmo/agency
    WHERE (lv_filter)
    ORDER BY agency_id
    INTO TABLE @DATA(lt_response)
    OFFSET @lv_offset UP TO @lv_top ROWS.

    IF sy-subrc = 0.

      io_response->set_data( lt_response ).

      IF io_request->is_total_numb_of_rec_requested( ).

        io_response->set_total_number_of_records( lines( lt_response ) ).

      ENDIF.

    ENDIF.


  ENDMETHOD.
ENDCLASS.
