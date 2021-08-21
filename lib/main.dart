import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/api.dart';
import 'package:rapiddaddy/Inventary/mobileHomePage.dart';
import 'package:rapiddaddy/widgets/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: 
 //     MobileHomePage(title: "INVENTARY",),
      MyHomePage(title: 'Rapid Daddy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  
   void initState() {
    // TODO: implement initState
    print("running");
    asyncMethod();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: StudentDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
          ],
        ),
      ),
    );
  }
}
