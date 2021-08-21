import 'package:flutter/material.dart';

// importing google fonts package
import 'package:google_fonts/google_fonts.dart';
import 'package:rapiddaddy/Mobile/widget_vault.dart';

//importing the files of different widgets used in Purchase Order module
import 'purchaseOrderDetail.dart';
import 'purchaseOrderTo.dart';
import 'billTo.dart';
import 'deliverTo.dart';
import 'unitDescription.dart';

//importing the files of common widgets
import '../Widgets/LandGraph.dart';
import '../Widgets/customInputFieldMoile.dart';
import '../Widgets/customDrawer.dart';

// Layout
class PurchaseOrderPage extends StatefulWidget {
  const PurchaseOrderPage({Key? key, required this.ids}) : super(key: key);

  final String ids;

  @override
  _PurchaseOrderPageState createState() => _PurchaseOrderPageState();
}

class _PurchaseOrderPageState extends State<PurchaseOrderPage> {
  //bools that control the expansion of the expansion panels
  bool isGraphExpanded = false;
  bool isUnitDescriptionExpanded = false;
  bool isPurchaseOrderDetailExpanded = false;
  bool isPurchaseOrderToExpanded = false;
  bool isDeliverToExpanded = false;
  bool isBillToExpanded = false;

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

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // width of the customTextField
    double width = MediaQuery.of(context).size.width - 20.0;
    return Scaffold(
      drawer: CustomDrawerMobile(),
      backgroundColor: Color(0xffFAFBFF),
      appBar: AppBar(
        title: Text(widget.ids),
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
                        isPurchaseOrderToExpanded = !isPurchaseOrderToExpanded;
                        break;
                      case 2:
                        isPurchaseOrderDetailExpanded =
                            !isPurchaseOrderDetailExpanded;
                        break;
                      case 3:
                        isUnitDescriptionExpanded = !isUnitDescriptionExpanded;
                        break;
                      case 4:
                        isDeliverToExpanded = !isDeliverToExpanded;
                        break;
                      case 5:
                        isBillToExpanded = !isBillToExpanded;
                        break;

                      default:
                    }
                  });
                },
                children: [
                  expansionPanelWidget(CustomGraph(), isGraphExpanded, "Graph",
                      Icons.pie_chart_rounded),
                  expansionPanelWidget(
                      PurchaseOrderToMobile(),
                      isPurchaseOrderToExpanded,
                      "Purchase Order To",
                      Icons.location_city_rounded),
                  expansionPanelWidget(
                      PurchaseOrderDetailMobile(),
                      isPurchaseOrderDetailExpanded,
                      "Purchase Order Detail ",
                      Icons.document_scanner_rounded),
                  expansionPanelWidget(
                      UnitDescriptionMobile(),
                      isUnitDescriptionExpanded,
                      "Unit Description",
                      Icons.ac_unit_rounded),
                  expansionPanelWidget(DeliverToMobile(), isDeliverToExpanded,
                      "Deliver To", Icons.location_pin),
                  expansionPanelWidget(BillToMobile(), isBillToExpanded,
                      "Bill To", Icons.document_scanner_rounded),
                ],
              ),
              vertPaddingBetweenField(),
              CustomTextFieldMobile(
                width: width,
                labelText: 'Message to seller',
              ),
              vertPaddingBetweenField(),
              CustomTextFieldMobile(
                width: width,
                labelText: 'Message to Warehouse',
              ),
              vertPaddingBetweenField(),
              CustomCheckBox(
                  isChecked: isChecked, label: 'Terms and Conditions'),
              CustomCheckBox(
                  isChecked: isChecked, label: 'Include Prepared By'),
              CustomCheckBox(
                  isChecked: isChecked, label: 'Include Sign and Stamp'),
              vertPaddingBetweenSections(),
              CreateAddAnotherButtonRow(),
              vertPaddingBetweenField(),
            ],
          ),
        ),
      ),
    );
  }
}

//Create and Add Another Button Row
class CreateAddAnotherButtonRow extends StatelessWidget {
  const CreateAddAnotherButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CreateButton(),
        AddAnotherButton(),
      ],
    );
  }
}

class CreateButton extends StatefulWidget {
  const CreateButton({Key? key}) : super(key: key);

  @override
  _CreateButtonState createState() => _CreateButtonState();
}

class _CreateButtonState extends State<CreateButton> {
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
          'Create',
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

// Custom Check boxes, at the bottom of the page (T&C and etc)
class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({Key? key, required this.label, required this.isChecked})
      : super(key: key);

  final String label;
  bool isChecked;

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green;
    }
    return Color(0xff78909C);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Checkbox(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: widget.isChecked,
            onChanged: (bool? _isChecked) {
              setState(() {
                widget.isChecked = _isChecked == true ? true : false;
              });
            },
          ),
          Text(
            widget.label,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
