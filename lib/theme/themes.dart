import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThemes {
  static final primary = Colors.purpleAccent;
  static final primaryColor = Colors.deepPurple;
  /////////DARK THEME
  static final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.black,
      brightness: Brightness.dark,
    ),
    
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.grey[900],
    colorScheme: ColorScheme.dark(primary: primary),
    primaryColorDark: primaryColor,
    primaryColor: Colors.black,
    dividerColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.grey[900],
      elevation: 10,
      selectedLabelStyle: TextStyle(
          color: Color(0xFFA67926), fontFamily: 'Montserrat', fontSize: 14.0),
      unselectedLabelStyle: TextStyle(
          color: Colors.grey[600], fontFamily: 'Montserrat', fontSize: 12.0),
      selectedItemColor: Color(0xFFFFFFFF),
      unselectedItemColor: Colors.grey[500],
      showUnselectedLabels: true,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.deepPurple,
      shape: RoundedRectangleBorder(),
      textTheme: ButtonTextTheme.accent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.black,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.black,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      // indicator: BoxDecoration(
      //           borderRadius: BorderRadius.circular(50), // Creates border
      //           color: Colors.blue.shade700),
      
      // indicator: ,
      unselectedLabelColor: Colors.grey[400],
      indicator: BoxDecoration(color:Colors.black,
    ),),
  
    iconTheme: IconThemeData(
      color: Colors.white
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.black,
      ),
    ),
  );
  //////////LIGHT THEME
  //////////////////////////////
  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.deepPurple,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    brightness: Brightness.light,
    primaryColorDark: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(primary: primary),
    dividerColor: Colors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.deepPurple,
      elevation: 10,
      selectedLabelStyle: TextStyle(
          color: Color(0xFFA67926), fontFamily: 'Montserrat', fontSize: 14.0),
      unselectedLabelStyle: TextStyle(
          color: Colors.grey[600], fontFamily: 'Montserrat', fontSize: 12.0),
      selectedItemColor: Color(0xFFFFFFFF),
      unselectedItemColor: Colors.white70,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    iconTheme: IconThemeData(
      color: Colors.deepPurple
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.deepPurple
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.deepPurple,
        shadowColor: Colors.white,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.deepPurple,
      shape: RoundedRectangleBorder(),
      textTheme: ButtonTextTheme.accent,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.deepPurple,
      indicator: BoxDecoration(color:Colors.deepPurple[200],
    ),
      // indicator: BoxDecoration(
      //           borderRadius: BorderRadius.circular(50), // Creates border
      //           color: Colors.blue.shade700),
      
      // indicator: ,
      unselectedLabelColor: Colors.deepPurple[400],
    )
    ,

    primaryIconTheme: IconThemeData(
      color: Colors.deepPurple,
    ),
    accentIconTheme: IconThemeData(
      color: Colors.deepPurple,
    ),
    dividerTheme: DividerThemeData(color: Colors.deepPurple),
  );
}
