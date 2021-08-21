import 'package:flutter/material.dart';

// importing all the 3rd party packages
import 'package:dropdown_search/dropdown_search.dart';
import 'package:google_fonts/google_fonts.dart';

// importing the files of common widgets
import 'package:rapiddaddy/Mobile/widget_vault.dart';
import '../Widgets/customInputFieldMoile.dart';

//Layout
class PurchaseOrderDetailMobile extends StatelessWidget {
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
              hintText: 'PO - 1234',
              labelText: 'Purchase Order Number',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'RN/CL-12-160721',
              labelText: 'Reference Number',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '12/12/2016',
              labelText: 'Date',
              textInputType: TextInputType.datetime,
              suffixIcon: Icon(Icons.date_range),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '1234567890',
              labelText: 'Model Number',
              prefixIcon: Icon(Icons.search_rounded),
            ),
            vertPaddingBetweenField(),
            DropdownSearch(
              hint: 'Industry',
              searchBoxStyle: GoogleFonts.dmSans(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color(0xFF757D8A),
              ),
            ),
            vertPaddingBetweenField(),
            _ProductDropDown(),
            vertPaddingBetweenField(),
            Align(
              alignment: Alignment.center,
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(3)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 35,
                  )),
            ),
            vertPaddingBetweenField()
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
  String dropdownValue = '1';

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
                  '1',
                  '2',
                  '3',
                  '4',
                  '5',
                  '6',
                  '7',
                  '8',
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
