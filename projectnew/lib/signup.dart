import 'package:flutter/material.dart';
import 'package:projectnew/dashboard.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  String gender = "Male";
  String course = "Select Course";
  bool indian = false;
  bool others = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey[100],

      appBar: AppBar(
        title: const Text("Registration Form"),
        centerTitle: true,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 450,
            padding: const EdgeInsets.all(25),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                )
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // First Name
                const Text("First Name"),
                TextField(decoration: const InputDecoration()),

                const SizedBox(height: 10),

                const Text("Last Name"),
                TextField(decoration: const InputDecoration()),

                const SizedBox(height: 10),

                const Text("Password"),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(),
                ),

                const SizedBox(height: 10),

                const Text("Confirm Password"),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(),
                ),

                const SizedBox(height: 10),

                const Text("Email"),
                TextField(),

                const SizedBox(height: 10),

                const Text("Mobile"),
                TextField(),

                const SizedBox(height: 15),

                // Gender
                const Text("Gender"),
                Row(
                  children: [

                    Radio(
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    const Text("Male"),

                    Radio(
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    const Text("Female"),
                  ],
                ),

                const SizedBox(height: 10),

                // DOB
                const Text("DOB"),
                TextField(
                  decoration: const InputDecoration(
                    hintText: "dd-mm-yyyy",
                  ),
                ),

                const SizedBox(height: 10),

                // Course Dropdown
                const Text("Course"),
                DropdownButtonFormField(
                  value: course,
                  items: const [
                    DropdownMenuItem(
                      value: "Select Course",
                      child: Text("Select Course"),
                    ),
                    DropdownMenuItem(
                      value: "BCA",
                      child: Text("BCA"),
                    ),
                    DropdownMenuItem(
                      value: "MCA",
                      child: Text("MCA"),
                    ),
                    DropdownMenuItem(
                      value: "BTech",
                      child: Text("BTech"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      course = value!;
                    });
                  },
                ),

                const SizedBox(height: 10),

                // Nationality
                const Text("Nationality"),
                Row(
                  children: [

                    Checkbox(
                      value: indian,
                      onChanged: (value) {
                        setState(() {
                          indian = value!;
                        });
                      },
                    ),
                    const Text("Indian"),

                    Checkbox(
                      value: others,
                      onChanged: (value) {
                        setState(() {
                          others = value!;
                        });
                      },
                    ),
                    const Text("Others"),
                  ],
                ),

                const SizedBox(height: 20),

                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    ElevatedButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DashboardPage(),
                          ),
                        );

                      },
                      child: const Text("Submit"),
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Reset"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
