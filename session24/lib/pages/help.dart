import 'package:flutter/material.dart';

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Help Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.jpg'), // Set background image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              Text(
                'Frequently Asked Questions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              ExpansionTile(
                title: Text('How to update my profile?', style: TextStyle(color: Colors.white)),
                children: <Widget>[
                  ListTile(
                    title: Text('Go to Profile -> Edit Profile. Here you can update your profile details.', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('How to change my password?', style: TextStyle(color: Colors.white)),
                children: <Widget>[
                  ListTile(
                    title: Text('Go to Profile -> Security -> Change Password. Here you can change your password.', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              // Add more questions here
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: help(),
  ));
}
