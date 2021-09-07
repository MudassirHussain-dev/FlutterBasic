import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String Name;
  final String uriImage;

  const Profile({Key? key, required this.Name, required this.uriImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Name),
        centerTitle: true,
      ),
      body: Image.network(
        uriImage,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
