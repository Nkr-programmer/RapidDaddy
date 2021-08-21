import 'package:flutter/material.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';

// importing the files of common widgets
import '../Widgets/customInputFieldMoile.dart';

//Layout
class IndoorUnitDetailMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _textFieldWidth = MediaQuery.of(context).size.width - 20.0;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextFieldMobile(
                    width: MediaQuery.of(context).size.width - 100,
                    hintText: '1234567890',
                    labelText: 'Serial Number',
                    prefixIcon: Icon(
                      Icons.search,
                      size: 24,
                      color: Color(0xff757D8A),
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.document_scanner),
                  color: Colors.green,
                  iconSize: 48,
                ),
              ],
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'ABC',
              labelText: 'Brand',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'ABC',
              labelText: 'Type',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'ABC',
              labelText: 'Sub Type',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '1234567890',
              labelText: 'Model Number',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '0',
              labelText: 'Capacity',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '5',
              labelText: 'Star',
              suffixIcon: Icon(
                Icons.star_border,
                size: 24,
              ),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '12/12/2021',
              labelText: 'Date',
              suffixIcon: Icon(
                Icons.calendar_today_rounded,
                size: 24,
              ),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '20,000',
              labelText: 'Amount',
              suffixIcon: Icon(
                Icons.attach_money_rounded,
                size: 24,
              ),
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '10x10',
              labelText: 'Dimension',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: 'Blue',
              labelText: 'Color',
            ),
            vertPaddingBetweenField(),
            CustomTextFieldMobile(
              width: _textFieldWidth,
              hintText: '',
              labelText: 'Image',
            ),
            vertPaddingBetweenField(),
          ],
        ),
      ),
    );
  }
}
