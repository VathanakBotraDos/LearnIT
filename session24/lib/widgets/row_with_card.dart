import 'package:flutter/material.dart';

class RowWithCardWidget extends StatelessWidget {
  final int index;

  const RowWithCardWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.white70, Colors.black12],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(
          'assets/images/recommended.jpg', // Adjust the path based on your project structure
          width: 350.0, // Adjust the width to fit the container
          height: 200.0, // Adjust the height to fit the container
          fit: BoxFit.cover, // Use BoxFit.cover to make the image cover the entire container
        ),
      ),
    );
  }
}



// //2
// import 'package:flutter/material.dart';
//
// class RowWithCardWidget extends StatelessWidget {
//   final int index;
//
//   const RowWithCardWidget({Key? key, required this.index}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4.0,
//       margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       child: ListTile(
//         contentPadding: EdgeInsets.all(16.0),
//         leading: Icon(
//           Icons.library_books,
//           size: 36.0,
//           color: Colors.lightBlue,
//         ),
//         title: Text(
//           'Course $index',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         subtitle: Text('On Going'),
//         trailing: Text(
//           '${index * 7}%',
//           style: TextStyle(color: Colors.lightBlue),
//         ),
//         onTap: () {
//           print('Tapped on Row $index');
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
  //
  // class RowWithCardWidget extends StatelessWidget {
  //   final int index;
  //
  //   const RowWithCardWidget({Key? key, required this.index}) : super(key: key);
  //
  //   @override
  //   Widget build(BuildContext context) {
  //     return Card(
  //       child: ListTile(
  //         leading: Icon(
  //           Icons.library_books,
  //           size: 48.0,
  //           color: Colors.lightBlue,
  //         ),
  //         title: Text('course $index'),
  //         subtitle: Text('On going'),
  //         trailing: Text(
  //           '${index * 7}%',
  //           style: TextStyle(color: Colors.lightBlue),
  //         ),
  //         onTap: () {
  //           print('Tapped on Row $index');
  //         },
  //       ),
  //     );
  //   }
  // }