import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class CustomDrawer extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black, // Set background color
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[850], // Dark grey for the header
            ),
            child: Text(
              "Formula 1",
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.red), // Red icon
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white), // White text
            ),
            onTap: () {
              Get.toNamed('/profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red), // Red icon
            title: Text(
              "Logout",
              style: TextStyle(color: Colors.white), // White text
            ),
            onTap: () {
              authController.logout();
            },
          ),
        ],
      ),
    );
  }
}
