import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/api.dart';
import 'package:rapiddaddy/Inventary/addContact/addContact.dart';
import 'package:rapiddaddy/widgets/InventaryScreen.dart';

class Contact extends StatefulWidget {
  Contact({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

Widget xo() {
      return Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0,top:6.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.82,
          height: MediaQuery.of(context).size.height * 0.85,
          child: ListView.builder(
            itemCount:
                getallcontact.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 140  ,
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
                    Text("Contact id :"+getallcontact[index]["id"].toString(),style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17
                                        ),),
                    Text("Contact firm name :"+getallcontact[index]["firm_name"].toString(),style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15
                                        ),),
                   Text("Contact contact person :"+getallcontact[index]["contact_person"].toString(),style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15
                                        ),),
                    Text("Contact Country :"+getallcontact[index]["country"].toString(),style: TextStyle(
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
                            builder: (BuildContext context) => AddContactPage(ids:(index+1).toString())));
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
   GestureDetector(onTap: (){

          setState(() {
     //    deleteClient(index+1);
         
           });
        },
   child: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text("Delete ".toString(),style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 18
                                            ),),
   ),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton( onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Profile3()));
                
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
                            builder: (BuildContext context) => AddContactPage(ids:"")));
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
