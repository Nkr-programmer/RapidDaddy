import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/api.dart';

class   ClientMobile extends StatelessWidget {
  const ClientMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Client(),
        ],
      ),
    );
  }
}
class Client extends StatefulWidget {
  const Client({ Key? key }) : super(key: key);

  @override
  _ClientState createState() => _ClientState();
}

class _ClientState extends State<Client> {
  
     @override
  TextEditingController id= TextEditingController();
    int h=0;
    int g=0;
    List x=[];
     void initState() {
    // TODO: implement initState
    print("running");
    if(getallclient.toString()=="null"){
      setState(() {
        
      });
    }
    super.initState();
  }
  Widget build(BuildContext context) {
   
    return 
                Container(
                  //  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child:Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            GestureDetector(
                              
                              child: Icon(Icons.house_siding,color: Colors.green,size: 50,)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Client Information",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Text("Show the required information below about Clients. You can change it anytime you want in Create Client Section.",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                         Text("**Enter the ID for getting desired Client Detail.",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                         SizedBox(
                          height: 10,
                        ),
   Container(
                                  width: MediaQuery.of(context).size.width*0.57,

                                  child:  TextFormField( 
                                  controller: id,
                                  onChanged: (value){
                                 setState(() {
                                   print("hello"+id.text.length.toString());
                                    print(id.text);
                                        print(getallclient.length.toString());
                                        if(id.text==""){h=0;}else
                                    {     h=getallclient.length-int.parse(id.text);
                                         g=int.parse(id.text);}
                                        print(h.toString());
                                      //  x.clear();
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Client ID",
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                            borderSide: BorderSide(
                                                color: Colors.green
                                            )
                                        )
                                    ),
                                  ),
                                ),
                       id.text==""||(h>=0&&h<getallclient.length)?SizedBox(
                          height: 10,
                        ): Text("**Please type number between 1 to ${getallclient.length} only.",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                         SizedBox(
                          height: 10,
                        ),
                        
                        SizedBox(
                          height: 10,
                        ),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 40  ,
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                  )),
                                  backgroundColor:MaterialStateProperty.all(Colors.white),
                                ),
                                child: (getallclient.toString()=="null")?Text("Client id =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("Client id ="+ 
                                getallclient[(id.text!=""&&h>=0&&h<getallclient.length)?(g-1):0]["userid"].toString()
                                ,style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),),
                              ),
                            ),
                          ),
                          
                        SizedBox(
                          height: 10,
                        ),

                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 40  ,
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                  )),
                                  backgroundColor:MaterialStateProperty.all(Colors.white),
                                ),
                                child:  (getallclient.toString()=="null")?Text("Client Company =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("Client Company ="+
                                getallclient[id.text!=""&&h>=0&&h<getallclient.length?(g-1):0]["company"].toString(),style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),),
                              ),
                            ),
                          ),
                          
                        SizedBox(
                          height: 10,
                        ),

                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 40  ,
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                  )),
                                  backgroundColor:MaterialStateProperty.all(Colors.white),
                                ),
                                child:  (getallclient.toString()=="null")?Text("Client date  Created =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("Client date  Created ="
                                +
                                getallclient[id.text!=""&&h>=0&&h<getallclient.length?(g-1):0]["datecreated"].toString(),style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),),
                              ),
                            ),
                          ),
                          
                        SizedBox(
                          height: 10,
                        ),

                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 40  ,
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                  )),
                                  backgroundColor:MaterialStateProperty.all(Colors.white),
                                ),
                                child:  (getallclient.toString()=="null")?Text("Client PhoneNo =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("Client PhoneNo ="+
                                getallclient[id.text!=""&&h>=0&&h<getallclient.length?(g-1):0]["phonenumber"].toString(),style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),),
                              ),
                            ),
                          ),
                          
                        SizedBox(
                          height: 10,
                        ),

                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 40  ,
                              child: ElevatedButton(
                                onPressed: (){
                                },
                                
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                  )),
                                  backgroundColor:MaterialStateProperty.all(Colors.white),
                                ),
                                child:  (getallclient.toString()=="null")?Text("Client Type =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("Client Type ="+
                                getallclient[id.text!=""&&h>=0&&h<getallclient.length?(g-1):0]["client_type"].toString(),style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),),
                              ),
                            ),
                          ),
                          
                          
                        SizedBox(
                          height: 10,
                        ),

                          ]),


                      ]),),);
}}

  