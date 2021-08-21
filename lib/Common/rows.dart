import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Others extends StatefulWidget {
  const Others({ Key? key }) : super(key: key);

  @override
  _OthersState createState() => _OthersState();
}

class _OthersState extends State<Others> {

   bool isClientExpanded = false;



  final _formKey1 = GlobalKey<FormState>();
  TextEditingController crp=TextEditingController();
  TextEditingController sellp=TextEditingController();
  int carpet=0;
  int sellprice=0;
  String cityvalue="Mumbai";
  List city=['Mumbai', 'Delhi', 'Odisha','Bangalore'];
  String bloodgroupvalue="Electronic & Telecommunication";
  List bloodgroup=['Electronic & Telecommunication', 'Computer Science', 'Metallurgy','Chemical'];

  String designationvalue="Manager";
  List designation=['Manager', 'Assistant', 'HR'];



Future<dynamic> getAllWarehouse() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiVGVzdCIsIm5hbWUiOiJUZXN0IHVzZXIiLCJwYXNzd29yZCI6bnVsbCwiQVBJX1RJTUUiOjE2MjY2OTY5MTR9.nNPV2tEXbFxN1NccSrWZ4swjWKifbs5gtRAYFl0TdYc',
  'Cookie': 'sp_session=c1e74d77a0b72cd65a38c5b3505312b4f129ec68'
};
   var request = http.Request('GET', Uri.parse('http://157.90.113.176/~rapidda/api/warehouse'));


    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());

      // displayzicoinshomescreen = decode["data"]["user"]["zi_coins"];

      // print(displayzicoinshomescreen);
    } else {
      print(1);
      var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }




//2

Future<dynamic> getSingleWarehouse() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiVGVzdCIsIm5hbWUiOiJUZXN0IHVzZXIiLCJwYXNzd29yZCI6bnVsbCwiQVBJX1RJTUUiOjE2MjY2OTY5MTR9.nNPV2tEXbFxN1NccSrWZ4swjWKifbs5gtRAYFl0TdYc'
};
   var request = http.MultipartRequest('GET', Uri.parse('http://157.90.113.176/~rapidda/api/warehouse/2'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());

      // displayzicoinshomescreen = decode["data"]["user"]["zi_coins"];

      // print(displayzicoinshomescreen);
    } else {
      print(2);
 var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }


//3



Future<dynamic> addWarehouse() async {
    var headers = {
  'authtoken': 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiVGVzdCIsIm5hbWUiOiJUZXN0IHVzZXIiLCJwYXNzd29yZCI6bnVsbCwiQVBJX1RJTUUiOjE2MjY2OTY5MTR9.nNPV2tEXbFxN1NccSrWZ4swjWKifbs5gtRAYFl0TdYc'
};

 var request = http.MultipartRequest('POST', Uri.parse('http://157.90.113.176/~rapidda/api/warehouse'));
request.fields.addAll({
  'warehouse_code': 'W005',
  'warehouse_name': 'Saurabh Warehouse',
  'warehouse_area': '5000',
  'warehouse_manager_assign': 'Maulik',
  'purchase_cost': '6000',
  'dealing_industry': 'ABCD'
});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseString = await response.stream.bytesToString();

      print(responseString);

    var  decode = json.decode(responseString);

      debugPrint(decode.toString());
print(4);
      // displayzicoinshomescreen = decode["data"]["user"]["zi_coins"];

      // print(displayzicoinshomescreen);
    } else {
      print(response.reasonPhrase);
print(3);
 var responseString = await response.stream.bytesToString();

      print(responseString);
    }
  }

@override
List getallwarehouse=[];
List getsinglewarehouse=[];
List addwarehouse=[];

//  void asyncMethod() async {
//     print("starting");
//     if (getallwarehouse.isEmpty) getallwarehouse = await getAllWarehouse();
//     print(" " + getallwarehouse.length.toString() + " ");
//     sgetallwarehouse(getallwarehouse);
    
//     if (getsinglewarehouse.isEmpty) getsinglewarehouse = await getSingleWarehouse();
//     print(" " + getsinglewarehouse.length.toString() + " ");
//     sgetsinglewarehouse(getsinglewarehouse);
    
