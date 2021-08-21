
import 'package:flutter/material.dart';
import 'package:rapiddaddy/Common/api.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';
import 'package:rapiddaddy/widgets/Client.dart';
import 'package:fluttertoast/fluttertoast.dart';  


class CreateClientMobile extends StatefulWidget {
  const CreateClientMobile({Key? key,required this.ids}) : super(key: key);
final String ids;

  @override
  _CreateClientMobileState createState() => _CreateClientMobileState();
}

class _CreateClientMobileState extends State<CreateClientMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading:IconButton( onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Client(title: "Client")));
                
              }, icon: Icon(Icons.arrow_back),) ,
        title: Text( "Add Client"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      //width: 720,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CompanyInfo(ids:widget.ids),
            vertPaddingBetweenSections(),
          
          ],
        ),
      ),
    ))));
  }
}

class TextFieldNoValidator extends StatelessWidget {
  const TextFieldNoValidator(
      {Key? key,
      required this.width,
      required this.hintText,
      this.textInputType,
      this.suffixIcon})
      : super(key: key);

  final double width;
  final String hintText;
  final TextInputType? textInputType;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      child: TextFormField(
        validator: null,
        keyboardType:
            textInputType == null ? textInputType : TextInputType.text,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          hintText: hintText,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class GSTFields extends StatelessWidget {
  const GSTFields({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFieldNoValidator(
        width: MediaQuery.of(context).size.width - 20, hintText: hintText);
  }
}


class CompanyInfo extends StatefulWidget {
  const CompanyInfo({Key? key,required this.ids}) : super(key: key);
final String ids;
  @override
  _CompanyInfoState createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
  @override
TextEditingController com=TextEditingController();
TextEditingController vat=TextEditingController();
TextEditingController phn=TextEditingController();
TextEditingController web=TextEditingController();
TextEditingController grp=TextEditingController();
TextEditingController lang=TextEditingController();

TextEditingController add=TextEditingController();
TextEditingController pin=TextEditingController();
TextEditingController state=TextEditingController();
TextEditingController cit=TextEditingController();
TextEditingController contr=TextEditingController();
TextEditingController ptype=TextEditingController();

  TextEditingController bstate=TextEditingController();
TextEditingController bcit=TextEditingController();
TextEditingController bcontr=TextEditingController();
TextEditingController badd=TextEditingController();
TextEditingController bpin=TextEditingController();
  TextEditingController sstate=TextEditingController();
TextEditingController scit=TextEditingController();
TextEditingController scontr=TextEditingController();
TextEditingController sadd=TextEditingController();
TextEditingController spin=TextEditingController();
TextEditingController ctype=TextEditingController();
int kn=-1,vn=-1;
List x=[];
  String cityvalue="Mumbai";
  List city=['Mumbai', 'Delhi', 'Odisha','Bangalore'];
void initState() {
 if(widget.ids.length!=0){
 com.text=getallclient[int.parse(widget.ids)-1]["company"].toString();
                      vat.text=getallclient[int.parse(widget.ids)-1]["vatoptional"].toString();
                       phn.text=getallclient[int.parse(widget.ids)-1]["phonenumber"].toString();
                       web.text=getallclient[int.parse(widget.ids)-1]["website"].toString();
                       grp.text=getallclient[int.parse(widget.ids)-1]["groups_in"].toString();
                       lang.text=getallclient[int.parse(widget.ids)-1]["default_language"].toString();
                       

                       add.text=getallclient[int.parse(widget.ids)-1]["address"].toString();
                       cit.text=getallclient[int.parse(widget.ids)-1]["city"].toString();
                       state.text=getallclient[int.parse(widget.ids)-1]["state"].toString();
                       pin.text=getallclient[int.parse(widget.ids)-1]["zip"].toString();
                       ptype.text=getallclient[int.parse(widget.ids)-1]["partnership_type"].toString();
                       contr.text=getallclient[int.parse(widget.ids)-1]["country"].toString();
                    
                      badd.text=getallclient[int.parse(widget.ids)-1]["billing_street"].toString();
                       bcit.text=getallclient[int.parse(widget.ids)-1]["billing_city"].toString();
                       bstate.text=getallclient[int.parse(widget.ids)-1]["billing_state"].toString();
                       bpin.text=getallclient[int.parse(widget.ids)-1]["biling_zip"].toString();
                       bcontr.text=getallclient[int.parse(widget.ids)-1]["billing_country"].toString();
                      

                    sadd.text=getallclient[int.parse(widget.ids)-1]["shipping_street"].toString();
                       scit.text=getallclient[int.parse(widget.ids)-1]["shipping_city"].toString();
                       sstate.text=getallclient[int.parse(widget.ids)-1]["shipping_state"].toString();
                       spin.text=getallclient[int.parse(widget.ids)-1]["shipping_zip"].toString();
                       scontr.text=getallclient[int.parse(widget.ids)-1]["shipping_country"].toString();
                      ctype.text=getallclient[int.parse(widget.ids)-1]["client_type"].toString(); 
 }     
                      
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingArea(
            headingIcon: Icons.business_center,
            headingText: 'Company Information'),
        Text(
            'Enter the required information below to register. You can change it anytime you want.'),
        vertPaddingBetweenHeadingContent(),
            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,

                                  child:  TextFormField( 
                                  controller: com,
                                  onChanged: (value){
                                 setState(() {
                                    print(com.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Company Name",
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:  vn==1&&com.text.toString()==""?Colors.red: Colors.grey
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
                                    controller: vat,
                                  onChanged: (value){
                                 setState(() {
                                    print(vat.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,    decoration: InputDecoration(
                                         hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:  Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "VAT Code",
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
        vertPaddingBetweenField(),
        

                            Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: TextFormField( textInputAction: TextInputAction.next,
                              controller: ctype,
                                  onChanged: (value){
                                 setState(() {
                                    print(ctype.text);
                                 });
                                 
                                  },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    hintText: "Client Type",
                                    hintStyle: TextStyle(
                                        color:   vn==1&&com.text.toString()==""?Colors.red:Colors.grey,
                                        fontSize: 12
                                    ),
                                    suffixIcon: Icon(Icons.manage_accounts,color: Colors.grey,),
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
        vertPaddingBetweenField(),
        
                            Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: TextFormField( textInputAction: TextInputAction.next,
                              controller: web,
                                  onChanged: (value){
                                 setState(() {
                                    print(web.text);
                                 });
                                 
                                  },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    hintText: "Website",
                                    hintStyle: TextStyle(
                                        color:  Colors.grey,
                                        fontSize: 12
                                    ),
                                    suffixIcon: Icon(Icons.manage_accounts,color:  Colors.grey,),
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


        vertPaddingBetweenField(),
        

                            Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: TextFormField( textInputAction: TextInputAction.next,
                              controller: phn,
                                  onChanged: (value){
                                 setState(() {
                                    print(phn.text);
                                 });
                                 
                                  },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    hintText: "Phone",
                                    hintStyle: TextStyle(
                                        color:  Colors.grey,
                                        fontSize: 12
                                    ),
                                    suffixIcon: Icon(Icons.manage_accounts,color: Colors.grey,),
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
                             vertPaddingBetweenField(),
                               Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,

                                  child:  TextFormField( 
                                  controller: grp,
                                  onChanged: (value){
                                 setState(() {
                                    print(grp.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Groups",
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:   Colors.grey
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
                                    controller: lang,
                                  onChanged: (value){
                                 setState(() {
                                    print(lang.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,    decoration: InputDecoration(
                                         hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Language",
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
        vertPaddingBetweenField(),
                     Row(
                              children: [
                                Icon(Icons.location_on,color: Colors.green,),
                                SizedBox(
                                  width: 10,
                                ),

                                Text("Company Address",style: TextStyle(fontWeight:FontWeight.bold),),
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

        Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,

                                  child:  TextFormField( 
                                  controller: contr,
                                  onChanged: (value){
                                 setState(() {
                                    print(contr.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Country",
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:  Colors.grey
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
                                    controller: ptype,
                                  onChanged: (value){
                                 setState(() {
                                    print(ptype.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,    decoration: InputDecoration(
                                         hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:  Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Partner type",
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
    
SizedBox(height:10),
Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.directions,
              color: Colors.green,
            ),
            Text('Billing Address',style: TextStyle(fontWeight: FontWeight.bold),),
            paddingBetweenField(),
            paddingBetweenField(),
            Radio(value: true, groupValue: null, onChanged: (null)),
          ],
        ),

        vertPaddingBetweenField(),

                            TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                               controller: badd,
                                  onChanged: (value){
                                 setState(() {
                                    print(badd.text);
                                 });
                                 
                                  },
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "Billing Street",
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
                                   controller: bpin,
                                  onChanged: (value){
                                 setState(() {
                                    print(bpin.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 12.0,
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
                                        bcit.text=cityvalue;
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
                                   controller: bstate,
                                  onChanged: (value){
                                 setState(() {
                                    print(bstate.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Billing State",
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

                                  child:  TextFormField( 
                                  controller: bcontr,
                                  onChanged: (value){
                                 setState(() {
                                    print(bcontr.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: " Billing Country",
                                        hintStyle: TextStyle(
                                            fontSize: 14.0,
                                            color:  Colors.grey
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
SizedBox(height: 20,),                              
    
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.directions,
              color: Colors.green,
            ),
            Text('Shiping Address',style: TextStyle(fontWeight: FontWeight.bold),),
            paddingBetweenField(),
            paddingBetweenField(),
            Radio(value: true, groupValue: null, onChanged: (null)),
          ],
        ),

        vertPaddingBetweenField(),

                            TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                               controller: sadd,
                                  onChanged: (value){
                                 setState(() {
                                    print(sadd.text);
                                 });
                                 
                                  },
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "Shiping Street",
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
                                   controller: spin,
                                  onChanged: (value){
                                 setState(() {
                                    print(spin.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 12.0,
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
                                        scit.text=cityvalue;
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
                                   controller: sstate,
                                  onChanged: (value){
                                 setState(() {
                                    print(sstate.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Shiping State",
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

                                  child:  TextFormField( 
                                  controller: scontr,
                                  onChanged: (value){
                                 setState(() {
                                    print(scontr.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: " Shiping Country",
                                        hintStyle: TextStyle(
                                            fontSize: 12.0,
                                            color:  Colors.grey
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
                              
    

        Padding(padding: EdgeInsets.only(bottom: 50)),
      

                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 40  ,
                              child: ElevatedButton(
                                onPressed: (){
                                setState(() {
                                  if(ctype.text.toString()==""||com.text.toString()=="")
 {vn=1;}
 else {vn=0;
 print(widget.ids.toString());
 if(widget.ids.length!=0){x.add(widget.ids);}
                       x.add(com.text);
                       x.add(vat.text);
                       x.add(phn.text);
                       x.add(web.text);
                       x.add(grp.text);
                       x.add(lang.text);  

                       x.add(add.text);
                       x.add(cit.text);
                       x.add(state.text);
                       x.add(pin.text);
                       x.add(ptype.text);
                       x.add(contr.text);

                       
                       x.add(badd.text);
                       x.add(bcit.text);
                       x.add(bstate.text);
                       x.add(bpin.text);
                       x.add(bcontr.text);
                        
                       x.add(sadd.text);
                       x.add(scit.text);
                       x.add(sstate.text);
                       x.add(spin.text);
                       x.add(scontr.text); 
                       x.add(ctype.text);  
                       print(x.toString());
                // if(code.text.toString()=="")print("yes"); else print(" no"); 
List y=[];y.clear();y=x;
kn=0;
Fluttertoast.showToast(  
        msg: 'Adding',  
        toastLength: Toast.LENGTH_SHORT,  
        gravity: ToastGravity.BOTTOM,  
        timeInSecForIos: 1,  
        backgroundColor: Colors.red,  
        textColor: Colors.yellow  
    );  
 if(x.length==23)addClient(y); else editClient(y);

 Fluttertoast.showToast(  
        msg: 'Done',  
        toastLength: Toast.LENGTH_SHORT,  
        gravity: ToastGravity.BOTTOM,  
        timeInSecForIos: 1,  
        backgroundColor: Colors.red,  
        textColor: Colors.yellow  
    );  
                        kn=1;   
 }
         
                                });
                                
                              },

                                
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                  )),
                                  backgroundColor:MaterialStateProperty.all(Colors.green),
                                ),
                                child: Text(widget.ids.length!=0?"Edit Client": "Add Client"),
                              ),
                            ),
                          ),


                          

      ],
    );
  }
}
