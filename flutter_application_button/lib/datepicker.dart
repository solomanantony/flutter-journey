import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState()=>_DateState();
}
class _DateState extends State<Date>{
  DateTime? selectedDate;
  TextEditingController dateController = TextEditingController();


  void shDatePicker(BuildContext context)async{
    final DateTime? picked = await
    showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime.now(),
    helpText: 'Select a date',
    confirmText: 'Confirm',
    cancelText: 'Cancel',
    builder: (BuildContext context, Widget? child){
      return Theme(data: ThemeData.light().copyWith(
        colorScheme:ColorScheme.light(
          primary: Colors.purple,
          onPrimary: Colors.white,
          surface: Colors.blueGrey,
          onSurface: Colors.black
        ),
        dialogBackgroundColor: Colors.amber
      ),
      child: child!);
    }
    );

    if(picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateController.text = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        controller: dateController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          hintText: 'Select a Date',
          suffixIcon: IconButton(onPressed: ()=>shDatePicker(context),
           icon: Icon(Icons.calendar_month))
        ),
      ),
    );
  }
}
