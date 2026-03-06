import 'package:flutter/material.dart';
import 'package:projectnew/signup.dart';

class RegisterIntro extends StatelessWidget {
  const RegisterIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: Center(
        child: Container(
          width: 320,
          height: 600,

          decoration: BoxDecoration(
            color: const Color(0xFF2F3B4C),
            borderRadius: BorderRadius.circular(30),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Illustration Image
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/4392/4392452.png",
                height: 200,
              ),

              const SizedBox(height: 20),

              // Title
              const Text(
                "Lorem\nipsum",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Container(
                width: 60,
                height: 3,
                color: Colors.white54,
              ),

              const SizedBox(height: 60),

              // Register Button
              SizedBox(
                width: 200,
                height: 50,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                 onPressed: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const RegisterForm(),
    ),
  );
},

                  child: const Text(
                    "Register now",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

