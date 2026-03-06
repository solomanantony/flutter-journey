import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee Table',
      debugShowCheckedModeBanner: false,
      home: const MyState(),
    );
  }
}

class MyState extends StatefulWidget {
  const MyState({super.key});

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  final List<Map<String, String>> employees = [
    {'sl': '1', 'name': 'Akhil', 'email': 'akhil.@example.com', 'phone': '+91 90000 00001'},
    {'sl': '2', 'name': 'Rahul', 'email': 'priya.@example.com', 'phone': '+91 90000 00002'},
    {'sl': '3', 'name': 'Rohan', 'email': 'rohan.@example.com', 'phone': '+91 90000 00003'},
    {'sl': '4', 'name': 'Sneha', 'email': 'sneha.@example.com', 'phone': '+91 90000 00004'},
    {'sl': '5', 'name': 'Vikram', 'email': 'vikram.@example.com', 'phone': '+91 90000 00005'},
    {'sl': '6', 'name': 'Nisha', 'email': 'nisha.@example.com', 'phone': '+91 90000 00006'},
    {'sl': '7', 'name': 'Das', 'email': 'Das23@example.com', 'phone': '+91 90000 00007'},
    {'sl': '8', 'name': 'Kan', 'email': 'kan@example.com', 'phone': '+91 90000 00008'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 112, 4, 227),
        title: const Text('Employee Details',
        style: TextStyle(color:  Color.fromARGB(255, 243, 240, 240),
      fontSize: 32.0, fontWeight:FontWeight.bold)),
        actions: [
        Icon(Icons.share),
        SizedBox(width:30),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                width: constraints.maxWidth,
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                  },
                  border: TableBorder.all(color: Colors.grey.shade300),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    // Header row
                    TableRow(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 230, 37, 37),
                      ),
                      children: [
                        _buildHeaderCell('Sl. No'),
                        _buildHeaderCell('Name'),
                        _buildHeaderCell('Email'),
                        _buildHeaderCell('Phone Number'),
                      ],
                    ),
                    // Data rows
                    for (var e in employees)
                      TableRow(
                        children: [
                          _buildDataCell(e['sl'] ?? ''),
                          _buildDataCell(e['name'] ?? ''),
                          _buildDataCell(e['email'] ?? ''),
                          _buildDataCell(e['phone'] ?? ''),
                        ],
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeaderCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDataCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14),
        softWrap: true,
      ),
    );
  }
}