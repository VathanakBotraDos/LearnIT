import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final int index;

  const RowWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.cast_for_education,
        size: 48.0,
        color: Colors.red,
      ),
      title: Text('Lecture $index'),
      subtitle: Text('Completed!'),
      trailing: (index % 3).isEven
          ? Icon(Icons.bookmark_border)
          : Icon(Icons.bookmark),
      onTap: () {
        print('Tapped on Row $index');
      },
    );
  }
}