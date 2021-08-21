import 'package:flutter/material.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';

// importing the files of common widgets
import '../Widgets/customDrawer.dart';
import '../Widgets/customInputFieldMoile.dart';

//Layout
class FaultCodeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // width of the customTextField
    double _textFieldWidth = MediaQuery.of(context).size.width - 20.0;

    // returns prefix icon with custom properties, used in several widgets below
    Icon _prefixIconGen(IconData _iconData) {
      return Icon(
        _iconData,
        size: 24,
        color: Theme.of(context).iconTheme.color,
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'ABC12345',
              labelText: 'Fault Code',
              prefixIcon: _prefixIconGen(Icons.search),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '1234567890',
              labelText: 'IDU or ODU Model No.',
              prefixIcon: _prefixIconGen(Icons.search),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Describe the fault here...',
              labelText: 'Fault Description',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Describe the cause of the fault here...',
              labelText: 'Fault Cause',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Describe the recommended Diagnosis here...',
              labelText: 'Diagnosis Recommendation',
            ),
            vertPaddingBetweenField(),
          ],
        ),
      ),
    );
  }
}
