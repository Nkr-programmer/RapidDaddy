import 'package:flutter/material.dart';

// importing google fonts package
import 'package:google_fonts/google_fonts.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';

//importing the files of different widgets used in AddInventory/ClientInfo module
import 'clientInfoMobile.dart';
import 'addInventory.dart';
import 'faultCodeMobile.dart';
import 'outdoorUnitDetail.dart';
import 'indoorUnitDetail.dart';

//importing the files of common widgets
import '../Widgets/customDrawer.dart';
import '../Widgets/LandGraph.dart';

// Layout of the Add Inventory Page
class AddInventoryPage extends StatefulWidget {
  const AddInventoryPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  AddInventoryPageState createState() => AddInventoryPageState();
}

class AddInventoryPageState extends State<AddInventoryPage> {
  //bools that control the expansion of the expansion panels
  bool isGraphExpanded = false;
  bool isIndoorExpanded = false;
  bool isAddInventoryExpanded = false;
  bool isClientExpanded = false;
  bool isOutdoorExpanded = false;
  bool isFaultExpanded = false;

  //returns the headers for different expansion panel
  ExpansionPanel expansionPanelWidget(Widget _content, bool _isExpandedToggler,
      String _title, IconData _iconData) {
    return ExpansionPanel(
        isExpanded: _isExpandedToggler,
        canTapOnHeader: true,
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  _iconData,
                  size: 40,
                ),
                Padding(padding: const EdgeInsets.only(left: 20)),
                Text(
                  _title,
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
        body: _content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawerMobile(),
      backgroundColor: Color(0xffFAFBFF),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.centerLeft,
          child: Column(
            children: <Widget>[
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    switch (index) {
                      case 0:
                        isGraphExpanded = !isGraphExpanded;
                        break;
                      case 1:
                        isClientExpanded = !isClientExpanded;
                        break;
                      case 2:
                        isAddInventoryExpanded = !isAddInventoryExpanded;
                        break;
                      case 3:
                        isIndoorExpanded = !isIndoorExpanded;
                        break;
                      case 4:
                        isOutdoorExpanded = !isOutdoorExpanded;
                        break;
                      case 5:
                        isFaultExpanded = !isFaultExpanded;
                        break;

                      default:
                    }
                  });
                },
                children: [
                  expansionPanelWidget(CustomGraph(), isGraphExpanded, "Graphs",
                      Icons.pie_chart_outline_rounded),
                  expansionPanelWidget(ClientInfoMobile(), isClientExpanded,
                      "Client Information", Icons.business_center_rounded),
                  expansionPanelWidget(
                      AddInventoryMobile(),
                      isAddInventoryExpanded,
                      "Add Inventory",
                      Icons.ac_unit_rounded),
                  expansionPanelWidget(
                      IndoorUnitDetailMobile(),
                      isIndoorExpanded,
                      "Indooor Unit Detail",
                      Icons.contact_page_rounded),
                  expansionPanelWidget(
                      OutdoorUnitDetailMobile(),
                      isOutdoorExpanded,
                      "Outdoor Unit Detail",
                      Icons.contact_page_outlined),
                  expansionPanelWidget(FaultCodeMobile(), isFaultExpanded,
                      "Fault Code", Icons.dangerous_rounded),
                ],
              ),
              vertPaddingBetweenSections(),
              SaveAddAnotherButtonRow(),
              vertPaddingBetweenField(),
            ],
          ),
        ),
      ),
    );
  }
}

// This is the button row at the bottom, containing 2 buttons, Save and AddAnother
class SaveAddAnotherButtonRow extends StatelessWidget {
  const SaveAddAnotherButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SaveButton(),
        AddAnotherButton(),
      ],
    );
  }
}

class SaveButton extends StatefulWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.fromLTRB(20.0, 0, 0.0, 0),
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(
          'Save',
          style: GoogleFonts.dmSans(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
        color: Color(0xff1EB26A),
        onPressed: () {},
      ),
    );
  }
}

class AddAnotherButton extends StatefulWidget {
  const AddAnotherButton({Key? key}) : super(key: key);

  @override
  _AddAnotherButtonState createState() => _AddAnotherButtonState();
}

class _AddAnotherButtonState extends State<AddAnotherButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff1EB26A)),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(
          'Add Another',
          style: GoogleFonts.dmSans(
              color: Color(0xff1EB26A),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        elevation: 0,
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
