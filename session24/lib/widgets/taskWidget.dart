import 'package:flutter/material.dart';

class TaskProgressIndicator extends StatelessWidget {
  final double progress;

  TaskProgressIndicator({required this.progress});

  @override
  Widget build(BuildContext context) {
    Color determineColor() {
      if (progress >= 0.9) {
        return Colors.green;
      } else if (progress >= 0.5) {
        return Colors.yellow;
      } else {
        return Colors.red;
      }
    }

    return Container(
      width: 200,
      height: 7.0,
      decoration: BoxDecoration(
        color: Colors.grey[300], // Background color of the progress bar
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.transparent,
          valueColor: AlwaysStoppedAnimation<Color>(determineColor()),
        ),
      ),
    );
  }
}
