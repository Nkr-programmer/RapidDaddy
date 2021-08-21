import 'package:flutter/material.dart';

// importing the Google fonts package
import 'package:google_fonts/google_fonts.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';

// importing the files of common widgets
import '../Widgets/customDrawer.dart';
import '../Widgets/customInputFieldMoile.dart';

// Layout of the section
class AddInventoryMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // width of the customTextField
    double _textFieldWidth = MediaQuery.of(context).size.width - 20.0;

    // big description text string
    String descriptionText =
        "Invetory Filled Detail Must be cross check before Submitting. Always  Keep Cross checking the live stock count with Available stock at ware house";
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              descriptionText,
              style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
            vertPaddingBetweenField(),
            Text(
              'Search (IDU or ODU) Model Number to Add inventory',
              style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'FKA!O@US',
              labelText: 'Model Number',
            ),
            vertPaddingBetweenField(),
            vertPaddingBetweenSections(),
          ],
        ),
      ),
    );
  }
}
