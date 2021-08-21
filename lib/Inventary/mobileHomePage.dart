import 'package:flutter/material.dart';
import 'package:rapiddaddy/Inventary/addInventory/AddInventoryPage.dart';


//Currently the Mobile Home Page has nothing, it just redirects to Add Inventory's
// Content
class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return AddInventoryPage(
      title: widget.title,
    );
  }
}
