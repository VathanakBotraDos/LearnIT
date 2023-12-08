import 'package:flutter/material.dart';

import '../pages/help.dart';
import '../pages/log_out.dart';
import '../pages/profile.dart';
import '../pages/setting.dart';

class MenuListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          // Set the background color to blue.shade900
          leading: const Icon(
            Icons.face,
            color: Colors.white, // Set the icon color to white
          ),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.white), // Set the text color to white
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => profile(),
              ),
            );
          },
        ),
        ListTile(

          leading: const Icon(
            Icons.question_answer, // Note: Changed to 'question_answer' as 'question_mark' doesn't exist
            color: Colors.white,
          ),
          title: Text(
            'Help',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => help(),
              ),
            );
          },
        ),
        ListTile(

          leading: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
          title: Text(
            'Log out',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => log_out(),
              ),
            );
          },
        ),
        Divider(color: Colors.grey),
        ListTile(

          leading: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}