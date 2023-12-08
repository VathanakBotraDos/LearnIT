import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Settings'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.jpg'), // Set background image
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                title: Text('Account', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to Account settings page
                },
              ),
              ListTile(
                title: Text('Notifications', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to Notifications settings page
                },
              ),
              ListTile(
                title: Text('Privacy', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to Privacy settings page
                },
              ),
              ListTile(
                title: Text('Security', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to Security settings page
                },
              ),
              // Add more settings here
            ],
          ).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingPage(),
  ));
}
