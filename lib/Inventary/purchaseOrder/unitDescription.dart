import 'package:flutter/material.dart';

// importing all the 3rd party packages
import 'package:google_fonts/google_fonts.dart';
import 'package:rapiddaddy/Inventary/Widgets/customInputFieldMoile.dart';

// importing the files of common widgets
import 'package:rapiddaddy/Mobile/widget_vault.dart';

//Layout
class UnitDescriptionMobile extends StatelessWidget {
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
              hintText: '1234567890',
              labelText: 'Model Number',
              prefixIcon: Icon(Icons.search_rounded),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Type',
              labelText: 'Type',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Sub-Type',
              labelText: 'Sub-Type',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '1234567890',
              labelText: 'Indoor Order Number',
              prefixIcon: Icon(Icons.ac_unit_rounded),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '1234567890',
              labelText: 'Outdoor Order Number',
              prefixIcon: Icon(Icons.card_travel_rounded),
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
            RequiredQuantityField(),
            vertPaddingBetweenField(),
            AddToBillButton(),
            vertPaddingBetweenField(),
          ],
        ),
      ),
    );
  }
}

// The Add to Bill button, present at the bottom of this section
class AddToBillButton extends StatefulWidget {
  const AddToBillButton({Key? key}) : super(key: key);

  @override
  _AddToBillButtonState createState() => _AddToBillButtonState();
}

class _AddToBillButtonState extends State<AddToBillButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(5)),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Add To Bill',
            style: GoogleFonts.dmSans(color: Colors.green, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

// The required Quantity Field
class RequiredQuantityField extends StatefulWidget {
  const RequiredQuantityField({Key? key}) : super(key: key);

  @override
  _RequiredQuantityFieldState createState() => _RequiredQuantityFieldState();
}

class _RequiredQuantityFieldState extends State<RequiredQuantityField> {
  int _nos = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Required Quantity', style: GoogleFonts.poppins(fontSize: 20)),
          SizedBox(width:20),
          Text(
            'Nos. $_nos',
            style: GoogleFonts.poppins(fontSize: 18, color: Color(0xff7A869A)),
          ),
          Column(
            children: [
              IconButton(
                  iconSize: 40,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      _nos++;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_up_rounded)),
              IconButton(
                  iconSize: 40,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      if (_nos > 0) _nos--;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down_rounded))
            ],
          )
        ],
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
