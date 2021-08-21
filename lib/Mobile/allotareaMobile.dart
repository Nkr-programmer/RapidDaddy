
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';
import 'package:rapiddaddy/widgets/clientScreen.dart';


class AllotAreaMobile extends StatelessWidget {
  const AllotAreaMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading:IconButton( onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Profile2()));
                
              }, icon: Icon(Icons.arrow_back),) ,
        title: Text( "Alot Area"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeadingArea(
                  headingIcon: Icons.document_scanner,
                  headingText: 'Allot Area'),
              vertPaddingBetweenSections(),
              Container(
                  alignment: Alignment.centerLeft,
                  child: TextFieldNoValidator(
                      width: 500, hintText: 'Warehouse Name')),
              vertPaddingBetweenSections(),
              SpaceSection(),
              vertPaddingBetweenSections(),
              LogisticsSection(),
              vertPaddingBetweenSections(),
              SubscriptionsSection(),
              vertPaddingBetweenSections(),
              Row(
                children: [
                  Switch(
                    activeColor: Colors.green,
                    onChanged: (bool value) {},
                    value: true,
                  ),
                  Text('Notify on Message'),
                ],
              ),
              Row(
                children: [
                  Switch(
                    activeColor: Colors.green,
                    onChanged: (bool value) {},
                    value: true,
                  ),
                  Text('Notify on Email'),
                ],
              ),
              vertPaddingBetweenSections(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  width: 125,
                  child: MaterialButton(
                    color: Colors.grey[850],
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'Add Staff',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ))));
  }
}

class SubscriptionsSection extends StatelessWidget {
  const SubscriptionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AllotSubHeadings(subHeadingText: 'Subscriptions'),
          vertPaddingBetweenHeadingContent(),
          TextFieldNoValidator(
            width: MediaQuery.of(context).size.width - 20,
            hintText: DateTime.now().toString(),
          ),
          paddingBetweenField(),
          DropdownButton(
            items: [],
            hint: Text('Every Month'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                items: [],
                hint: Text('1:00 PM'),
              ),
              paddingBetweenField(),
              DropdownButton(
                items: [],
                hint: Text('One Day'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LogisticsSection extends StatelessWidget {
  const LogisticsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AllotSubHeadings(subHeadingText: 'Logistics'),
          //vertPaddingBetweenField(),
          vertPaddingBetweenHeadingContent(),
          TextFieldIncDec(
              width: MediaQuery.of(context).size.width - 20,
              hintText: 'Cost Per Parcel'),
          vertPaddingBetweenField(),
          TextFieldNoValidator(
              width: MediaQuery.of(context).size.width - 20,
              hintText: 'Average Delivery / month'),
          vertPaddingBetweenField(),
          Align(
            alignment: Alignment.centerLeft,
            child: TextFieldNoValidator(
                width: MediaQuery.of(context).size.width - 20,
                hintText: 'Average Per Month'),
          ),
        ],
      ),
    );
  }
}

class SpaceSection extends StatelessWidget {
  const SpaceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AllotSubHeadings(subHeadingText: 'Space'),
          TextFieldNoValidator(
              width: MediaQuery.of(context).size.width - 20,
              hintText: 'Build up Area'),
          vertPaddingBetweenField(),
          TextFieldIncDec(
              width: MediaQuery.of(context).size.width - 20,
              hintText: 'Carpet Area'),
          vertPaddingBetweenField(),
          TextFieldIncDec(
              width: MediaQuery.of(context).size.width - 20,
              hintText: 'Rate per sqft'),
          vertPaddingBetweenField(),
          TextFieldNoValidator(
            width: MediaQuery.of(context).size.width - 20,
            hintText: 'Total Per Month ₹',
            textInputType: TextInputType.number,
          ),
          DropdownButton(items: [], hint: Text('Inclusive Tax')),
        ],
      ),
    );
  }
}

class TextFieldIncDec extends StatelessWidget {
  const TextFieldIncDec({Key? key, required this.width, required this.hintText})
      : super(key: key);
  final double width;
  final String hintText;

  Widget _incDec() {
    return Container(
      height: 10,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Icon(
                Icons.arrow_upward,
                size: 9,
              ),
            ),
            Container(
              child: Icon(
                Icons.arrow_downward,
                size: 9,
              ),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      child: TextFormField(
        validator: null,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          suffix: _incDec(),
          hintText: hintText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class TextFieldNoValidator extends StatelessWidget {
  const TextFieldNoValidator(
      {Key? key,
      required this.width,
      required this.hintText,
      this.textInputType})
      : super(key: key);

  final double width;
  final String hintText;
  final TextInputType? textInputType;

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
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class AllotSubHeadings extends StatelessWidget {
  const AllotSubHeadings({Key? key, required this.subHeadingText})
      : super(key: key);

  final String subHeadingText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            subHeadingText,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
          Switch(
            value: true,
            onChanged: (bool value) {},
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
