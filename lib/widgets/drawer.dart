import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final imageUrl =
        "https://image.shutterstock.com/image-photo/business-woman-drawing-global-structure-260nw-1006041130.jpg";

    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Test Name"),
                  accountEmail: Text("Test@test.com"),
                  currentAccountPicture: Image.network(imageUrl),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home", textScaleFactor: 1.2),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile", textScaleFactor: 1.2),
            )
          ],
        ),
      ),
    );
  }
}
