import 'package:f_splash_screen/constants.dart';
import 'package:f_splash_screen/screens/nav/pages/Profile.dart';
import 'package:f_splash_screen/screens/nav/pages/people.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: defaultPadding + 4.0);

  @override
  Widget build(BuildContext context) {
    final name = "Mudassir Hussain";
    final email = "contacthafizmudassir@gmail.com";
    final imageUri =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/1200px-Flag_of_Pakistan.svg.png";
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: [
            buildHeader(
              urlImage: imageUri,
              email: email,
              name: name,
              onClick: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(
                    Name: name,
                    uriImage: imageUri,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            buildMenuItem(
              text: 'People',
              icon: Icons.people,
              onClick: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            buildMenuItem(
              text: 'Favourites',
              icon: Icons.favorite,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            buildMenuItem(
              text: 'Workflow',
              icon: Icons.workspaces,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            buildMenuItem(
              text: 'Update',
              icon: Icons.update,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            buildMenuItem(
              text: 'Plugins',
              icon: Icons.account_tree_outlined,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            buildMenuItem(
              text: 'Notification',
              icon: Icons.notifications,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
      {required String text, required IconData icon, VoidCallback? onClick}) {
    final color = Colors.white;
    final haverColor = Colors.white70;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: haverColor,
      onTap: onClick,
    );
  }

  void selectedItem(BuildContext context, int i) {
    Navigator.pop(context);
    switch (i) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => People(),
          ),
        );
        break;
    }
  }

  Widget buildHeader(
          {required String urlImage,
          required String email,
          required String name,
          required VoidCallback? onClick}) =>
      InkWell(
        onTap: onClick,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(urlImage),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 12,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(
                  Icons.add_comment_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
}
