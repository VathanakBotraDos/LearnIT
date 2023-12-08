import 'package:flutter/material.dart';
import 'menu_list_tile.dart';

class RightDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        bottomLeft: Radius.circular(30.0),
      ),
      child: Drawer(
        backgroundColor: Colors.black12,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/LTC.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: null,
            ),
            MenuListTileWidget(),
          ],
        ),
      ),
    );
  }
}

