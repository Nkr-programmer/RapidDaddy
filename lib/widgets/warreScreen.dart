import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/AddTeam.dart';
import 'package:rapiddaddy/Common/LoginandBilling.dart';
import 'package:rapiddaddy/widgets/AddWare.dart';
import 'package:rapiddaddy/widgets/drawer.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( drawer: StudentDrawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("WareHouse"),
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
                
                // color: Colors.orange[100],
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
              leading: Icon(Icons.holiday_village_sharp),
              onTap: (){
                setState(() {

             
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(title:"Ware House")));
              

                });
              },
              title: Text("WareHose"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.group),
               onTap: (){
                setState(() {

             
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AddTeam2()));
              

                });
              },
              title: Text("Team"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.login),
               onTap: (){
                setState(() {

             
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Login()));
              

                });
              },
              title: Text("Login and Biling"),
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

  // Widget _settingsCard() {
  //   return Padding(
  //     padding: const EdgeInsets.only(left:8.0,right:8.0,bottom:8.0),
  //     child: Card(
  //       elevation: 4,
  //       child: Column(
  //         children: [
  //           //row for each deatails
  //           ListTile(
  //             leading: Icon(Icons.settings),
  //             title: Text("Settings"),
  //           ),
  //           Divider(
  //             height: 0.6,
  //             color: Colors.black87,
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.dashboard_customize),
  //             title: Text("About Us"),
  //           ),
  //           Divider(
  //             height: 0.6,
  //             color: Colors.black87,
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.topic),
  //             title: Text("Change Theme"),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

//   Widget logoutButton() {
//     return InkWell(
//       onTap: () {},
//       child: Container(
//           color: Colors.orange,
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.logout,
//                   color: Colors.white,
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   "Logout",
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 )
//               ],
//             ),
//           )),
//     );
//   }
 }