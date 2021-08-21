import 'package:flutter/material.dart';

// importing all the 3rd party packages
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';

// importing the files of common widgets
import '../Widgets/customDrawer.dart';
import '../Widgets/customInputFieldMoile.dart';

// Layout
class ClientInfoMobile extends StatelessWidget {
  const ClientInfoMobile({Key? key}) : super(key: key);

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

//DO NOT REMOVE THIS
// Old Code DO NOT DELETE, Have to use somewhere else

// class GSTFields extends StatelessWidget {
//   const GSTFields({
//     Key? key,
//     required this.hintText,
//   }) : super(key: key);

//   final String hintText;

//   @override
//   Widget build(BuildContext context) {
//     return TextFieldNoValidatorMobile(
//         width: MediaQuery.of(context).size.width - 20, hintText: hintText);
//   }
// }

// class BillingAddress extends StatelessWidget {
//   const BillingAddress({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.directions,
//               color: Colors.green,
//             ),
//             Text('Billing Address'),
//             paddingBetweenField(),
//             paddingBetweenField(),
//             Radio(value: true, groupValue: null, onChanged: (null)),
//           ],
//         ),
//         vertPaddingBetweenHeadingContent(),
//         Container(
//           alignment: Alignment.centerLeft,
//           child: TextFieldNoValidatorMobile(
//             width: MediaQuery.of(context).size.width - 20,
//             hintText: 'Industry',
//           ),
//         ),
//         vertPaddingBetweenField(),
//         Container(
//           alignment: Alignment.centerLeft,
//           child: TextFieldNoValidatorMobile(
//             width: MediaQuery.of(context).size.width - 20,
//             hintText: 'Street',
//           ),
//         ),
//         vertPaddingBetweenField(),
//         TextFieldNoValidatorMobile(
//             width: MediaQuery.of(context).size.width - 20,
//             hintText: 'Pincode',
//             textInputType: TextInputType.number,
//             suffixIcon: Icon(
//               Icons.gps_fixed,
//             )),
//         vertPaddingBetweenField(),
//         DropdownButton(
//           items: [],
//           hint: Text('Mumbai'),
//         ),
//         vertPaddingBetweenField(),
//         Container(
//           width: MediaQuery.of(context).size.width - 20,
//           height: 40,
//           child: TextFormField(
//             decoration:
//                 InputDecoration(hintText: 'Mah', border: OutlineInputBorder()),
//           ),
//         ),
//         vertPaddingBetweenField(),
//         Container(
//             width: MediaQuery.of(context).size.width - 20,
//             height: 40,
//             alignment: Alignment.centerLeft,
//             child: TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                   suffixIcon: Icon(Icons.add),
//                   hintText: 'Mobile No',
//                   border: OutlineInputBorder()),
//             )),
//         vertPaddingBetweenField(),
//         Container(
//           width: MediaQuery.of(context).size.width - 20,
//           height: 40,
//           child: TextFormField(
//             decoration: InputDecoration(
//                 hintText: 'Phone No', border: OutlineInputBorder()),
//           ),
//         ),
//         vertPaddingBetweenField(),
//         Container(
//           alignment: Alignment.centerLeft,
//           child: TextFieldNoValidatorMobile(
//             width: 500,
//             hintText: 'Email',
//             textInputType: TextInputType.emailAddress,
//             suffixIcon: Icon(Icons.alternate_email_outlined),
//           ),
//         ),
//         Padding(padding: EdgeInsets.only(bottom: 50)),
//       ],
//     );
//   }
// }

//class GSTPanAadhar extends StatelessWidget {
//   const GSTPanAadhar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             GSTFields(hintText: 'GST Number'),
//           ],
//         ),
//         vertPaddingBetweenField(),
//         Row(
//           children: [
//             GSTFields(hintText: 'Pan Number'),
//           ],
//         ),
//         vertPaddingBetweenField(),
//         Row(
//           //mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GSTFields(hintText: 'Aadhar Number'),
//           ],
//         ),
//         vertPaddingBetweenField(),
//         Row(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GSTFields(hintText: 'Agreement'),
//           ],
//         ),
//       ],
//     );
//   }
// }
