import 'package:f_splash_screen/screens/nav/component/NavigationDrawerWidget.dart';
import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("People"),
        centerTitle: true,
        backgroundColor:Colors.green,
      ),
    );
  }
}
