
import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/addWareHouse.dart';
import 'package:rapiddaddy/Common/api.dart';
import 'package:rapiddaddy/widgets/warreScreen.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

Widget xo() {
      return Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0,top:6.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.82,
          height: MediaQuery.of(context).size.height * 0.85,
          child: ListView.builder(
            itemCount:
                getallwarehouse.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 120  ,
                                   child: ElevatedButton(onPressed: (){},
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12.0)
                                      )),
                                      backgroundColor:MaterialStateProperty.all(Colors.white),
                                    ),
                                    child: Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("WareHouse id :"+getallwarehouse[index]["warehouse_id"].toString(),style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17
                                        ),),
                    Text("Warehouse Name :"+getallwarehouse[index]["warehouse_name"].toString(),style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15
                                        ),),
                   Text("WareHouse code :"+getallwarehouse[index]["warehouse_code"].toString(),style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15
                                        ),),
                    Text("Warehouse Area :"+getallwarehouse[index]["warehouse_area"].toString(),style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15
                                        ),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
 GestureDetector(onTap: (){

          setState(() {
            Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AddWareHouse(ids:getallwarehouse[index]["warehouse_id"].toString())));
          });
        },
   child: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text("Edit ".toString(),style: TextStyle(
                                                color: Colors.pink,
                                                fontSize: 18
                                            ),),
   ),
 ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Delete ",style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 18
                                          ),),
                   ),
                   

                                        ],)
                    ],
                  ),
                                  ),
                
                ),
              );
            },
          ),
        ),
      );
    }
  @override

 void initState() {
    // TODO: implement initState
//    asyncMethod();
setState(() {
  print(getallwarehouse);
});
    
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton( onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Profile()));
                
              }, icon: Icon(Icons.arrow_back),) ,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[
          xo(),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AddWareHouse(ids:"")));
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
