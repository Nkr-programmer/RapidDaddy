
import 'package:flutter/material.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';


class AddTeamMobile extends StatelessWidget {
  const AddTeamMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          TextFieldNoValidator(
            width: MediaQuery.of(context).size.width - 20,
            hintText: "Designation",
            suffixIcon: Icon(Icons.arrow_downward),
          ),
          vertPaddingBetweenField(),
          TextFieldNoValidator(
            width: MediaQuery.of(context).size.width - 20,
            hintText: 'Place',
            prefixIcon: Icon(Icons.alternate_email),
          ),
          vertPaddingBetweenField(),
          Container(
              alignment: Alignment.centerLeft,
              child:
                  TextFieldNoValidator(width: 500, hintText: 'Allow Access')),
          vertPaddingBetweenField(),
          TextFieldNoValidator(
            width: MediaQuery.of(context).size.width - 20,
            hintText: 'Designation',
            prefixIcon: Icon(Icons.search),
          ),
          vertPaddingBetweenField(),
          TextFieldNoValidator(
            width: MediaQuery.of(context).size.width - 20,
            hintText: 'Head Name',
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
          TextFieldNoValidator(
              width: MediaQuery.of(context).size.width - 20,
              hintText: 'First Name'),
          vertPaddingBetweenField(),
          TextFieldNoValidator(
              width: MediaQuery.of(context).size.width - 20,
              hintText: "Last Name"),
          vertPaddingBetweenField(),
          Container(
              alignment: Alignment.centerLeft,
              child: TextFieldNoValidator(width: 150, hintText: 'hehehe')),
          vertPaddingBetweenField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFieldNoValidator(width: 75, hintText: '+91'),
              paddingBetweenField(),
              TextFieldNoValidator(
                width: MediaQuery.of(context).size.width - 20 - 105,
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
