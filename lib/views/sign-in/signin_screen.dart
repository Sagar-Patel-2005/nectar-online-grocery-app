import 'package:flutter/material.dart';
import 'package:new_nectar_ui_project/views/sign-in/login_screen.dart';

import '../../widgets/commonWidgets/common_btn.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 30),

                Center(
                  child: Image.asset(
                    "assets/images/signIn_screen_img/Group.png",
                    height: 60,
                  ),
                ),

                const SizedBox(height: 60),

                const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff181725)
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 40),

                const Text("Username"),

                TextField(
                  decoration: const InputDecoration(
                    hintText: "Enter Your Name",
                  ),
                ),

                const SizedBox(height: 30),

                const Text("Email"),

                TextField(
                  decoration: const InputDecoration(
                    hintText: "Enter Your Email",
                  ),
                ),

                const SizedBox(height: 30),

                const Text("Password"),

                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Your Password",
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),

                const SizedBox(height: 15),

                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 14,
                    ),
                    children: [
                      const TextSpan(
                        text: "By continuing you agree to our ",
                      ),
                      TextSpan(
                        text: "Terms of Service",
                        style: const TextStyle(
                          color: Color(0xFF53B175),
                          fontWeight: FontWeight.bold,
                        ),
                        // You can make this clickable later
                      ),
                      const TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: const TextStyle(
                          color: Color(0xFF53B175),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                CommonButton(text: "Sign Up", onPressed: (){}),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                      child: const Text(
                        "LogIn",
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

