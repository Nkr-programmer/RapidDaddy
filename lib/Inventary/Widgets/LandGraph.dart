import 'package:flutter/material.dart';

// importing google fonts package
import 'package:google_fonts/google_fonts.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';

//importing the files of common widgets
import '../Widgets/customDrawer.dart';

// Custom Graph being used in AddInventory and PurchaseOrder Page,
// to modify the graph's values, you'll have to pass a "value" (< 1.0)
// and add that value variable into the contstructor and finally at line 62
// and also the label values are, as of now, hard-coded (see line 37 and 51)
class CustomGraph extends StatefulWidget {
  const CustomGraph({Key? key}) : super(key: key);

  @override
  _CustomGraphState createState() => _CustomGraphState();
}

class _CustomGraphState extends State<CustomGraph> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              child: Text(
                'Total Sqft',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
            Container(
              child: Text(
                '20,200',
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.normal),
              ),
            ),
            vertPaddingBetweenField(),
            Container(
              child: Text(
                'Filled Sqft',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
            Container(
              child: Text(
                '5,000',
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        Container(
          height: 175,
          width: 175,
          padding: const EdgeInsets.all(20),
          child: CircularProgressIndicator(
            value: 5 / 20,
            strokeWidth: 10,
            color: Color(0xff1EB26A),
            backgroundColor: Color(0x221EB26A),
          ),
        ),
      ],
    );
  }
}
