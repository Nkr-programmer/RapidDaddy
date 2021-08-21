import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/api.dart';
import 'package:rapiddaddy/widgets/AddWare.dart';

class AddWareHouse extends StatefulWidget {
  const AddWareHouse({Key? key,required this.ids}) : super(key: key);
final String ids;
  @override
  _AddWareHouseState createState() => _AddWareHouseState();
}

class _AddWareHouseState extends State<AddWareHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading:IconButton( onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HomePage(title:"Ware House")));
                
              }, icon: Icon(Icons.arrow_back),) ,
        title: Text( "Add Ware House"),
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             WareHouse(ids:widget.ids),
            ],
          ),
            ),
        ),
      ));
  }
}
class WareHouse extends StatefulWidget {
  const WareHouse({Key? key,required this.ids}) : super(key: key);
final String ids;
  @override
  _WareHouseState createState() => _WareHouseState();
}

class _WareHouseState extends State<WareHouse> {
  @override
  
   bool isClientExpanded = false;



  final _formKey1 = GlobalKey<FormState>();
  TextEditingController crp=TextEditingController();
  TextEditingController sellp=TextEditingController();

TextEditingController code=TextEditingController();
TextEditingController name=TextEditingController();
TextEditingController area=TextEditingController();
TextEditingController mng=TextEditingController();
TextEditingController cost=TextEditingController();
TextEditingController di=TextEditingController();
TextEditingController id=TextEditingController();


TextEditingController add=TextEditingController();
TextEditingController str=TextEditingController();
TextEditingController pin=TextEditingController();
TextEditingController state=TextEditingController();
TextEditingController cit=TextEditingController();
TextEditingController pho=TextEditingController();
TextEditingController mob=TextEditingController();
TextEditingController email=TextEditingController();
int kn=-1,vn=-1;
  int carpet=0;
  int sellprice=0;
  String cityvalue="Mumbai";
  List city=['Mumbai', 'Delhi', 'Odisha','Bangalore'];
  String bloodgroupvalue="Electronic & Telecommunication";
  List bloodgroup=['Electronic & Telecommunication', 'Computer Science', 'Metallurgy','Chemical'];

  String designationvalue="Manager";
  List designation=['Manager', 'Assistant', 'HR'];
List x=[];

 void initState() {
 if(widget.ids.length!=0){
 code.text=getallwarehouse[int.parse(widget.ids)-1]["warehouse_code"].toString();
                      name.text=getallwarehouse[int.parse(widget.ids)-1]["warehouse_name"].toString();
                       area.text=getallwarehouse[int.parse(widget.ids)-1]["warehouse_area"].toString();
                       mng.text=getallwarehouse[int.parse(widget.ids)-1]["warehouse_manager_assign"].toString();
                       cost.text=getallwarehouse[int.parse(widget.ids)-1]["purchase_cost"].toString();
                       di.text=getallwarehouse[int.parse(widget.ids)-1]["dealing_industry"].toString();
                       if(di.text.toString()==bloodgroup[0].toString()){bloodgroupvalue=di.toString();}
                       else if(di.text.toString()==bloodgroup[1].toString()){bloodgroupvalue=di.toString();}
                       else if(di.text.toString()==bloodgroup[2].toString()){bloodgroupvalue=di.toString();}
                       else if(di.text.toString()==bloodgroup[3].toString()){bloodgroupvalue=di.toString();}
                       

                       add.text=getallwarehouse[int.parse(widget.ids)-1]["warehouse_address"].toString();
                       cit.text=getallwarehouse[int.parse(widget.ids)-1]["city"].toString();
                       state.text=getallwarehouse[int.parse(widget.ids)-1]["state"].toString();
                       pin.text=getallwarehouse[int.parse(widget.ids)-1]["zip_code"].toString();
                      

 }    
    super.initState();
  }

 int h=0;
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

