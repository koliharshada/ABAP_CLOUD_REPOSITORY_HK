CLASS z_hello_world_hk DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
,


CLASS z_hello_world_hk IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'This is my first eclipse program' ).
     "variable declaration
    DATA: lv_var  TYPE string,
          lv_var1 TYPE i,
          lv_var2 TYPE c,
          lv_var3 TYPE p DECIMALS 2,
          lv_var4 TYPE d,
          lv_var5 TYPE t,
          lv_var6 TYPE xstring.
    CONSTANTS :lc_constant TYPE i VALUE 100. "if we change the value of constant then it will give error as constant value cannot be changed.
    "variable initialization
    lv_var = 'Hello World'.
    lv_var1 = 10.
    lv_var2 = 'A'.
    lv_var3 = '123.45'.
    lv_var4 = '20240615'.
    lv_var5 = '123456'.
    lv_var6 = 'hello world is in xstring'. " Hexadecimal representation
    "variable output
    	out->write( |String: { lv_var }| ).
    	out->write( |Integer: { lv_var1 }| ).
    	out->write( |Character: { lv_var2 }| ).
    	out->write( |Packed Decimal: { lv_var3 }| ).
        out->write( |Date: { lv_var4 }| ).
        out->write( |Time: { lv_var5 }| ).
    	  out->write( |XSTRING: { lv_var6 }| ).
    	
    "literal string
    DATA(lv_literal_string) = `This is a literal string`.
    out->write( |Literal String: { lv_literal_string }| ).

    "string operations
    data(lv_string1) = 'Hello'.
    DATA(lv_string2) = 'World'.
    DATA(lv_concatenated_string) = lv_string1 && ' ' && lv_string2.
    out->write( |Concatenated String: { lv_concatenated_string }| ).

    "arithmetic operations
    DATA(lv_num1) = 10.
    DATA(lv_num2) = 5.
    DATA(lv_sum) = lv_num1 + lv_num2.
    DATA(lv_difference) = lv_num1 - lv_num2.
    DATA(lv_product) = lv_num1 * lv_num2.
    DATA(lv_quotient) = lv_num1 / lv_num2.
    out->write( |Sum: { lv_sum }| ).
    out->write( |Difference: { lv_difference }| ).
    out->write( |Product: { lv_product }| ).
    out->write( |Quotient: { lv_quotient }| ).
    out->write( |Constant Value: { lc_constant }| ).

    "structure internal table and work area
   TYPES : BEGIN OF ty_std,
			rollno TYPE i,
			firstname TYPE string,
			lastname TYPE string,
			birthdate TYPE d,
			age TYPE i,
			email TYPE string,
		  END OF ty_std.
   DATA:it_student TYPE TABLE of ty_std ,
        wa_student TYPE ty_std.
     "append syntax
    "append value to internal table
    wa_student-rollno = 1.
    wa_student-firstname = 'John'.
    wa_student-lastname = 'Doe'.
    wa_student-birthdate = '19900101'.
    wa_student-age = 22.
    wa_student-email = 'jghghhghfgh'.
    append wa_student to it_student.

    wa_student-rollno = 2.
    wa_student-firstname = 'John'.
    wa_student-lastname = 'Doe'.
    wa_student-birthdate = '19900101'.
    wa_student-age = 20.
    wa_student-email = 'jghghhghfgh'.
    append wa_student to it_student.
  "  out->write( it_student  ).  		

    "append initial value to internal table(it_std) assigning <fs_std>.
    APPEND INITIAL LINE TO it_student ASSIGNING FIELD-SYMBOL(<fs_std>).
    <fs_std>-rollno = 3.
    <fs_std>-firstname = 'John'.
        <fs_std>-lastname = 'Doe'.
            <fs_std>-birthdate = '19900101'.
                <fs_std>-age = 24.
                    <fs_std>-email = 'jghghhghfgh'.

  "    out->write( it_student ).
   APPEND VALUE #( rollno = 4 firstname ='chiu' lastname ='koli' birthdate ='20020301' age = 21   email ='hyghcfcgc' ) to it_student.
 "   out->write( it_student ).	


    LOOP AT it_student INTO wa_student.
	"  out->write( |Roll No: { wa_student-rollno }, First Name: { wa_student-firstname }, Last Name: { wa_student-lastname }, Birthdate: { wa_student-birthdate }, Age: { wa_student-age }, Email: { wa_student-email }| ).
	if wa_student-age > 21.
"		out->write( |Roll No: { wa_student-rollno }, First Name: { wa_student-firstname }, Last Name: { wa_student-lastname }, Birthdate: { wa_student-birthdate }, Age: { wa_student-age }, Email: { wa_student-email }| ).
  out->write( wa_student ).
  ELSE.
     out->write( 'Age is less' ).
  ENDIF.
	ENDLOOP.
  ENDMETHOD.
ENDCLASS.
