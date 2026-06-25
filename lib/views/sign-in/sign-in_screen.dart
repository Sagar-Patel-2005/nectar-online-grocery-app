import 'package:flutter/material.dart';
import 'package:new_nectar_ui_project/widgets/commonWidgets/common_btn.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            Container(
              width: double.infinity,
              child: Image.asset("assets/images/signIn_screen_img/food.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Get your groceries\nwith nectar',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                    ),

                    SizedBox(height: 20,),
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        // hintText: "Enter mobile number",
                        prefixIcon: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [

                              Text("🇮🇳", style: TextStyle(fontSize: 20)),
                              SizedBox(width: 6),

                              Text(
                                "+91",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 28,),

                    Center(child: Text("Or connect with social media")),

                    SizedBox(height: 28,),

                   CommonButton(text: "Continue with Google", backgroundColor: Color(0xff4A66AC),onPressed: (){}),
                    
                    SizedBox(height: 20,),

                 CommonButton(text: "Continue with Facebook", backgroundColor: Color(0xff5383EC),onPressed: (){}),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