                        Text("Enter the required information below to register. You can change it anytime you want.",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,

                                  child:  TextFormField( 
                                  controller: name,
                                  onChanged: (value){
                                 setState(() {
                                    print(name.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Warehouse Name",
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:  vn==1&&name.text.toString()==""?Colors.red: Colors.grey
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
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.35,
                                  child: TextFormField(
                                    controller: code,
                                  onChanged: (value){
                                 setState(() {
                                    print(code.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,    decoration: InputDecoration(
                                         hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:  vn==1&&code.text.toString()==""?Colors.red: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Warehouse Code",
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
                              ],
                            ),

                            SizedBox(
                              height: 10,
                            ),




                            Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: TextFormField( textInputAction: TextInputAction.next,
                              controller: mng,
                                  onChanged: (value){
                                 setState(() {
                                    print(mng.text);
                                 });
                                 
                                  },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    hintText: "Ware House Maneger",
                                    hintStyle: TextStyle(
                                        color: vn==1&&mng.text.toString()==""?Colors.red: Colors.grey,
                                        fontSize: 12
                                    ),
                                    suffixIcon: Icon(Icons.manage_accounts,color: vn==1&&mng.text.toString()==""?Colors.red: Colors.grey,),
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

                            SizedBox(
                              height: 10,
                            ),



                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.67,

                                  child:  TextFormField(
                                    textInputAction: TextInputAction.go,
                                  controller: area,
                                  onChanged: (value){
                                 setState(() {
                                    print(area.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        labelText: "Build up Area",
                                        labelStyle: TextStyle(
                                            color:   vn==1&&area.text.toString()==""?Colors.red: Colors.grey,
                                            fontSize: 15
                                        ),
                                         hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:  vn==1&&area.text.toString()==""?Colors.red: Colors.grey
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
                              ],
                            ),

                            SizedBox(
                              height: 10,
                            ),



                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.6,

                                  child:  TextFormField(
                                     controller: cost,
                                  onChanged: (value){
                                 setState(() {
                                    print(cost.text);
                                 });
                                 
                                  },
                                     textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        labelText: "Purchase Cost/Sq ft",
                                        labelStyle: TextStyle(
                                            color: vn==1&&cost.text.toString()==""?Colors.red: Colors.grey,
                                            fontSize: 12
                                        ),
                                        
                                        suffixIcon: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Rs")
                                          ],
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
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),


                            SizedBox(
                              height: 20,
                            ),



                            Text("Dealing Indutry ",style: TextStyle(fontWeight:FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width*0.75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                      color: vn==1&&di.text.toString()==""?Colors.red: Colors.grey
                                  )
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: Container(
                                ),

                                hint: Icon(Icons.arrow_drop_down_outlined,color: Colors.red,),

                                value: bloodgroupvalue,
                                onChanged: (newval){
                                  setState(() {
                                    bloodgroupvalue=newval.toString();
                                    di.text=bloodgroupvalue;
                                    print(di.text);x.clear();
                                  });
                                },
                                items:bloodgroup.map((e){
                                  return DropdownMenuItem(child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                    ),
                                  ),value: e,);
                                }).toList(),
                              ),
                            ),


                            SizedBox(
                              height: 20,
                            ),


                            Row(
                              children: [
                                Icon(Icons.location_on,color: Colors.green,),
                                SizedBox(
                                  width: 10,
                                ),

                                Text("Warehouse Address",style: TextStyle(fontWeight:FontWeight.bold),),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),


                            TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                               controller: add,
                                  onChanged: (value){
                                 setState(() {
                                    print(add.text);
                                 });
                                 
                                  },
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "Industry Name, Gala No, Land mar",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15
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


                            SizedBox(
                              height: 10,
                            ),


                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.32,

                                  child:  TextFormField( textInputAction: TextInputAction.next,
                                   controller: pin,
                                  onChanged: (value){
                                 setState(() {
                                    print(pin.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Pincode",
                                        suffixIcon: Icon(Icons.location_searching),
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
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                          color: Colors.grey
                                      )
                                  ),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    underline: Container(
                                    ),
                                    hint: Text("Mumbai",style: TextStyle(color: Colors.grey),),
                                    value: cityvalue,
                                    onChanged: (newval){
                                      setState(() {
                                        cityvalue=newval.toString();
                                        print(cityvalue);
                                        cit.text=cityvalue;
                                      });
                                    },
                                    items:city.map((e){
                                      return DropdownMenuItem(child:Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                        ),
                                      ),value: e,);
                                    }).toList(),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.20,

                                  child:  TextFormField( textInputAction: TextInputAction.next,
                                   controller: state,
                                  onChanged: (value){
                                 setState(() {
                                    print(state.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "State",
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

                              ],
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
                                setState(() {
                                  if(mng.text.toString()==""||code.text.toString()==""||name.text.toString()==""||area.text.toString()==""||cost.text.toString()==""||di.text.toString()=="")
 {vn=1;}
 else {vn=0;
 print(widget.ids.toString());
 if(widget.ids.length!=0){x.add(widget.ids);}
                       x.add(code.text);
                       x.add(name.text);
                       x.add(area.text);
                       x.add(mng.text);
                       x.add(cost.text);
                       x.add(di.text);  

                       x.add(add.text);
                       x.add(cit.text);
                       x.add(state.text);
                       x.add(pin.text);
                       x.add("India");  
                       print(x.toString());
                 if(code.text.toString()=="")print("yes"); else print(" no"); 
List y=[];y.clear();y=x;
Fluttertoast.showToast(  
        msg: 'Adding',  
        toastLength: Toast.LENGTH_SHORT,  
        gravity: ToastGravity.BOTTOM,  
        timeInSecForIos: 1,  
        backgroundColor: Colors.red,  
        textColor: Colors.yellow  
    );  
 
 if(x.length==11)addWarehouse(y); else EditWarehouse(y);

                  Fluttertoast.showToast(  
        msg: 'Done',  
        toastLength: Toast.LENGTH_SHORT,  
        gravity: ToastGravity.BOTTOM,  
        timeInSecForIos: 1,  
        backgroundColor: Colors.red,  
        textColor: Colors.yellow  
    );  
  
 }
         
                                });
                                
                              },

                                
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                  )),
                                  backgroundColor:MaterialStateProperty.all(Colors.green),
                                ),
                                child: Text(widget.ids.length!=0?"Edit WareHouse": "Add WareHouse"),
                              ),
                            ),
                          ),



                          ],
                        ),



                      ],
                    ),
                  ),
                );


  }
}




                                // SizedBox(
                                //   width: 10,
                                // ),
                                // Container(
                                //   width: MediaQuery.of(context).size.width*0.37,
                                //   child: TextFormField( textInputAction: TextInputAction.next,
                                //     controller: crp..text="$carpet",
                                //     keyboardType: TextInputType.number,

                                //     decoration: InputDecoration(
                                //         hintStyle: TextStyle(
                                //             fontSize: 15.0,
                                //             color: Colors.grey
                                //         ),
                                //         labelText: "Carpet Area",
                                //         labelStyle: TextStyle(
                                //             color: Colors.grey,
                                //             fontSize: 15
                                //         ),
                                //         contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                //         hintText: "Carpet Area",

                                //         suffixIcon: Column(
                                //           children: [
                                //             GestureDetector(
                                //                 onTap: (){
                                //                   setState(() {
                                //                     carpet=int.parse(crp.text);
                                //                     carpet++;
                                //                     print(carpet);
                                //                     crp.text=carpet.toString();
                                //                   });
                                //                 },
                                //                 child: Icon(Icons.keyboard_arrow_up_sharp,color: Colors.grey,)),
                                //             GestureDetector(
                                //                 onTap: (){
                                //                   setState(() {
                                //                     carpet=int.parse(crp.text);
                                //                     carpet--;
                                //                     crp.text=carpet.toString();
                                //                   });
                                //                 },
                                //                 child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,))
                                //           ],
                                //         ),
                                //         border: new OutlineInputBorder(
                                //           borderRadius: BorderRadius.circular(12.0),
                                //         ),
                                //         focusedBorder: OutlineInputBorder(
                                //             borderRadius: BorderRadius.circular(12.0),
                                //             borderSide: BorderSide(
                                //                 color: Colors.green
                                //             )
                                //         )
                                //     ),
                                //   ),
                                // ),
                                
                                // Container(
                                //   width: MediaQuery.of(context).size.width*0.37,
                                //   child: TextFormField( textInputAction: TextInputAction.next,
                                //     keyboardType: TextInputType.number,
                                //     controller: sellp..text="$sellprice",
                                //     decoration: InputDecoration(
                                //         labelText: "Sell Prize/Sq ft",
                                //         labelStyle: TextStyle(
                                //             color: Colors.grey,
                                //             fontSize: 15
                                //         ),
                                //         hintStyle: TextStyle(
                                //             fontSize: 15.0,
                                //             color: Colors.grey
                                //         ),
                                //         contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                //         hintText: "Sell Prize/Sq ft",

                                //         suffixIcon: Column(
                                //           children: [
                                //             GestureDetector(
                                //                 onTap: (){
                                //                   setState(() {
                                //                     sellprice=int.parse(sellp.text);
                                //                     sellprice++;
                                //                     sellp.text=sellprice.toString();
                                //                   });
                                //                 },
                                //                 child: Icon(Icons.keyboard_arrow_up_sharp,color: Colors.grey,)),
                                //             GestureDetector( onTap: (){
                                //               setState(() {
                                //                 sellprice=int.parse(sellp.text);
                                //                 sellprice--;
                                //                 sellp.text=sellprice.toString();
                                //               });
                                //             },child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,))
                                //           ],
                                //         ),
                                //         border: new OutlineInputBorder(
                                //           borderRadius: BorderRadius.circular(12.0),
                                //         ),
                                //         focusedBorder: OutlineInputBorder(
                                //             borderRadius: BorderRadius.circular(12.0),
                                //             borderSide: BorderSide(
                                //                 color: Colors.green
                                //             )
                                //         )
                                //     ),
                                //   ),
                                // ),