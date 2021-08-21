import 'package:flutter/material.dart';

// importing all the 3rd party packages
import 'package:google_fonts/google_fonts.dart';

// importing the files of common widgets
import 'package:rapiddaddy/Mobile/widget_vault.dart';
import '../Widgets/customInputFieldMoile.dart';

//Layout
class DeliverToMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // width of the customTextField
    double _textFieldWidth = MediaQuery.of(context).size.width - 20.0;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'ABC Pvt. Ltd.',
              labelText: 'Company Name',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'John 117',
              labelText: 'Manager Name',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '1234567890',
              labelText: 'Mobile Number',
              textInputType: TextInputType.number,
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Industry Name, Gali No',
              labelText: 'Address Line 1',
              prefixIcon: Icon(Icons.directions),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Place',
              labelText: 'Address Line 2',
              //prefixIcon: Icon(Icons.directions),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '123456',
              labelText: 'Pin Code',
              textInputType: TextInputType.number,
              suffixIcon: Icon(Icons.location_pin),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '1',
              labelText: 'Capacity',
              textInputType: TextInputType.number,
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '5',
              labelText: 'Stars',
              suffixIcon: Icon(Icons.star_outline_rounded),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '10000',
              labelText: 'Amount',
              textInputType: TextInputType.datetime,
              suffixIcon: Icon(Icons.attach_money_rounded),
            ),
            vertPaddingBetweenField(),
            _ProductDropDown(),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Green',
              labelText: 'Status Code',
              textInputType: TextInputType.number,
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '1234567890',
              labelText: 'Mobile Number',
              textInputType: TextInputType.number,
            ),
            vertPaddingBetweenField(),
          ],
        ),
      ),
    );
  }
}

// Custom Drop Down Menu for different products of this section
class _ProductDropDown extends StatefulWidget {
  const _ProductDropDown({Key? key}) : super(key: key);

  @override
  __ProductDropDownState createState() => __ProductDropDownState();
}

class __ProductDropDownState extends State<_ProductDropDown> {
  String dropdownValue = 'Delhi';

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
                hint: Text('Quantity',
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
                  'Delhi',
                  'Mumbai',
                  'Kolkata',
                  'Bengaluru',
                  'Chennai',
                  'Hyderabad',
                  'Noide',
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
