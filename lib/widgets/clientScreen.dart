import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/AddTeam.dart';
import 'package:rapiddaddy/Common/LoginandBilling.dart';
import 'package:rapiddaddy/Mobile/allotareaMobile.dart';
import 'package:rapiddaddy/Mobile/owner_infoMobile.dart';
import 'package:rapiddaddy/widgets/AddWare.dart';
import 'package:rapiddaddy/widgets/Client.dart';
import 'package:rapiddaddy/widgets/drawer.dart';

class Profile2 extends StatefulWidget {
  static const routeName = "/profile";

  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( drawer: StudentDrawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Client"),
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
                        builder: (BuildContext context) => Client(title:"Client")));
              

                });
              },
              title: Text("Client"),
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
                        builder: (BuildContext context) => OwnerInfoMobile()));
              

                });
              },
              title: Text("Owner"),
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
                        builder: (BuildContext context) => AllotAreaMobile()));
              

                });
              },
              title: Text("Alot Area"),
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