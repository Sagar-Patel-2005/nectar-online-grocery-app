import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:new_nectar_ui_project/views/location/location_screen.dart';
import 'package:new_nectar_ui_project/views/sign-in/signin_screen.dart';
import 'package:new_nectar_ui_project/widgets/commonWidgets/common_btn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Login",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff181725)
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Enter your emails and password",
                  style: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 40),

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

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color(0xff181725)),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                CommonButton(text: "Log In", onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(),));
                }),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SigninScreen(),));
                      },
                      child: const Text(
                        "Signup",
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




// import 'package:flutter/material.dart';
// import 'package:new_nectar_ui_project/views/phoneNumber/phone-number_screen.dart';
// import 'package:new_nectar_ui_project/widgets/commonWidgets/common_btn.dart';
//
// class SignInScreen extends StatelessWidget {
//   const SignInScreen({super.key});
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     double keyboardHeight = MediaQuery.viewInsetsOf(context).bottom;
//
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//
//           children: [
//             Container(
//               width: double.infinity,
//               child: Image.asset("assets/images/signIn_screen_img/food.png"),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(25.0),
//               child: Container(
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Get your groceries\nwith nectar',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 26,
//                     ),
//                     ),
//
//                     SizedBox(height: 20,),
//                     TextField(
//                       onTap: (){
//
//                         // showModalBottomSheet(
//                         //   context: context,
//                         //   isScrollControlled: true,
//                         //   builder: (_) {
//                         //     return SafeArea(
//                         //       child: Container(
//                         //         height: double.infinity,
//                         //         child: PhoneNumberScreen(),
//                         //       ),
//                         //     );
//                         //   },
//                         // );
//                         // Navigator.push(
//                         //   context,
//                         //   PageRouteBuilder(
//                         //     transitionDuration: const Duration(milliseconds: 300),
//                         //     pageBuilder: (_, animation, __) => const PhoneNumberScreen(),
//                         //     transitionsBuilder: (_, animation, __, child) {
//                         //       return SlideTransition(
//                         //         position: Tween(
//                         //           begin: const Offset(1, 0), // Right → Left
//                         //           end: Offset.zero,
//                         //         ).animate(
//                         //           CurvedAnimation(
//                         //             parent: animation,
//                         //             curve: Curves.ease,
//                         //           ),
//                         //         ),
//                         //         child: child,
//                         //       );
//                         //     },
//                         //   ),
//                         // );
//                       },
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                         // hintText: "Enter mobile number",
//                         prefixIcon: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//
//                               Text("🇮🇳", style: TextStyle(fontSize: 20)),
//                               SizedBox(width: 6),
//
//                               Text(
//                                 "+91",
//                                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//
//                     SizedBox(height: 28,),
//
//                     Center(child: Text("Or connect with social media")),
//
//                     SizedBox(height: 28,),
//
//                    CommonButton(text: "Continue with Google", backgroundColor: Color(0xff4A66AC),onPressed: (){}),
//
//                     SizedBox(height: 20,),
//
//                  CommonButton(text: "Continue with Facebook", backgroundColor: Color(0xff5383EC),onPressed: (){}),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }
