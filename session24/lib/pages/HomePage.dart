
import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/right_drawer.dart';
import '../widgets/row_with_card.dart';
import '../widgets/taskWidget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: RightDrawerWidget(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildWelcomeWidget(), // Include WelcomeWidget here
                const Divider(), // Divider between sections
                _buildRecommendedSection(),
                const Divider(), // Divider between sections
                _buildDashboardSection(),
                const Divider(), // Divider between sections
                _buildNewsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeWidget(){
      return WelcomeWidget();
  }

  Widget _buildRecommendedSection() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Opacity(
        opacity: 1,
        child: Container(
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blueAccent, Colors.black12],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5, // Adjust the number of recommended courses
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: RowWithCardWidget(index: index),
              );

            },
          ),
        ),
      ),
    );
  }

  Widget _buildDashboardSection() {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Opacity(
        opacity: 0.8,
        child: Container(
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.black12, Colors.black38],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),

          // I want a section title
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Section title
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Divider(),
              _buildDashboardInfo(Icons.assignment, 'Assignment 4'),
              Padding(
                padding: EdgeInsets.only(left: 150.0, right: 5.0), // Adjusted padding
                child: TaskProgressIndicator(progress: 0.3),
              ),
              Divider(),
              _buildDashboardInfo(Icons.folder, 'Project'),
              Padding(
                padding: EdgeInsets.only(left: 150.0, right: 5.0), // Adjusted padding
                child: TaskProgressIndicator(progress: 0.6),
              ),
              Divider(),
              _buildDashboardInfo(Icons.calendar_today, 'Attendance'),
              Padding(
                padding: EdgeInsets.only(left: 150.0, right: 5.0), // Adjusted padding
                child: TaskProgressIndicator(progress: 0.9),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildDashboardInfo(IconData icon, String text) {
    return Row(
      children: [
        SizedBox(width: 10.0),
        Icon(icon, color: Colors.white, size: 16.0),
        SizedBox(width: 8.0),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 12.0, color: Colors.white),
          ),
        ),
        SizedBox(width: 10.0),
      ],
    );
  }


  Widget _buildNewsSection() {
    return Padding(
      padding: const EdgeInsets.all(16), // Reduced outer padding
      child: Container(
        padding: EdgeInsets.all(16), // Reduced inner padding
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.black12, Colors.lightBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16.0), // Reduced border radius
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest News',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            NewsCard(
              title: 'News 1',
              content: 'Lorem ipsum...',
              imageUrl: 'assets/images/earth.jpg',
            ),
            NewsCard(
              title: 'News 2',
              content: 'Lorem ipsum...',
              imageUrl: 'assets/images/R.jpg',
            ),
            NewsCard(
              title: 'News 3',
              content: 'Lorem ipsum...',
              imageUrl: 'assets/images/htm.jpg',
            ),
            NewsCard(
              title: 'News 4',
              content: 'Lorem ipsum...',
              imageUrl: 'assets/images/course_rec.jpg',
            ),

          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl; // Add this line for the image URL

  NewsCard({
    required this.title,
    required this.content,
    required this.imageUrl, // Add this line for the image URL
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              height: 120.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              content,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}


