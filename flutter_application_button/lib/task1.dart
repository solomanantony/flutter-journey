import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  bool rememberMe = false;
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlue),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "KRYPTONITE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Text(
              "Welcome back",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Please enter your details"),

            TextField(
              decoration: InputDecoration(
                labelText: "Email address",
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            TextField(
              decoration: InputDecoration(
                labelText: "Email password",
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),
                    Text("Remember me"),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 1, 129, 189),
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Sign in"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                ),
              ),
            ),

            SizedBox(
              height: 40,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Sign in with Google"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 1, 129, 189),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}