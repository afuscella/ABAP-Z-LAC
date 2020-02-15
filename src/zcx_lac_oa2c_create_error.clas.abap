class ZCX_LAC_OA2C_CREATE_ERROR definition
  public
  inheriting from ZCX_LAC_BUILDER_FAIL
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !TEXTID like IF_T100_MESSAGE=>T100KEY optional
      !PREVIOUS like PREVIOUS optional
      !MV_SERVICE_TYPE type STRING optional .
protected section.
private section.
ENDCLASS.



CLASS ZCX_LAC_OA2C_CREATE_ERROR IMPLEMENTATION.


  method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
PREVIOUS = PREVIOUS
MV_SERVICE_TYPE = MV_SERVICE_TYPE
.
clear me->textid.
if textid is initial.
  IF_T100_MESSAGE~T100KEY = IF_T100_MESSAGE=>DEFAULT_TEXTID.
else.
  IF_T100_MESSAGE~T100KEY = TEXTID.
endif.
  endmethod.
ENDCLASS.
