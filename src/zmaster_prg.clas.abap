CLASS zmaster_prg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmaster_prg IMPLEMENTATION.
 METHOD if_oo_adt_classrun~main.
***************************************************************
*day 8 - oop, class,data, method ,instance , static
**************************************************************
*create object of class zcl_calculator_aug_hk
DATA(lo_calculator) = NEW zcl_calculator_aug_hk( ).

*to access the instance data/method of the class use ->
*
*lo_calculator->calculate_result( exporting iv_num1 = 10
*										   iv_num2 = 20
*										   iv_operation = '+'
*								IMPORTING ev_result = DATA(lv_result) ).


*to access the static method of the class use =>
*zcl_calculator_aug_hk=>calculate_result(
*  EXPORTING
*    iv_num1      = 50
*    iv_num2      = 20
*    iv_operation = '*'
*  IMPORTING
*    ev_result    = DATA(lv_result)
*).							 							
*  out->write( |Result of addition is : { lv_result }| ).

**********************************************************************
*day 9 - declare instance/static attributes and access them
**********************************************************************
*access instance attribute of the class

*out->write( |Instance attribute value is : { lo_obj1->lv_pie }| ).

*access static attribute of the class
*out->write( zcl_calculator_aug_hk=>lv_pie ).


*access functional method of the class

* DATA(lv_result) = zcl_calculator_aug_hk=>calculate_result(
*  EXPORTING
*	iv_num1      = 200
*	iv_num2      = 5
*	iv_operation = '/'
*	 ).
*out->write( |Result of functional method is : { lv_result }| ) .
*out->write( lv_result ) . "another way to write the result of functional method


*out->write( zcl_calculator_aug_hk=>calculate_result(
*                                   EXPORTING
*                                   iv_num1 = 200
*                                   iv_num2 = 5
*                                   iv_operation = '/' ) ) . "returning single value from functional method

* DATA(lv_result) = zcl_calculator_aug_hk=>calculate_result(
*  EXPORTING
*   iv_num1      =  zcl_calculator_aug_hk=>calculate_result(
*                                   EXPORTING
*                                   iv_num1 = 200
*                                   iv_num2 = 5
*                                   iv_operation = '/' )
*   iv_num2      = 5
*   iv_operation = '/'
*    ).
*    out->write( |Result of functional method is : { lv_result }| ) .


"access constructor of the class
*out->write( | { DATA(lo_calculator) = NEW zcl_calculator_aug_hk( ) } | ).
*out->write( |Instance attribute value is : { lo_calculator->lv_pie }| ).

"access static attribute of the class
out->write( zcl_calculator_aug_hk=>lv_pie ).
*zcl_calculator_aug_hk=>static_constructor( ).


**********************************************************************
*day 10 - exception handling in oop
**********************************************************************
DATA(lv_result) = zcl_calculator_aug_hk=>calculate_result(
  EXPORTING
   iv_num1      = 200
   iv_num2      = 0
   iv_operation = '/'
    ).
    out->write( |Result of functional method is : { lv_result }| ) .
  ENDMETHOD.
ENDCLASS.
