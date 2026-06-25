import 'package:flutter/material.dart';
import 'package:new_nectar_ui_project/views/splash/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "nectar",
    // routes: ,

    home: nectar(),
    );
  }
}

class nectar extends StatelessWidget {
  const nectar({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}






// Just For Learn ThemData

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // 👇 this is the main theme for your app
//       theme: ThemeData(
//         primaryColor: Colors.deepPurple, // main color for AppBar, Buttons, etc.
//         scaffoldBackgroundColor: Colors.white, // background color of screens
//         fontFamily: 'Poppins', // default font for the whole app
//         textTheme: const TextTheme(
//           // default text styles
//           headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           bodyMedium: TextStyle(fontSize: 16),
//         ),
//       ),
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // 👇 Get theme data anywhere in app
//     final theme = Theme.of(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Themed App', style: theme.textTheme.headlineLarge),
//       ),
//       body: Center(
//         child: Text(
//           'Hello Flutter!',
//           style: theme.textTheme.bodyMedium, // uses font + color from theme
//         ),
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';
//
// class AppColors {
//   static const Color textPrimary = Colors.black;
//   static const Color primary = Color(0xFF6A1B9A);
// }
//
// class AppTextStyles {
//   static const TextStyle heading = TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.bold,
//     color: AppColors.textPrimary,
//   );
// }
//
// class DemoScreen extends StatelessWidget {
//   const DemoScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Default heading
//             Text('Normal Heading', style: AppTextStyles.heading),
//
//             // Custom one (manually edited)
//             Text(
//               'Customized Heading',
//               style: AppTextStyles.heading.copyWith(
//                 color: Colors.red, // only color changed
//                 fontSize: 30, // only size changed
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

