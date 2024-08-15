CLASS zcl_func_abap DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_func_abap IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.

    DATA lt_calculated_data TYPE STANDARD TABLE OF zi_rpc_view_agency.

    MOVE-CORRESPONDING it_original_data TO lt_calculated_data.

    LOOP AT lt_calculated_data ASSIGNING FIELD-SYMBOL(<lf_data>).

      <lf_data>-NomeAbap = 'Renivaldo'.

    ENDLOOP.

    MOVE-CORRESPONDING lt_calculated_data TO ct_calculated_data.

  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.
ENDCLASS.
