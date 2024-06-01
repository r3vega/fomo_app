import 'package:flutter/material.dart';

const Color backgroundColor = Color.fromRGBO(33, 37, 41, 1);
const Color onBackgroundColor = Color.fromRGBO(73, 80, 87, 1);
const Color primaryColor = Color.fromRGBO(108, 117, 125, 1);
const Color onPrimaryColor = Color.fromRGBO(248, 249, 250, 1);

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
      fontSize: 45.0, fontWeight: FontWeight.bold, color: onPrimaryColor),
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
  labelStyle: const TextStyle(color: onPrimaryColor, fontSize: 16),
  hintStyle: const TextStyle(color: backgroundColor),
  filled: true,
  fillColor: Colors.white,
  contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
  iconColor: primaryColor,
  prefixIconColor: primaryColor,
  suffixIconColor: primaryColor,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: primaryColor,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: Colors.grey,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: primaryColor,
      width: 2.0,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: Colors.red,
      width: 2.0,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(
      color: Colors.red,
      width: 2.0,
    ),
  ),
);

TextSelectionThemeData textSelectionTheme = TextSelectionThemeData(
  cursorColor: primaryColor,
  selectionColor: primaryColor.withOpacity(0.5),
  selectionHandleColor: primaryColor,
);

TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
    foregroundColor: WidgetStateProperty.all<Color>(onPrimaryColor),
    padding: WidgetStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
    ),
    textStyle:
        WidgetStateProperty.all<TextStyle>(const TextStyle(fontSize: 18)),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  ),
);

BottomNavigationBarThemeData bottomNavigationBarTheme =
    const BottomNavigationBarThemeData(
  backgroundColor:
      onBackgroundColor, // Elimina el withAlpha para opacidad completa
  selectedItemColor: onPrimaryColor,
  showUnselectedLabels: true,
  unselectedItemColor: primaryColor,
  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
  type: BottomNavigationBarType.fixed,
);
