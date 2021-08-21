import 'package:flutter/material.dart';
import 'package:rapiddaddy/widgets/Inventary.dart';
import 'package:rapiddaddy/widgets/contact.dart';
import 'package:rapiddaddy/widgets/drawer.dart';
import 'package:rapiddaddy/widgets/purchase.dart';

class Profile3 extends StatefulWidget {
  static const routeName = "/profile";

  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( drawer: StudentDrawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Inventary"),
      ),
      body: SafeArea(
          child: Column(
        children: [
        
          SizedBox(
            height: 14,
          ),
          
          _detailsCard(),
         
          Spacer(),
        ],
      )),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
                
                ),
          ),
        ),
      ],
    );
  }


  Widget _heading(String heading) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Text(
        heading,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _detailsCard() {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right:8.0,top:8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.people),
              onTap: (){
                setState(() {

             
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Contact(title:"Contact")));
              

                });
              },
              title: Text("Contact"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.gpp_good_outlined),
               onTap: (){
                setState(() {

             
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Purchase(title:"Purchase")));
              

                });
              },
              title: Text("Purchase"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.landscape),
               onTap: (){
                setState(() {

             
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Inventary(title:"Inventary")));
              

                });
              },
              title: Text("Inventary"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}