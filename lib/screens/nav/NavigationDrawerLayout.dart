import 'package:f_splash_screen/constants.dart';
import 'package:f_splash_screen/screens/nav/component/NavigationDrawerWidget.dart';
import 'package:flutter/material.dart';

class DrawerLayout extends StatefulWidget {
  const DrawerLayout({Key? key}) : super(key: key);

  @override
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      body:Builder(
        builder: (context)=>Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Container(
            height: 50,
            width: 250,
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Open Drawer",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.open_in_new,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
/*Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Container(
          height: 50,
          width: 250,
          child: FlatButton(
            color: Colors.green,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Open Drawer",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.open_in_new,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      )*/