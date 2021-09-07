import 'dart:convert';

import 'package:f_splash_screen/constants.dart';
import 'package:f_splash_screen/screens/ui/checked.dart';
import 'package:f_splash_screen/screens/ui/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

Future<List> getData() async {
  final response = await http.get(
    Uri.parse('https://www.aampower.app/data/getcity.aspx'),
  );
  var json = jsonDecode(response.body);
  print(json);
  return json;
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/splash_bg.svg"),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/gerda_logo.svg"),
                  Spacer(),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register())),
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF6CD8D1)),
                          child: Text("Sign Up"))),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          getData();
                          /*   Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyChe(),
                            ),
                          );*/
                        },
                        style: TextButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0XFF6CDBD1),
                              ),
                            )),
                        child: Text("Sign In"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  )
                ],
              ),
            ),
          )
          // Image.asset("assets/images/aa.png")
        ],
      ),
    );
  }
}
