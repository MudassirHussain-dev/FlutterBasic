import 'package:f_splash_screen/constants.dart';
import 'package:f_splash_screen/screens/nav/NavigationDrawerLayout.dart';
import 'package:f_splash_screen/screens/ui/register.dart';
import 'package:f_splash_screen/screens/myui/splashscreen.dart';
import 'package:f_splash_screen/screens/ui/welcomscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      theme: ThemeData(
        primaryColor: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            padding: EdgeInsets.all(defaultPadding),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: textFieldBorder,
          enabledBorder: textFieldBorder,
          focusedBorder: textFieldBorder,
        ),
      ),
      home: DrawerLayout(),
    );
  }
}
