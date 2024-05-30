import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFF3F51B5), 
  hintColor: Colors.white, 
  textTheme: TextTheme(
    headline6: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18.0, 
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontSize: 16.0, 
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Color(0xFF3F51B5), 
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0, 
      fontWeight: FontWeight.bold,
    ),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Colors.grey[300]!,
    labelStyle: TextStyle(color: Colors.black),
    secondaryLabelStyle: TextStyle(color: Colors.white),
    secondarySelectedColor: Colors.blue,
    padding: EdgeInsets.all(4.0),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF3F51B5), 
    textTheme: ButtonTextTheme.primary,
  ),
);

final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: Color(0xFF3F51B5), 
  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  textStyle: TextStyle(fontSize: 16.0),
);
