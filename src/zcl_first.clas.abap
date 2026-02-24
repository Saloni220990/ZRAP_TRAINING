CLASS zcl_first DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_first IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
   out->write( '!st ABAP Class' ).
  ENDMETHOD.
ENDCLASS.