//     if (getallwarehouse.isEmpty) getallwarehouse = await addWarehouse();
//     print(" " + getallwarehouse.length.toString() + " ");
//     saddwarehouse(getallwarehouse);
//     }
  void initState() {
    // TODO: implement initState
    //asyncMethod();

    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            color: Colors.grey[500],
            child: ExpansionTile(
              leading: Icon(Icons.house_siding,color: Colors.white,),
              iconColor: Colors.green,
              collapsedIconColor: Colors.white,
              title: Text("Add Ware house",style: TextStyle(color: Colors.white),),
              children: <Widget>[

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
                            Icon(Icons.house_siding,color: Colors.green,size: 50,),
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
                                  width: MediaQuery.of(context).size.width*0.6,

                                  child:  TextFormField( textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Warehouse Name",
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
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.3,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number, textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
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



                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.5,

                                  child:  TextFormField( textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        labelText: "Build up Area",
                                        labelStyle: TextStyle(
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
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,
                                  child: TextFormField( textInputAction: TextInputAction.next,
                                    controller: crp..text="$carpet",
                                    keyboardType: TextInputType.number,

                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        labelText: "Carpet Area",
                                        labelStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Carpet Area",

                                        suffixIcon: Column(
                                          children: [
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    carpet=int.parse(crp.text);
                                                    carpet++;
                                                    print(carpet);
                                                  });
                                                },
                                                child: Icon(Icons.keyboard_arrow_up_sharp,color: Colors.grey,)),
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    carpet=int.parse(crp.text);
                                                    carpet--;
                                                  });
                                                },
                                                child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,))
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
                              ],
                            ),

                            SizedBox(
                              height: 10,
                            ),



                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.5,

                                  child:  TextFormField( textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        labelText: "Purchase Cost/Sq ft",
                                        labelStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15
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
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,
                                  child: TextFormField( textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                    controller: sellp..text="$sellprice",
                                    decoration: InputDecoration(
                                        labelText: "Sell Prize/Sq ft",
                                        labelStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15
                                        ),
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Sell Prize/Sq ft",

                                        suffixIcon: Column(
                                          children: [
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    sellprice=int.parse(sellp.text);
                                                    sellprice++;
                                                  });
                                                },
                                                child: Icon(Icons.keyboard_arrow_up_sharp,color: Colors.grey,)),
                                            GestureDetector( onTap: (){
                                              setState(() {
                                                sellprice=int.parse(sellp.text);
                                                sellprice--;
                                              });
                                            },child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey,))
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
                                      color: Colors.grey
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
                                    print(bloodgroupvalue);
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




                            TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "Street",
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
                                  width: MediaQuery.of(context).size.width*0.34,

                                  child:  TextFormField( textInputAction: TextInputAction.next,
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
                                  width: MediaQuery.of(context).size.width*0.32,
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
                                  width: MediaQuery.of(context).size.width*0.22,

                                  child:  TextFormField( textInputAction: TextInputAction.next,
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





                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.5,

                                  child:  TextFormField( textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Mobile No",
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
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,
                                  child: TextFormField( textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Phone No",
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
                              width: MediaQuery.of(context).size.width*0.8,
                              child: TextFormField( textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    hintText: "username@domain.com",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15
                                    ),
                                    suffixIcon: Icon(Icons.alternate_email,color: Colors.grey,),
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



                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.grey,
            child: ExpansionTile(
              leading: Icon(Icons.people_alt_rounded,color: Colors.white,),
              iconColor: Colors.green,
              collapsedIconColor: Colors.white,
              title: Text("Add Team",style: TextStyle(color: Colors.white),),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      key: _formKey1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.0,),
                          Row(
                            children: [
                              Icon(Icons.people_alt_rounded,color: Colors.green,size: 50,),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Team Information",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),




                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "First Name",
                                      labelText: "First Name",
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(Icons.search_outlined),
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.41,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Last Name",
                                      labelText: "Last Name",
                                      labelStyle: TextStyle(color: Colors.grey),

                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.35,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "",
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.16,
                                child: TextFormField( textInputAction: TextInputAction.next,
                                  readOnly: true,
                                  initialValue: "+91",
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
                                      ),
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "+91",

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
                                width: MediaQuery.of(context).size.width*0.37,
                                child: TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
                                      ),
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Mobile No",
                                      suffixIcon: Icon(Icons.add),
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
                            height: 20,
                          ),

                          Text("Address",style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),

                          SizedBox(
                            height: 10,
                          ),

                          TextFormField(
                            keyboardType: TextInputType.name, textInputAction: TextInputAction.next,
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




                          TextFormField( textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                hintText: "Street",
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
                                width: MediaQuery.of(context).size.width*0.34,

                                child:  TextFormField( textInputAction: TextInputAction.next,
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
                                width: MediaQuery.of(context).size.width*0.32,
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
                                width: MediaQuery.of(context).size.width*0.225,

                                child:  TextFormField( textInputAction: TextInputAction.next,
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
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Nominee Name",
                                      labelText: "Nominee Name",
                                      labelStyle: TextStyle(color: Colors.grey),

                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.41,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Relation",
                                      labelText: "Relation",
                                      labelStyle: TextStyle(color: Colors.grey),

                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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


                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            child: TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "username@domain.com",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15
                                  ),
                                  suffixIcon: Icon(Icons.alternate_email,color: Colors.grey,),
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
                            height: 20,
                          ),




                          Row(
                            children: [
                              Icon(Icons.timelapse_sharp,color: Colors.green,),
                              SizedBox(
                                width: 10,
                              ),

                              Text("Job Responsibility",style: TextStyle(fontWeight:FontWeight.bold),),
                            ],
                          ),


                          SizedBox(
                            height: 10,
                          ),



                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.3,
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
                                  hint: Text("Manager"),
                                  value: designationvalue,
                                  onChanged: (newval){
                                    setState(() {
                                      designationvalue=newval.toString();
                                      print(designationvalue);
                                    });
                                  },
                                  items:designation.map((e){
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
                                width: MediaQuery.of(context).size.width*0.61,
                                child: TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Ware House Place",
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15
                                      ),
                                      prefixIcon: Icon(Icons.alternate_email,color: Colors.grey,),
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
                            width: MediaQuery.of(context).size.width*0.935,
                            child:TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "",
                                  labelText: "",
                                  labelStyle: TextStyle(color: Colors.grey),

                                  hintStyle: TextStyle(
                                      fontSize: 15.0
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
                            height: 10,
                          ),



                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "First Name",
                                      labelText: "First Name",
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(Icons.search_outlined),
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.41,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Head Name",
                                      labelText: "Head Name",
                                      labelStyle: TextStyle(color: Colors.grey),

                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                            height: 20,
                          ),



                          Row(
                            children: [
                              Text("Team Under",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text("\"Person Name\"",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20),)
                            ],
                          ),


                          SizedBox(
                            height: 10,
                          ),




                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "First Name",
                                      labelText: "First Name",
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(Icons.search_outlined),
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.41,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Designation",
                                      labelText: "Designation",
                                      labelStyle: TextStyle(color: Colors.grey),

                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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






                          SizedBox(
                            height: 10,
                          ),



                          Row(
                            children: [
                              Icon(Icons.add,size: 30,),
                              Text("Add More",style: TextStyle(fontSize: 17),)
                            ],
                          )












                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),




          Container(
              color: Colors.grey,
              child: ExpansionTile(
                leading: Icon(Icons.login_rounded,color: Colors.white,),
                iconColor: Colors.green,
                collapsedIconColor: Colors.white,
                title: Text("Login & Billing",style: TextStyle(color: Colors.white),),
                children: [
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              Icon(Icons.login,color: Colors.green,size: 50,),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Login Information",style: TextStyle(
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



                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,

                                  decoration: InputDecoration(

                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Warehouse Name",
                                      labelText: "Warehouse Name",
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(Icons.search_outlined),
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.41,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Password",
                                      labelText: "Password",
                                      labelStyle: TextStyle(color: Colors.grey),

                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                          Text("Reset email Id and Mobile Number",style: TextStyle(fontWeight: FontWeight.bold),),

                          SizedBox(
                            height: 10,
                          ),



                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.15,
                                child: TextFormField( textInputAction: TextInputAction.next,
                                  readOnly: true,
                                  initialValue: "+91",
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
                                      ),
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "+91",

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
                                width: MediaQuery.of(context).size.width*0.5,
                                child: TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
                                      ),
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Mobile No",
                                      suffixIcon: Icon(Icons.add),
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
                            height: 50,
                          ),


                          Row(
                            children: [
                              Icon(Icons.account_balance,color: Colors.green,size: 50,),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Bank Information",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),


                          SizedBox(
                            height: 10,
                          ),
                          Text("Reset email Id and Mobile Number",style: TextStyle(fontWeight: FontWeight.bold),),

                          SizedBox(
                            height: 10,
                          ),


                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Ifsc Code",
                                      labelText: "Ifsc Code",
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(Icons.search_outlined),
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.41,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Bank Name",
                                      labelText: "Bank Name",
                                      labelStyle: TextStyle(color: Colors.grey),

                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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



                          Container(
                            width: MediaQuery.of(context).size.width,

                            child:  TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "Account Name",
                                  labelText: "Account Name",
                                  labelStyle: TextStyle(color: Colors.grey),

                                  hintStyle: TextStyle(
                                      fontSize: 15.0
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
                            height: 10,
                          ),




                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Account Number",
                                      labelText: "Account Number",
                                      labelStyle: TextStyle(color: Colors.grey),
                                      prefixIcon: Icon(Icons.search_outlined),
                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                                width: MediaQuery.of(context).size.width*0.41,

                                child:  TextFormField( textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                      hintText: "Branch",
                                      labelText: "Branch",
                                      labelStyle: TextStyle(color: Colors.grey),

                                      hintStyle: TextStyle(
                                          fontSize: 15.0
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
                            height: 100,
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
                                  backgroundColor:MaterialStateProperty.all(Colors.green),
                                ),
                                child: Text("Confirm"),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),


                ],
              )
          )


        ],
      );
  }
}