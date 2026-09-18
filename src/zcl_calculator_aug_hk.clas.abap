CLASS zcl_calculator_aug_hk DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
**instance attributes declaration
*      DATA : lv_pie TYPE decfloat16 .

*    "instance methods declaration
*    METHODS : calculate_result 	IMPORTING	  iv_num1 TYPE i           "iv = import variable
*                                        	  iv_num2 TYPE i
*                                        	  iv_operation TYPE c
*                            	EXPORTING	  ev_result TYPE i.        "ev = export variable


*static attributes declaration
CLASS-DATA : lv_pie TYPE decfloat16 value '3.142'.
** "static methods declaration
*    class-METHODS : calculate_result  IMPORTING iv_num1 TYPE i           "iv = import variable
*                                                iv_num2 TYPE i
*                                                iv_operation TYPE c
*                                       EXPORTING ev_result TYPE i.        "ev = export variable

"functional static methods declaration
 CLASS-METHODS : calculate_result  IMPORTING    iv_num1 TYPE i           "iv = import variable
												iv_num2 TYPE i
												iv_operation TYPE c
									   RETURNING VALUE(ev_result) TYPE i        "ev = export variable
									   RAISING CX_SY_ZERODIVIDE.                " Raise exception for division by zero

"instance constructor declaration
*METHODS : constructor.

"static constructor declaration
CLASS-meTHODS : static_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
*  CLASS-DATA : lv_pie TYPE decfloat16 value '3.142'.
ENDCLASS.



CLASS zcl_calculator_aug_hk IMPLEMENTATION.
  METHOD calculate_result.
case iv_operation.
	  when '+'.
		ev_result = iv_num1 + iv_num2.
	  when '-'.
		ev_result = iv_num1 - iv_num2.
	  when '*'.
		ev_result = iv_num1 * iv_num2.
	  when '/'.
		  ev_result = iv_num1 / iv_num2.
		  RAISE EXCEPTION TYPE cx_sy_zerodivide.
	  when others.
		ev_result = 0. " Handle invalid operation
	endcase.
  ENDMETHOD.

  METHOD static_constructor.
  lv_pie = '3.142'.
  ENDMETHOD.

ENDCLASS.
