import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/api.dart';

class WareHouses extends StatelessWidget {
  const WareHouses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         House(),
        ],
      ),
    );
  }
}
class House extends StatefulWidget {
  const House({ Key? key }) : super(key: key);

  @override
  _HouseState createState() => _HouseState();
}

class _HouseState extends State<House> {
  TextEditingController id= TextEditingController();
    int h=0;
    int g=0;
    List x=[];
     @override
        void initState() {
    // TODO: implement initState
    print("running");
    if(getallwarehouse.toString()=="null"){
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
                            Text("Ware House Information",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Text("Show the required information below about WareHouses. You can change it anytime you want in Add WareHouse Section.",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                         Text("**Enter the ID for getting desired WareHouse Detail.",
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
                                        print(getallwarehouse.length.toString());
                                        if(id.text==""){h=0;}else
                                    {     h=getallwarehouse.length-int.parse(id.text);
                                         g=int.parse(id.text);}
                                        print(h.toString());
                                      //  x.clear();
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Warehouse ID",
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
                       id.text==""||(h>=0&&h<getallwarehouse.length)?SizedBox(
                          height: 10,
                        ): Text("**Please type number between 1 to ${getallwarehouse.length} only.",
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
                                child: (getallwarehouse.toString()=="null")?Text("WareHouse id =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("WareHouse id ="+ 
                                getallwarehouse[(id.text!=""&&h>=0&&h<getallwarehouse.length)?(g-1):0]["warehouse_id"].toString()
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
                                child:  (getallwarehouse.toString()=="null")?Text("WareHouse name =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("WareHouse name ="+getallwarehouse.toString()=="null"?"":
                                getallwarehouse[id.text!=""&&h>=0&&h<getallwarehouse.length?(g-1):0]["warehouse_name"].toString(),style: TextStyle(
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
                                child:  (getallwarehouse.toString()=="null")?Text("WareHouse code =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("WareHouse code ="
                                +getallwarehouse.toString()=="null"?"":getallwarehouse[id.text!=""&&h>=0&&h<getallwarehouse.length?(g-1):0]["warehouse_code"].toString(),style: TextStyle(
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
                                child:  (getallwarehouse.toString()=="null")?Text("WareHouse area =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("WareHouse area ="+getallwarehouse.toString()=="null"?"":
                                getallwarehouse[id.text!=""&&h>=0&&h<getallwarehouse.length?(g-1):0]["warehouse_area"].toString(),style: TextStyle(
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
                                child:  (getallwarehouse.toString()=="null")?Text("WareHouse manager =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("WareHouse manager ="+getallwarehouse.toString()=="null"?"":
                                getallwarehouse[id.text!=""&&h>=0&&h<getallwarehouse.length?(g-1):0]["warehouse_manager_assign"].toString(),style: TextStyle(
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
                                child:  (getallwarehouse.toString()=="null")?Text("WareHouse cost =",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                    ),):Text("WareHouse cost ="+getallwarehouse.toString()=="null"?"":
                                getallwarehouse[id.text!=""&&h>=0&&h<getallwarehouse.length?(g-1):0]["purchase_cost"].toString(),style: TextStyle(
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