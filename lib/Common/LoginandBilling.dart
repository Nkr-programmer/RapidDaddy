
import 'package:flutter/material.dart';
import 'package:rapiddaddy/widgets/AddWare.dart';
import 'package:rapiddaddy/widgets/warreScreen.dart';
class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);
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
             Log(),
            ],
          ),
            ),
        ),
      ));
  }
}
class Log extends StatefulWidget {
  const Log({ Key? key }) : super(key: key);

  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  );
  }
}