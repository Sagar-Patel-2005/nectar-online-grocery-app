import 'package:flutter/material.dart';

class AppTextStyles{
  static const TextStyle heading = TextStyle(
    fontFamily: "Poppins",
    color: Colors.black,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subHeading = TextStyle(
    fontFamily: "Poppins",
    color: Color(0xFF7C7C7C),
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

}


















//Create a CustomText widget

// import 'package:flutter/material.dart'
// class CustomText extends StatelessWidget {
//   final String text;        // required text
//   final double? fontSize;   // optional override
//   final Color? color;       // optional override
//   final FontWeight? fontWeight;
//   final TextAlign? textAlign;
//
//   const CustomText(
//       this.text, {
//         super.key,
//         this.fontSize,
//         this.color,
//         this.fontWeight,
//         this.textAlign,
//       });
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       textAlign: textAlign ?? TextAlign.start,
//       style: TextStyle(
//         fontFamily: "Poppins",      // 👈 fixed font family
//         fontSize: fontSize ?? 16,   // default size
//         color: color ?? Colors.black,
//         fontWeight: fontWeight ?? FontWeight.normal,
//       ),
//     );
//   }
// }
