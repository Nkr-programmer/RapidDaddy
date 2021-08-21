
import 'package:flutter/material.dart';
import 'package:rapiddaddy/widgets/clientScreen.dart';

import 'widget_vault.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({Key? key}) : super(key: key);

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
        title: Text( "Owner"),
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 100),
          width: 720,
          child: Column(
            children: [
              OwnerDetail(),
              vertPaddingBetweenSections(),
              PartyTiedUpWith(),
              vertPaddingBetweenSections(),
              InterestedBrand(),
              vertPaddingBetweenSections(),
              PartyBankDetail(),
            ],
          ),
            ),
        ),
      ));
  }
}

class PartyBankDetail extends StatelessWidget {
  const PartyBankDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
//mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.food_bank,
                color: Colors.green,
              ),
              Text('Party Bank Detail'),
            ],
          ),
          vertPaddingBetweenHeadingContent(),
          Row(
            children: [
              TextFieldNoValidator(
                width: 200,
                hintText: 'Ifsc Code',
                prefixIcon: Icon(Icons.search),
              ),
              paddingBetweenField(),
              TextFieldNoValidator(
                width: 200,
                hintText: 'Bank Name',
                prefixIcon: Icon(Icons.money),
              ),
            ],
          ),
          vertPaddingBetweenField(),
          Container(
              alignment: Alignment.centerLeft,
              child:
                  TextFieldNoValidator(width: 500, hintText: 'Account Name')),
          vertPaddingBetweenField(),
          Row(
            children: [
              TextFieldNoValidator(
                hintText: 'Account Number',
                width: 200,
              ),
              paddingBetweenField(),
              TextFieldNoValidator(width: 200, hintText: 'Branch'),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: DropdownButton(
              //icon: Icon(Icons.payment),
              hint: Text('Pay In'),
              items: [],
            ),
          ),
        ],
      ),
    );
  }
}

class InterestedBrand extends StatelessWidget {
  const InterestedBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.category,
                color: Colors.green,
              ),
              Text('Interested Brand'),
            ],
          ),
          vertPaddingBetweenHeadingContent(),
          Row(
            children: [
              TextFieldNoValidator(
                width: 300,
                hintText: 'Brand',
                prefixIcon: Icon(Icons.public),
                suffixIcon: Icon(
                  Icons.add,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PartyTiedUpWith extends StatelessWidget {
  const PartyTiedUpWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.business,
                color: Colors.green,
              ),
              Text('Party Tiedup With'),
            ],
          ),
          vertPaddingBetweenHeadingContent(),
          Row(
            children: [
              TextFieldNoValidator(
                width: 200,
                hintText: "Brand",
                prefixIcon: Icon(Icons.public),
              ),
              paddingBetweenField(),
              TextFieldNoValidator(
                width: 200,
                hintText: "Product",
                prefixIcon: Icon(Icons.shopping_bag),
                suffixIcon: Icon(Icons.add),
              ),
              paddingBetweenField(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 24,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class OwnerDetail extends StatelessWidget {
  const OwnerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeadingArea(headingIcon: Icons.person, headingText: 'Owner Detail'),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldNoValidator(
                width: 250,
                hintText: 'User Name',
                prefixIcon: Icon(Icons.search),
              ),
              paddingBetweenField(),
              DropdownButton(
                items: [],
                hint: Text('Designation'),
              ),
            ],
          ),
          vertPaddingBetweenField(),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldNoValidator(
                  width: 250,
                  hintText: 'Password',
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: Icon(Icons.visibility_rounded)),
              paddingBetweenField(),
            ],
          ),
          vertPaddingBetweenField(),
          Row(
            children: [
              TextFieldNoValidator(
                width: 200,
                hintText: 'Mobile Number',
                textInputType: TextInputType.number,
                suffixIcon: Icon(Icons.add),
              ),
              paddingBetweenField(),
              TextFieldNoValidator(
                width: 200,
                hintText: 'Phone Number',
                textInputType: TextInputType.number,
              ),
            ],
          ),
          vertPaddingBetweenField(),
          Container(
            alignment: Alignment.centerLeft,
            child: TextFieldNoValidator(
              width: 500,
              hintText: 'username@deomain.com',
              textInputType: TextInputType.emailAddress,
              suffixIcon: Icon(Icons.alternate_email),
            ),
          ),
        ],
      ),
    );
  }
}
