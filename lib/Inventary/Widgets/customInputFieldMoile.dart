import 'package:flutter/material.dart';

// importing google fonts package
import 'package:google_fonts/google_fonts.dart';

//This is the custom Text Field that was created as per the Figma design provided,

// To get value from this field or change value of the field (i.e, the text it displays),
//pass a [controller] into (which has to initialized separately),

// if it is a read-only field, pass the [isReadOnly] as false

// [textInputType] defines the different type of Mobile keyboards (such as text, email or numerical only) to be used when the field is in focus (is active)
// by default [textInputType] is set to text

// [Width] is marked as required therefore it is necessary that you provide a [width] for this field, for layout / sizing purposes ofc

// most of the other things are not marked required as they weren't needed consistently enough,

// Remember : This is a FormField, therefore a [validator] can be passed into it and it will validate field

class CustomTextFieldMobile extends StatelessWidget {
  const CustomTextFieldMobile({
    Key? key,
    required this.width,
    this.hintText,
    this.textInputType,
    this.suffixIcon,
    this.labelText,
    this.prefixIcon,
    this.controller,
    this.isReadOnly,
  }) : super(key: key);

  final double width;
  final String? hintText;
  final TextInputType? textInputType;
  final Icon? suffixIcon;
  final String? labelText;
  final Icon? prefixIcon;
  final TextEditingController? controller;
  final bool? isReadOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Colors.white,
      child: TextFormField(
        validator: null,
        keyboardType:
            textInputType == null ? TextInputType.text : textInputType,
        decoration: InputDecoration(
          labelText: labelText == null ? 'Company Name' : labelText,
          labelStyle: GoogleFonts.dmSans(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Color(0xFF757D8A)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE1E3E6), width: 2)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 2)),
          contentPadding: EdgeInsets.fromLTRB(12, 18, 12, 18),
          hintText: hintText,
          hintStyle: GoogleFonts.dmSans(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Color(0xFF757D8A),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(),
        ),
        controller: controller,
        readOnly: isReadOnly == true ? false : true,
      ),
    );
  }
}
