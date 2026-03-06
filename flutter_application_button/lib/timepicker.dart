import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  // CHANGED: DateTime? → TimeOfDay?
  TimeOfDay? selectedTime;  
  TextEditingController timeController = TextEditingController();

  void shTimePicker(BuildContext context) async {
    // CHANGED: showDatePicker → showTimePicker
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(), // CHANGED: initialTime instead of firstDate/lastDate
      helpText: 'Select a time',
      confirmText: 'Confirm',
      cancelText: 'Cancel',
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.purple,
              onPrimary: Colors.white,
              surface: Colors.blueGrey,
              onSurface: Colors.black,
            ),
            dialogBackgroundColor: Colors.amber,
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;

        // CHANGED: Convert TimeOfDay → DateTime for formatting
        final now = DateTime.now();
        final dt = DateTime(now.year, now.month, now.day, picked.hour, picked.minute);

        // CHANGED: Format as time instead of date
        timeController.text = DateFormat('hh:mm a').format(dt);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        controller: timeController,
        readOnly: true, // CHANGED: make field read-only so user only picks via picker
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // CHANGED: Hint text for time
          hintText: 'Select a Time',
          // CHANGED: Icon for time
          suffixIcon: IconButton(
            onPressed: () => shTimePicker(context),
            icon: const Icon(Icons.access_time),
          ),
        ),
      ),
    );
  }
}