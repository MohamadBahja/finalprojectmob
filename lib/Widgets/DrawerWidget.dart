import 'package:copyproject/Pages/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Pages/CartPage.dart';
import '../Pages/LoginPage.dart';
class DrawerWidget extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),

              accountName: Text("USER",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
              ),
              ),
              accountEmail: Text("user@etc.com",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/avatar.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.red,
            ),
            title: Text("Home",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.app_badge,color: Colors.red,
            ),
            title: Text("My Account",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cart_fill,color: Colors.red,
            ),
            title: Text("My Orders",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
            onTap: () {
              // Navigate to the CartPage.dart
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartPage(), // Replace CartPage with your actual page
                ),
              );
            },
          ),

          ListTile(
            leading: Icon(CupertinoIcons.settings,color: Colors.red,
            ),
            title: Text("Settings",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.red,
            ),
            title: Text("Log Out",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
            onTap: () {
              // Navigate to the CartPage.dart
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(), // Replace CartPage with your actual page
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
