
import 'package:flutter/material.dart';
import 'package:rapiddaddy/widgets/AddWare.dart';
import 'package:rapiddaddy/widgets/warreScreen.dart';
class AddTeam2 extends StatelessWidget {
  const AddTeam2({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      
      appBar: AppBar(
        leading:IconButton( onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Profile()));
                
              }, icon: Icon(Icons.arrow_back),) ,
        title: Text( "Add Team"),
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Team(),
            ],
          ),
            ),
        ),
      ));
  }
}
class Team extends StatefulWidget {
  const Team({ Key? key }) : super(key: key);

  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
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


  Widget build(BuildContext context) {
    return Container(
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
                );
  }
}