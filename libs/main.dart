import 'package:rapiddaddy/Common/AddTeam.dart';
import 'package:rapiddaddy/Common/ClientMobile.dart';
import 'package:rapiddaddy/Common/LoginandBilling.dart';
import 'package:rapiddaddy/Common/WareHouse.dart';
import 'package:rapiddaddy/Common/addWareHouse.dart';
import 'package:rapiddaddy/Common/api.dart';
import 'package:rapiddaddy/Common/rows.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/ClientMobile.dart';
import 'package:rapiddaddy/Common/api.dart';
import 'package:rapiddaddy/Mobile/addTeamMobile.dart';
import 'package:rapiddaddy/Mobile/allotareaMobile.dart';
import 'package:rapiddaddy/Mobile/create_clientMobile.dart';
import 'package:rapiddaddy/Mobile/owner_infoMobile.dart';
import 'addTeam.dart';
import 'allotarea.dart';
import 'create_client.dart';
import 'owner_info.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aim2Excel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: kIsWeb == true
          ? MyWebHomePage(title: 'Aim2Excel Demo')
          : MyMobilePage(title: 'Aim2Excel Demo'),
    );
  }
}

class MyMobilePage extends StatefulWidget {
  const MyMobilePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyMobilePageState createState() => _MyMobilePageState();
}

class _MyMobilePageState extends State<MyMobilePage> {
  bool isAllotExpanded = false;
  bool isOwnerExpanded = false;
  bool isClientExpanded = false;
  bool isAddTeamExpanded = false;
  bool isAddWareHouseExpanded = false;
  bool isWareHouseExpanded = false;
  bool isLogingExpanded=false;
  bool isTeamExpanded=false;
  bool isClient=false;
 
  @override
 void initState() {
    // TODO: implement initState
    print("running");
    asyncMethod();
    super.initState();
  }

  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 720,
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ExpansionPanelList(
                  elevation: 0,
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      switch (index) {
                        case 0:
                          isClientExpanded = !isClientExpanded;
                          break;
                          case 1:
                          isClient = !isClient;
                          break;
                        case 2:
                          isOwnerExpanded = !isOwnerExpanded;
                          break;
                        case 3:
                          isAllotExpanded = !isAllotExpanded;
                          break;
                        case 4:
                          isAddTeamExpanded = !isAddTeamExpanded;
                          break;
                        case 5:
                        isAddWareHouseExpanded= !isAddWareHouseExpanded;
                          break;
                        case 6:
                        isWareHouseExpanded= !isWareHouseExpanded;
                          break;
                        case 7:
                        isTeamExpanded= !isTeamExpanded;
                        break;
                        case 8:
                        isLogingExpanded= !isLogingExpanded;
                        break;
                        default:
                      }
                    });
                  },
                  children: [
                    ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isClientExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Create Client",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: CreateClientMobile(ids:"")),
                         ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isClient,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Client",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: ClientMobile()),
                    ExpansionPanel(
                      backgroundColor: Colors.blueGrey[50],
                      isExpanded: isOwnerExpanded,
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          color: Colors.grey[800],
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                "Owner Information",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        );
                      },
                      body: OwnerInfoMobile(),
                    ),
                    ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isAllotExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Allot Area",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: AllotAreaMobile()),
                    ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isAddTeamExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Add Team",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: AddTeamMobile()),
                           ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isAddWareHouseExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Add Ware house",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: AddWareHouse(ids:"")
                        ),
   ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isWareHouseExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Ware house",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: WareHouses()),

ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isTeamExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Add Team",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: AddTeam2()),
                        ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isLogingExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Login & Billing",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: Login()),
                  ],
                ),
 //Others(),
                //CreateClient(),
                //OwnerInfo(),
                //AllotArea()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyWebHomePage extends StatefulWidget {
  MyWebHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyWebHomePageState createState() => _MyWebHomePageState();
}

class _MyWebHomePageState extends State<MyWebHomePage> {
  bool isAllotExpanded = false;
  bool isOwnerExpanded = false;
  bool isClientExpanded = false;
  bool isAddTeamExpanded = false;
  bool isAddWareHouseExpanded = false;
  bool isWareHouseExpanded = false;
  bool isLogingExpanded=false;
  bool isTeamExpanded=false;
  bool isClient=false;
  
  @override
   void initState() {
    // TODO: implement initState
    print("running");
    asyncMethod();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 720,
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ExpansionPanelList(
                  elevation: 0,
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      switch (index) {
                        case 0:
                          isClientExpanded = !isClientExpanded;
                          break;
                          case 1:
                          isClient = !isClient;
                          break;
                        case 2:
                          isOwnerExpanded = !isOwnerExpanded;
                          break;
                        case 3:
                          isAllotExpanded = !isAllotExpanded;
                          break;
                        case 4:
                          isAddTeamExpanded = !isAddTeamExpanded;
                          break;
                        case 5:
                        isAddWareHouseExpanded= !isAddWareHouseExpanded;
                          break;
                        case 6:
                        isWareHouseExpanded= !isWareHouseExpanded;
                          break;
                        case 7:
                        isTeamExpanded= !isTeamExpanded;
                        break;
                        case 8:
                        isLogingExpanded= !isLogingExpanded;
                        break;
                        default:
                      }
                    });
                  },
                  children: [
                    ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isClientExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Create Client",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: CreateClient()),
                     ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isClient,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Client",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: ClientMobile()),
                    ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isOwnerExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Owner Information",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: OwnerInfo()),
                    ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isAllotExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Allot Area",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: AllotArea()),
                    ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isAddTeamExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Add Team",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: AddTeam()),
                       ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isAddWareHouseExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Add Ware house",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: AddWareHouse(ids:"")),
   ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isWareHouseExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Ware house",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: WareHouses()),

ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isTeamExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Add Team",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: AddTeam2()),
                        ExpansionPanel(
                        backgroundColor: Colors.blueGrey[50],
                        isExpanded: isLogingExpanded,
                        canTapOnHeader: true,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            color: Colors.grey[800],
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Login & Billing",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        },
                        body: Login()),
                  ],
                ),
                 
                //CreateClient(),
                //OwnerInfo(),
                //AllotArea()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
