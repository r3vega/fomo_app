import 'package:flutter/material.dart';

const Color background = Colors.black;
const Color primaryColor = Colors.blue;

final themeData = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: background,
  inputDecorationTheme: inputDecorationTheme,
  textButtonTheme: textButtonTheme,
  textSelectionTheme: textSelectionTheme,
  textTheme: textTheme,
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
      color: Colors.grey, // Color de los bordes cuando el campo está habilitado
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.blue, // Color de los bordes cuando el campo está enfocado
      width: 2.0,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.red, // Color de los bordes cuando hay un error
      width: 2.0,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors
          .red, // Color de los bordes cuando hay un error y el campo está enfocado
      width: 2.0,
    ),
  ),
);
TextSelectionThemeData textSelectionTheme = TextSelectionThemeData(
  cursorColor: Colors.blue, // Color del cursor
  selectionColor:
      Colors.blue.withOpacity(0.5), // Color de la selección de texto
  selectionHandleColor: Colors.blue, // Color del control de selección
);

TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    padding: WidgetStateProperty.all<EdgeInsets>(
        EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0)),
    textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(fontSize: 18)),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  ),
);
