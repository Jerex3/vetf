import 'package:flutter/material.dart';

class CustomTheme {


  
  static ThemeData getLightTheme() => ThemeData(
   
   colorScheme:const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.purple,
    onPrimary: Colors.black,
    secondary: Colors.orange,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.black,
    background: Color.fromARGB(255, 243, 229, 247),
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    
  )
  
  
  
  );   
}