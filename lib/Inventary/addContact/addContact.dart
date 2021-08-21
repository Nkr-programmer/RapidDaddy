import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rapiddaddy/Common/api.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';
import 'package:rapiddaddy/widgets/contact.dart';
import 'partyDealing.dart';
import 'personalDetail.dart';
import 'roleInfo.dart';
import 'billingAddress.dart';

import '../Widgets/customDrawer.dart';


class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key,required this.ids}) : super(key: key);
final String ids;

  @override
  _AddContactPageState createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading:IconButton( onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Contact(title: "Contact")));
                
              }, icon: Icon(Icons.arrow_back),) ,
        title: Text( "Add Contact"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      //width: 720,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CompanyInfo(ids:widget.ids),
            vertPaddingBetweenSections(),
          
          ],
        ),
      ),
    ))));
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
TextEditingController firm=TextEditingController();
TextEditingController per=TextEditingController();
TextEditingController email=TextEditingController();
TextEditingController phn=TextEditingController();
TextEditingController mob=TextEditingController();

TextEditingController add=TextEditingController();
TextEditingController pin=TextEditingController();
TextEditingController state=TextEditingController();
TextEditingController cit=TextEditingController();
TextEditingController contr=TextEditingController();

  TextEditingController gst=TextEditingController();
TextEditingController pan=TextEditingController();
TextEditingController remar=TextEditingController();
int kn=-1,vn=-1;
List x=[];
  String cityvalue="Mumbai";
  List city=['Mumbai', 'Delhi', 'Odisha','Bangalore'];
