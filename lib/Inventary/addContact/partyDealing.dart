import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';

import '../Widgets/customDrawer.dart';
import '../Widgets/customInputFieldMoile.dart';

class PartyDealingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: MediaQuery.of(context).size.width - 20,
              hintText: 'Brand XYZ',
              labelText: 'Brand Name',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: MediaQuery.of(context).size.width - 20,
              hintText: 'Preferring Item',
              labelText: 'Preferring Item',
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.green,
              ),
            ),
            vertPaddingBetweenField(),
            _ProductDropDown(),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
                width: MediaQuery.of(context).size.width - 20,
                hintText: 'abc@example.com',
                labelText: 'E-Mail',
                prefixIcon: Icon(
                  Icons.alternate_email_rounded,
                  color: Colors.green,
                )),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
                width: MediaQuery.of(context).size.width - 20,
                hintText: '1100001',
                labelText: 'Post Code',
                prefixIcon: Icon(Icons.pin_drop_rounded)),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
                width: MediaQuery.of(context).size.width - 20,
                hintText: 'ABCD1234',
                labelText: 'GST Number',
                prefixIcon: Icon(
                  Icons.pin,
                  color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}

class _ProductDropDown extends StatefulWidget {
  const _ProductDropDown({Key? key}) : super(key: key);

  @override
  __ProductDropDownState createState() => __ProductDropDownState();
}

class __ProductDropDownState extends State<_ProductDropDown> {
  String dropdownValue = 'Cassette';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButton<String>(
                focusColor: Colors.green,
                hint: Text('Product',
                    style: GoogleFonts.poppins(color: Colors.black54)),
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_downward_rounded,
                  color: Colors.white,
                ),
                iconSize: 16,
                style: GoogleFonts.poppins(color: Colors.black87, fontSize: 18),
                underline: Container(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Cassette',
                  'Floor',
                  'Split',
                  'Ducted',
                  'VRV',
                  'Chiller',
                  'Window'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const Icon(
              Icons.arrow_drop_down_rounded,
              color: Colors.black87,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
