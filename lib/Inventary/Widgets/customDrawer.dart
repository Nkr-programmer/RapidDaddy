import 'package:flutter/material.dart';

// importing google fonts package
import 'package:google_fonts/google_fonts.dart';
import 'package:rapiddaddy/Inventary/purchaseOrder/purchaseOrderPage.dart';

//importing the files of different pages
import '../AddInventory/AddInventoryPage.dart';
import '../addContact/addContact.dart';

//Returns a ListTile to be used as an element of the drawer
ListTile _drawerListMaker(String _titleText, Icon _leadingIcon) {
  return ListTile(
    title: Text(
      _titleText,
      style: GoogleFonts.poppins(fontSize: 18, color: Colors.black87),
    ),
    leading: _leadingIcon,
  );
}

// Returns a clickable ListTile with a destination widget
GestureDetector _clickableDrawerTiles(
    BuildContext _context, String _label, Widget _destinationWidget) {
  return GestureDetector(
      onTap: () {
        Navigator.push(_context,
            MaterialPageRoute(builder: (context) => _destinationWidget));
      },
      child: _drawerListMaker(_label, Icon(Icons.health_and_safety)));
}

// Custom Navigation Drawer
class CustomDrawerMobile extends StatelessWidget {
  const CustomDrawerMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // logo?
          DrawerHeader(
              child: Container(
            color: Colors.green,
            child: Text('hehe'),
          )),
          _clickableDrawerTiles(
              context, 'Inventory', AddInventoryPage(title: 'MobilePage')),
          // _clickableDrawerTiles(context, 'Purchase Order',
          //     PurchaseOrderPage(title: 'Purchase Order')),
          // _clickableDrawerTiles(
          //     context, 'Add Contact', AddContactPage(title: 'Purchase Order')),

          //Extra ListTiles that were given the figma file but idk if I should use them so they are commented
          // _drawerListMaker('Warehouse', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Client', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Employee', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Subscription Plan', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Set KPI', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Account', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Inventory', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Monthly Analytics', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Social', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Assign Job', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Report', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Ticket', Icon(Icons.health_and_safety)),
          // _drawerListMaker('To Do', Icon(Icons.health_and_safety)),
          // _drawerListMaker('File Manager', Icon(Icons.health_and_safety)),
          // _drawerListMaker('Support', Icon(Icons.chat_bubble_outline_rounded)),
          // _drawerListMaker('Sign Out', Icon(Icons.logout_rounded)),
        ],
      ),
    );
  }
}
