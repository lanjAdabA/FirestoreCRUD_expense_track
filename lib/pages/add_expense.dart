import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  final TextEditingController titlefieldcontroller = TextEditingController();
  final TextEditingController titlefielcontroller = TextEditingController();

  String dateTime = "";
  String dateTime1 = "";
  DateTime? start = DateTime.now();
  DateTime? end = DateTime.now();
  var format = DateFormat("dd-MM-yyyy");

  Widget _dataofbirth(String dob) {
    return DateTimeField(
      controller: TextEditingController(text: dob),
      decoration: const InputDecoration(
        label: ListTile(
          title: Text("SELECT DATE OF BIRTH"),
          trailing: Icon(
            Icons.date_range_outlined,
            color: Colors.grey,
          ),
          leading: Icon(Icons.emergency, color: Colors.red),
        ),
      ),
      format: format,
      onShowPicker: (context, currentValue) {
        return showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2030),
            helpText: "SELECT DATE OF BIRTH",
            cancelText: "CANCEL",
            confirmText: "OK",
            fieldHintText: "DATE/MONTH/YEAR",
            fieldLabelText: "ENTER YOUR DATE OF BIRTH",
            errorFormatText: "Enter a Valid Date",
            errorInvalidText: "Date Out of Range");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("continue"),
        icon: const Icon(Icons.edit_note_sharp),
      ),
      backgroundColor: Colors.red[50],
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Fill up the required Details"),
                  ],
                ),
              )),
          Expanded(
              flex: 9,
              child: Container(
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Colors.red, blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "NB:",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.emergency,
                            color: Colors.red,
                          ),
                          Text("Marked fields are compulsory"),
                        ],
                      ),
                      _dataofbirth(dateTime1),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "",
                          label: ListTile(
                            title: Text("EXPENSE TITLE"),
                            leading: Icon(Icons.emergency, color: Colors.red),
                          ),
                        ),
                      ),
                      const TextField(
                          decoration: InputDecoration(
                        label: ListTile(
                          title: Text("EXPENSE BRIEF"),
                          leading: Icon(
                            Icons.mode_edit_outline_rounded,
                          ),
                        ),
                      )),
                      const TextField(
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                            hintText: " ",
                            label: ListTile(
                              title: Text("EXPENSES AMOUNT"),
                              leading: Icon(Icons.emergency, color: Colors.red),
                            ),
                          )),
                    ],
                  )))
        ],
      )),
    );
  }
}




//
