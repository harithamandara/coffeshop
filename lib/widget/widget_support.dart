import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle HeadlineTextFieldStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle LightTextFieldStyle() {
    return TextStyle(
      color: Colors.black38,
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle semiBoldTextFieldStyleWhite() {
    return TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }
}