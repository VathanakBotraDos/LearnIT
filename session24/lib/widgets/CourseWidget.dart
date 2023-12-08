import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  final int index;

  CourseWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    // Sample course data (you can replace this with actual data)
    final List<Map<String, String>> courseData = [
      {
        'name': 'Design',
        'mentor': 'Alex',
        // Add more course-related information as needed
      },
      {
        'name': 'Flutter Development',
        'mentor': 'John',
        // Add more course-related information as needed
      },
      // Add more courses as needed
    ];

    // Get course information based on the index
    final courseInfo = courseData[index % courseData.length];

    return Opacity(
      opacity: 1,
      child: Container(
        width: 150.0,
        decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Course ${index + 1}', // Increment index by 1 to start from 1
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Name: ${courseInfo['name']}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
            Text(
              'Mentor: ${courseInfo['mentor']}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
            // Add more Text widgets for additional course information
          ],
        ),
      ),
    );
  }
}



//1
// class CourseWidget extends StatelessWidget {
//   final int index;
//
//   CourseWidget({required this.index});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150.0,
//       decoration: BoxDecoration(
//         color: Colors.purpleAccent, // Neon purple color
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Course $index',
//             style: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 8.0),
//           // Customize additional course-related information or features here
//           // For example, you might want to display the course duration, instructor, etc.
//           // You can adjust it based on your requirements.
//         ],
//       ),
//     );
//   }
// }
