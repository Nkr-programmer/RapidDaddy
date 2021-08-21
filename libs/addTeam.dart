
import 'package:flutter/material.dart';

import 'widget_vault.dart';

class AddTeam extends StatelessWidget {
  const AddTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 720,
      padding: EdgeInsets.symmetric(horizontal: 100),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          StaffInfo(),
          vertPaddingBetweenSections(),
          JobResp(),
        ],
      ),
    );
  }
}

class JobResp extends StatelessWidget {
  const JobResp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeadingArea(
              headingIcon: Icons.timelapse, headingText: 'Job Responsibility'),
          vertPaddingBetweenHeadingContent(),
          Row(
            children: [
              TextFieldNoValidator(
                width: 250,
                hintText: "Designation",
                suffixIcon: Icon(Icons.arrow_downward),
              ),
              paddingBetweenField(),
              TextFieldNoValidator(
                width: 200,
                hintText: 'Place',
                prefixIcon: Icon(Icons.alternate_email),
              ),
            ],
          ),
          vertPaddingBetweenField(),
          Container(
              alignment: Alignment.centerLeft,
              child:
                  TextFieldNoValidator(width: 500, hintText: 'Allow Access')),
          vertPaddingBetweenField(),
          Row(
            children: [
              TextFieldNoValidator(
                width: 200,
                hintText: 'Designation',
                prefixIcon: Icon(Icons.search),
              ),
              paddingBetweenField(),
              TextFieldNoValidator(
                width: 200,
                hintText: 'Head Name',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StaffInfo extends StatelessWidget {
  const StaffInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeadingArea(
              headingIcon: Icons.group, headingText: 'Staff Information'),
          vertPaddingBetweenField(),
          Text(
              "Enter the required information below to register. You can change it anytime you want"),
          vertPaddingBetweenHeadingContent(),
          Row(
            children: [
              TextFieldNoValidator(width: 200, hintText: 'First Name'),
              paddingBetweenField(),
              TextFieldNoValidator(width: 200, hintText: "Last Name"),
            ],
          ),
          vertPaddingBetweenField(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFieldNoValidator(width: 150, hintText: 'hehehe'),
              paddingBetweenField(),
              TextFieldNoValidator(width: 75, hintText: '+91'),
              paddingBetweenField(),
              TextFieldNoValidator(
                width: 200,
                hintText: 'Mobile No',
                suffixIcon: Icon(Icons.add),
              ),
            ],
          ),
          vertPaddingBetweenField(),
          Container(
            alignment: Alignment.centerLeft,
            child: TextFieldNoValidator(
              width: 500,
              hintText: 'user@domain.com',
              suffixIcon: Icon(Icons.alternate_email),
            ),
          ),
        ],
      ),
    );
  }
}
