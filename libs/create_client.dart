
import 'package:flutter/material.dart';

import 'widget_vault.dart';

class CreateClient extends StatelessWidget {
  const CreateClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: 720,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CompanyInfo(),
            vertPaddingBetweenSections(),
            BillingAddress(),
            vertPaddingBetweenSections(),
            GSTPanAadhar(),
          ],
        ),
      ),
    );
  }
}

class GSTPanAadhar extends StatelessWidget {
  const GSTPanAadhar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GSTFields(hintText: 'GST Number'),
          ],
        ),
        vertPaddingBetweenField(),
        Row(
          children: [
            GSTFields(hintText: 'Pan Number'),
          ],
        ),
        vertPaddingBetweenField(),
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GSTFields(hintText: 'Aadhar Number'),
          ],
        ),
        vertPaddingBetweenField(),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GSTFields(hintText: 'Agreement'),
          ],
        ),
      ],
    );
  }
}

class TextFieldNoValidator extends StatelessWidget {
  const TextFieldNoValidator(
      {Key? key,
      required this.width,
      required this.hintText,
      this.textInputType,
      this.suffixIcon})
      : super(key: key);

  final double width;
  final String hintText;
  final TextInputType? textInputType;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      child: TextFormField(
        validator: null,
        keyboardType:
            textInputType == null ? textInputType : TextInputType.text,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          hintText: hintText,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class GSTFields extends StatelessWidget {
  const GSTFields({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFieldNoValidator(width: 200, hintText: hintText);
  }
}

class BillingAddress extends StatelessWidget {
  const BillingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.directions,
              color: Colors.green,
            ),
            Text('Billing Address'),
            paddingBetweenField(),
            paddingBetweenField(),
            Radio(value: true, groupValue: null, onChanged: (null)),
          ],
        ),
        vertPaddingBetweenHeadingContent(),
        Container(
          alignment: Alignment.centerLeft,
          child: TextFieldNoValidator(
            width: 300,
            hintText: 'Industry',
          ),
        ),
        vertPaddingBetweenField(),
        Container(
          alignment: Alignment.centerLeft,
          child: TextFieldNoValidator(
            width: 300,
            hintText: 'Street',
          ),
        ),
        Row(
          children: [
            TextFieldNoValidator(
                width: 150,
                hintText: 'Pincode',
                textInputType: TextInputType.number,
                suffixIcon: Icon(
                  Icons.gps_fixed,
                )),
            paddingBetweenField(),
            DropdownButton(
              items: [],
              hint: Text('Mumbai'),
            ),
            paddingBetweenField(),
            Container(
              width: 100,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Mah', border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        vertPaddingBetweenField(),
        Row(
          children: [
            Container(
                width: 200,
                height: 40,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.add),
                      hintText: 'Mobile No',
                      border: OutlineInputBorder()),
                )),
            paddingBetweenField(),
            Container(
              width: 200,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Phone No', border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        vertPaddingBetweenField(),
        Container(
          alignment: Alignment.centerLeft,
          child: TextFieldNoValidator(
            width: 500,
            hintText: 'Email',
            textInputType: TextInputType.emailAddress,
            suffixIcon: Icon(Icons.alternate_email_outlined),
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 50)),
      ],
    );
  }
}

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingArea(
            headingIcon: Icons.business_center,
            headingText: 'Company Information'),
        Text(
            'Enter the required information below to register. You can change it anytime you want.'),
        vertPaddingBetweenHeadingContent(),
        Text('Role'),
        Row(
          children: [
            TextFieldNoValidator(width: 300, hintText: 'ABC'),
            paddingBetweenField(),
            DropdownButton(
              items: [],
              hint: Text('Industry'),
            ),
          ],
        ),
        Row(
          children: [
            DropdownButton(
              items: [],
              hint: Text('Retailer'),
            ),
            paddingBetweenField(),
            DropdownButton(
              items: [],
              hint: Text('Product'),
            ),
          ],
        ),
      ],
    );
  }
}
