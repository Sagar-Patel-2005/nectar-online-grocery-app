import 'package:flutter/material.dart';
import 'package:new_nectar_ui_project/views/sign-in/sign-in_screen.dart';
import 'package:new_nectar_ui_project/widgets/commonWidgets/common_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using a Stack to layer widgets
      body: Stack(
        fit: StackFit.expand, // Make stack's children fill the screen
        children: [
          // 1. Background Image
          Image.asset(
            'assets/images/welcome_screen_img/background.png', // Replace with your image path
            fit: BoxFit.cover,
          ),

          // 2. Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.5, 1.0], // Gradient starts from the middle
              ),
            ),
          ),

          // 3. UI Content (Icon, Text, Button)
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60, left: 24, right: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end, // Align to bottom
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Carrot Icon
                  Image.asset(
                    'assets/images/welcome_screen_img/foodLogo.png', // Replace with your icon path
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(height: 20),

                  // Welcome Text
                  const Text(
                    'Welcome\nto our store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Subtitle Text
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Get Started Button
                  CommonButton(text: "Get Started", onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen(),));
                  })
                  // const SizedBox(height: 60), // Space at the bottom
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}