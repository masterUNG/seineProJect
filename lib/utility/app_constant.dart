import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppConstant {
  static List<int> numbers = <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  static List<String> pathFaces = <String>[
    'assets/images/redface.png',
    'assets/images/redface.png',
    'assets/images/redface.png',
    'assets/images/blurface.png',
    'assets/images/blurface.png',
    'assets/images/blurface.png',
    'assets/images/yellowface.png',
    'assets/images/yellowface.png',
    'assets/images/yellowface.png',
    'assets/images/user.png',
    'assets/images/user.png',
  ];

  TextStyle appStyle({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }

  TextStyle h2Style({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 15.sp,
      color: color,
      fontWeight: fontWeight ?? FontWeight.w700,
    );
  }

  BoxDecoration gradientBox() => BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const RadialGradient(colors: [
          Colors.white,
          Color.fromARGB(255, 219, 75, 8),
          Colors.white,
          Color.fromARGB(255, 209, 224, 3),
          Colors.white,
        ], radius: 1.2, center: Alignment.center),
      );

      
  BoxDecoration linearBox() => BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 86, 82, 82),
          Colors.white,
          Color.fromARGB(255, 219, 75, 8),
          Colors.white,
          Color.fromARGB(255, 209, 224, 3),
        ],
      ));

  BoxDecoration pictureBox() => BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage('assets/images/bg2.jpg'),
          opacity: 0.5,
          fit: BoxFit.cover,
        ),
      );
}