void initState() {
 if(widget.ids.length!=0){
 firm.text=getallcontact[int.parse(widget.ids)-1]["firm_name"].toString();
                      per.text=getallcontact[int.parse(widget.ids)-1]["contact_person"].toString();
                       phn.text=getallcontact[int.parse(widget.ids)-1]["alternate_no"].toString();
                       mob.text=getallcontact[int.parse(widget.ids)-1]["mobile_no"].toString();
                       email.text=getallcontact[int.parse(widget.ids)-1]["email"].toString();

                       add.text=getallcontact[int.parse(widget.ids)-1]["address"].toString();
                       cit.text=getallcontact[int.parse(widget.ids)-1]["city"].toString();
                       state.text=getallcontact[int.parse(widget.ids)-1]["state"].toString();
                       pin.text=getallcontact[int.parse(widget.ids)-1]["zip"].toString();
                       contr.text=getallcontact[int.parse(widget.ids)-1]["country"].toString();
                    
                      gst.text=getallcontact[int.parse(widget.ids)-1]["gst"].toString();
                       pan.text=getallcontact[int.parse(widget.ids)-1]["pan"].toString();
                       remar.text=getallcontact[int.parse(widget.ids)-1]["remarks"].toString();
                     }     
                      
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingArea(
            headingIcon: Icons.person,
            headingText: 'Personal Details'),
        Text(
            'Enter the required information below to register. You can change it anytime you want.'),
        vertPaddingBetweenHeadingContent(),
            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.4,

                                  child:  TextFormField( 
                                  controller: firm,
                                  onChanged: (value){
                                 setState(() {
                                    print(firm.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Firm Name",
                                        hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color:  vn==1&&firm.text.toString()==""?Colors.red: Colors.grey
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
                                    controller: per,
                                  onChanged: (value){
                                 setState(() {
                                    print(per.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,    decoration: InputDecoration(
                                         hintStyle: TextStyle(
                                            fontSize: 13.0,
                                            color:  Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Contact Person",
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
                              width: MediaQuery.of(context).size.width*0.7,
                              child: TextFormField( textInputAction: TextInputAction.next,
                              controller: email,
                                  onChanged: (value){
                                 setState(() {
                                    print(email.text);
                                 });
                                 
                                  },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                    hintText: "abc@gmail.com",
                                    hintStyle: TextStyle(
                                        color:   vn==1&&email.text.toString()==""?Colors.red:Colors.grey,
                                        fontSize: 14
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
                                  controller: mob,
                                  onChanged: (value){
                                 setState(() {
                                    print(mob.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Mobile",
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
                                    controller: phn,
                                  onChanged: (value){
                                 setState(() {
                                    print(phn.text);
                                 });
                                 
                                  },
                                    keyboardType: TextInputType.number,    decoration: InputDecoration(
                                         hintStyle: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey
                                        ),
                                        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                        hintText: "Phone",
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
                                Icon(Icons.contact_page_rounded,color: Colors.green,),
                                SizedBox(
                                  width: 10,
                                ),

                                Text("Add Billing Address",style: TextStyle(fontWeight:FontWeight.bold),),
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
                              ],
                            ),
    
SizedBox(height:10),
Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.contact_page_outlined,
              color: Colors.green,
            ),
            Text('Outdoor Unit Detail',style: TextStyle(fontWeight: FontWeight.bold),),
            paddingBetweenField(),
            paddingBetweenField(),
            Radio(value: true, groupValue: null, onChanged: (null)),
          ],
        ),

        vertPaddingBetweenField(),

                            TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                               controller: gst,
                                  onChanged: (value){
                                 setState(() {
                                    print(gst.text);
                                 });
                                 
                                  },
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "GST Number",
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


        vertPaddingBetweenField(),

                            TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                               controller: pan,
                                  onChanged: (value){
                                 setState(() {
                                    print(pan.text);
                                 });
                                 
                                  },
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "Pan",
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

        vertPaddingBetweenField(),

                            TextFormField( textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                               controller: remar,
                                  onChanged: (value){
                                 setState(() {
                                    print(remar.text);
                                 });
                                 
                                  },
                              decoration: InputDecoration(
                                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  hintText: "Remarks",
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


        Padding(padding: EdgeInsets.only(bottom: 50)),
      

                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 40  ,
                              child: ElevatedButton(
                                onPressed: (){
                                setState(() {
                                  if(firm.text.toString()==""||per.text.toString()==""||contr.text.toString()=="")
 {vn=1;}
 else {vn=0;
 print(widget.ids.toString());
 if(widget.ids.length!=0){x.add(widget.ids);}
                       x.add(firm.text);
                       x.add(per.text);
                       x.add(email.text);
                       x.add(mob.text);
                       x.add(phn.text);
                   
                       x.add(add.text);
                       x.add(cit.text);
                       x.add(state.text);
                       x.add(pin.text);
                       x.add(contr.text);

                       
                       x.add(gst.text);
                       x.add(pan.text);
                       x.add(remar.text);  
                       print(x.toString());
                // if(code.text.toString()=="")print("yes"); else print(" no"); 
List y=[];y.clear();y=x;
kn=0;
Fluttertoast.showToast(  
        msg: 'Adding',  
        toastLength: Toast.LENGTH_SHORT,  
        gravity: ToastGravity.BOTTOM,  
        timeInSecForIos: 1,  
        backgroundColor: Colors.grey,  
        textColor: Colors.black
    );  
 if(x.length==13)addContact(y); else editContact(y);

 Fluttertoast.showToast(  
        msg: 'Done',  
        toastLength: Toast.LENGTH_SHORT,  
        gravity: ToastGravity.BOTTOM,  
        timeInSecForIos: 1,  
        backgroundColor: Colors.grey,  
        textColor: Colors.black  
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










// class _AddContactPageState extends State<AddContactPage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.only(top: 10),
//           alignment: Alignment.centerLeft,
//           child: Column(
//             children: <Widget>[
//               Container(
//                   width: MediaQuery.of(context).size.width - 20,
//                   height: 100,
//                   child: MaterialButton(
//                     color: Colors.green,
//                     shape: RoundedRectangleBorder(
//                         side: BorderSide(color: Colors.green),
//                         borderRadius: BorderRadius.circular(5)),
//                     child: Container(
//                       child: Text('Import CSV',
//                           style: GoogleFonts.poppins(
//                               fontSize: 20, color: Colors.white)),
//                     ),
//                     onPressed: () {},
//                   )),
//               vertPaddingBetweenHeadingContent(),
//               RoleInfoMobile(),
//               vertPaddingBetweenHeadingContent(),
//               ExpansionPanelList(
//                 elevation: 0,
//                 expansionCallback: (int index, bool isExpanded) {
//                   setState(() {
//                     switch (index) {
//                       case 0:
//                         isPersonalDetailsExpanded = !isPersonalDetailsExpanded;
//                         break;
//                       case 1:
//                         isBillingAddressExpanded = !isBillingAddressExpanded;
//                         break;
//                       case 2:
//                         isOutDoorUnitDetailExpanded =
//                             !isOutDoorUnitDetailExpanded;
//                         break;
//                       // case 3:
//                       //   isRoleExpanded = !isRoleExpanded;
//                       //   break;

//                       default:
//                     }
//                   });
//                 },
//                 children: [
//                   expansionPanelWidget(
//                       PersonalDetailMobile(),
//                       isPersonalDetailsExpanded,
//                       "Personal Detail",
//                       Icons.person),
//                   expansionPanelWidget(
//                       BillingAddressMobile(),
//                       isBillingAddressExpanded,
//                       "Add Billing Address",
//                       Icons.contact_page_rounded),
//                   expansionPanelWidget(
//                       PartyDealingMobile(),
//                       isOutDoorUnitDetailExpanded,
//                       "Outdoor Unit Detail",
//                       Icons.contact_page_outlined),
//                   // expansionPanelWidget(FaultCodeMobile(), isFaultExpanded,
//                   //     "Fault Code", Icons.dangerous_rounded),
//                 ],
//               ),
//               vertPaddingBetweenSections(),
//               SaveAddAnotherButtonRow(),
//               vertPaddingBetweenField(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class LandGraph extends StatefulWidget {
  const LandGraph({Key? key}) : super(key: key);

  @override
  _LandGraphState createState() => _LandGraphState();
}

class _LandGraphState extends State<LandGraph> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              child: Text(
                'Total Sqft',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
            Container(
              child: Text(
                '20,200',
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.normal),
              ),
            ),
            vertPaddingBetweenField(),
            Container(
              child: Text(
                'Filled Sqft',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
            Container(
              child: Text(
                '5,000',
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        Container(
          height: 175,
          width: 175,
          padding: const EdgeInsets.all(20),
          child: CircularProgressIndicator(
            value: 5 / 20,
            strokeWidth: 10,
            color: Color(0xff1EB26A),
            backgroundColor: Color(0x221EB26A),
          ),
        ),
      ],
    );
  }
}
