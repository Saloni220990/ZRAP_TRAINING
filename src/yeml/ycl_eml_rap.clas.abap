CLASS ycl_eml_rap DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_eml_rap IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "Read Operations
    READ ENTITIES OF yr_poh_tp
    ENTITY yr_poh_tp
    ALL FIELDS
    "FIELDS ( Ebeln Bukrs )
    WITH VALUE #( ( Ebeln = '4500000001' ) )
    RESULT DATA(POs).

    "out->write( POs ).

    READ ENTITIES OF yr_poh_tp
    ENTITY yr_poh_tp BY \_poitem
    ALL FIELDS
    WITH VALUE #( ( Ebeln = '4500000001' ) )
    RESULT DATA(POItem)
    FAILED DATA(failed)
    REPORTED DATA(reported).

    "out->write( POItem ).
    "out->write( failed ).
    "out->write( reported ).

    "Modify Entities

    MODIFY ENTITIES OF yr_poh_tp
    ENTITY poh
    UPDATE
    SET FIELDS WITH VALUE #( ( Ebeln = '4500000001'
                               Kunnr = 'RUS001' ) )
    FAILED failed
    REPORTED reported.

    out->write( failed ).
    out->write( reported ).

    COMMIT ENTITIES
    RESPONSE OF YR_POH_TP
    FAILED failed
    REPORTED reported.

    MODIFY ENTITIES OF yr_poh_tp
    ENTITY poh
    CREATE
    SET FIELDS WITH VALUE #( ( %cid = 'MyContentId01'
                               Ebeln = '4500000006'
                               Bukrs = 1000
                               Bstyp = 'F'
                               Bsart = 'NB'
                               Ekorg = 1000
                               Kunnr = 'RUS006' ) )
    FAILED failed
    REPORTED reported.

    out->write( failed ).
    out->write( reported ).

    COMMIT ENTITIES
    RESPONSE OF YR_POH_TP
    FAILED failed
    REPORTED reported.

    MODIFY ENTITIES OF yr_poh_tp
    ENTITY poh
    DELETE FROM VALUE #( ( Ebeln = '4500000006' ) )
    FAILED failed
    REPORTED reported.

    out->write( failed ).
    out->write( reported ).

    COMMIT ENTITIES
    RESPONSE OF YR_POH_TP
    FAILED failed
    REPORTED reported.

  ENDMETHOD.
ENDCLASS.
