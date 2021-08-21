import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rapiddaddy/main.dart';
import 'package:rapiddaddy/widgets/InventaryScreen.dart';
import 'package:rapiddaddy/widgets/clientScreen.dart';
import 'package:rapiddaddy/widgets/warreScreen.dart';

class StudentDrawer extends StatefulWidget {
    const StudentDrawer({Key? key}) : super(key: key);

  @override
  _StudentDrawerState createState() => _StudentDrawerState();
}

class _StudentDrawerState extends State<StudentDrawer> {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      elevation: 10,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.white,
              leading: GestureDetector(onTap: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyHomePage(title: 'Rapid Daddy')));
                
              },
                              child: Icon(
                  Icons.home,
                  size: 28,
                  color: Colors.green,
                ),
              ),
              title: GestureDetector(onTap: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyHomePage(title: 'Rapid Daddy')));
                
              },child:Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.green,
                ),
                textAlign: TextAlign.start,
              )),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              leading: Icon(
                Icons.holiday_village,
                size: 26,
              ),
              title: Text(
                'WareHouse',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Profile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_add_alt,
                size: 26,
              ),
              title: Text(
                'Client',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Profile2()));
              },
            ),
             ListTile(
              leading: Icon(
                Icons.contact_page,
                size: 26,
              ),
              title: Text(
                'Inventary',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Profile3()));
              },
            ),
          ],
        ),
      ),
    );
  }
}