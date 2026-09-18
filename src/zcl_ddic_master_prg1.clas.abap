CLASS zcl_ddic_master_prg1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ddic_master_prg1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
***********************************
*day 13 upload data to database table
**********************************************************************
*create internal table to hold the data

    DATA(it_student_data) = VALUE ztt_student_hk(
    ( student_id = 101 dept = 'CS' firstname = 'John' lastname = 'Doe' age = 20 email = 'abc@gmail.com' )
    ( student_id = 102 dept = 'IT' firstname = 'Jane' lastname = 'Doe' age = 21 email = 'fgd@gmail.com' )
    ( student_id = 103 dept = 'EXTC' firstname = 'Jack' lastname = 'Doe' age = 22 email = 'vvgvvg@gmail.com' )
    ).
*INSERT DATA INTO DATABASE TABLE USING MODIFY STATEMENT
    MODIFY zdb_student_hk FROM TABLE @it_student_data.
    IF sy-subrc = 0.
      	  out->write( 'Data inserted successfully into the database table.' ).
    	ELSE.
      	 out->write( 'Failed to insert data into the database table.' ).
    	ENDIF.


  ENDMETHOD.
ENDCLASS.
