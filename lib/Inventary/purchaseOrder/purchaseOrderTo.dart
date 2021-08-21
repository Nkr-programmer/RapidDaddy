import 'package:flutter/material.dart';

// importing all the 3rd party packages
import 'package:dropdown_search/dropdown_search.dart';
import 'package:google_fonts/google_fonts.dart';

// importing the files of common widgets
import 'package:rapiddaddy/Mobile/widget_vault.dart';
import '../Widgets/customInputFieldMoile.dart';

class PurchaseOrderToMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // width of the customTextField
    double _textFieldWidth = MediaQuery.of(context).size.width - 20.0;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'ABC Co Pvt Ltd',
              labelText: 'Company Name',
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
            ProductDropDown(),
            vertPaddingBetweenField(),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              height: 100,
              child: Stepper(type: StepperType.horizontal, steps: <Step>[
                Step(title: Text('hehe'), content: Text('content')),
                Step(title: Text('hehe'), content: Text('content')),
                Step(title: Text('hehe'), content: Text('content'))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Drop Down Menu for different products of this section
class ProductDropDown extends StatefulWidget {
  const ProductDropDown({Key? key}) : super(key: key);

  @override
  _ProductDropDownState createState() => _ProductDropDownState();
}

class _ProductDropDownState extends State<ProductDropDown> {
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
