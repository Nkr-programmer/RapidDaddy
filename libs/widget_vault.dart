import 'package:flutter/material.dart';

class HeadingArea extends StatelessWidget {
  const HeadingArea(
      {Key? key, required this.headingIcon, required this.headingText})
      : super(key: key);

  final String headingText;
  final IconData headingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 720,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            headingIcon,
            color: Colors.green,
            size: 50,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
          Text(
            headingText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class TextFieldNoValidator extends StatelessWidget {
  const TextFieldNoValidator(
      {Key? key,
      required this.width,
      required this.hintText,
      this.textInputType,
      this.suffixIcon,
      this.prefixIcon})
      : super(key: key);

  final double width;
  final String hintText;
  final TextInputType? textInputType;
  final Icon? suffixIcon;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      child: TextFormField(
        validator: null,
        keyboardType:
            textInputType == null ? textInputType : TextInputType.text,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

Widget vertPaddingBetweenSections() {
  return Padding(
    padding: EdgeInsets.only(top: 25),
  );
}

Widget vertPaddingBetweenHeadingContent() {
  return Padding(
    padding: EdgeInsets.only(top: 12),
  );
}

Widget vertPaddingBetweenField() {
  return Padding(
    padding: EdgeInsets.only(top: 10),
  );
}

Widget paddingBetweenField() {
  return Padding(
      padding: EdgeInsets.symmetric(
    horizontal: 15,
  ));
}
