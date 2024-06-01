import 'package:flutter/material.dart';

const Color backgroundColor = Colors.black;
const Color primaryColor = Colors.blue;

final themeData = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: backgroundColor,
  inputDecorationTheme: inputDecorationTheme,
  textButtonTheme: textButtonTheme,
  textSelectionTheme: textSelectionTheme,
  textTheme: textTheme,
  bottomNavigationBarTheme: bottomNavigationBarTheme,
);

TextTheme textTheme = const TextTheme(
  titleLarge: TextStyle(
      fontSize: 45.0, fontWeight: FontWeight.bold, color: Colors.white),
  /*
          displayLarge: TextStyle(fontSize: 57.0, fontWeight: FontWeight.bold, color: Colors.black),
          displayMedium: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold, color: Colors.black),
          displaySmall: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.black),
          headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
          headlineMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.black),
          headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
          titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
          titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
          bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
          labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
          labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.black),
          labelSmall: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, color: Colors.black),*/
);

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  labelStyle: TextStyle(color: Colors.white, fontSize: 16),
  hintStyle: TextStyle(color: Colors.black),
  filled: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
  iconColor: Colors.blue,
  prefixIconColor: Colors.blue,
  suffixIconColor: Colors.blue,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: primaryColor,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.blue,
      width: 2.0,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.red,
      width: 2.0,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.red,
      width: 2.0,
    ),
  ),
);

TextSelectionThemeData textSelectionTheme = TextSelectionThemeData(
  cursorColor: Colors.blue,
  selectionColor: Colors.blue.withOpacity(0.5),
  selectionHandleColor: Colors.blue,
);

TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    padding: MaterialStateProperty.all<EdgeInsets>(
      EdgeInsets.symmetric(vertical: 0, horizontal: 0),
    ),
    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 18)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  ),
);

BottomNavigationBarThemeData bottomNavigationBarTheme =
    BottomNavigationBarThemeData(
  backgroundColor:
      backgroundColor, // Elimina el withAlpha para opacidad completa
  selectedItemColor: primaryColor,
  showUnselectedLabels: true,
  unselectedItemColor: Colors.white,
  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
);
