CLASS z_hello_world_hk DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_hello_world_hk IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write( 'This is my first eclipse program' ).

  ENDMETHOD.
    ENDCLASS.
