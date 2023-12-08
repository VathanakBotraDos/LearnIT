import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Map<String, String>> notifications = [
    {'title': '2-steps-Authentication', 'sender': 'System', 'time': '10:00 AM'},
    {'title': '20% off', 'sender': 'Promotions', 'time': 'Yesterday'},
    {'title': 'News Posted', 'sender': 'News', 'time': '2 days ago'},
    {'title': '2-steps-Authentication', 'sender': 'System', 'time': '10:00 AM'},
    {'title': '20% off', 'sender': 'Promotions', 'time': 'Yesterday'},
    {'title': 'News Posted', 'sender': 'News', 'time': '2 days ago'},
    {'title': '2-steps-Authentication', 'sender': 'System', 'time': '10:00 AM'},
    {'title': '20% off', 'sender': 'Promotions', 'time': 'Yesterday'},
    {'title': 'News Posted', 'sender': 'News', 'time': '2 days ago'},
    {'title': '2-steps-Authentication', 'sender': 'System', 'time': '10:00 AM'},
    {'title': '20% off', 'sender': 'Promotions', 'time': 'Yesterday'},
    {'title': 'News Posted', 'sender': 'News', 'time': '2 days ago'},
    {'title': '2-steps-Authentication', 'sender': 'System', 'time': '10:00 AM'},
    {'title': '20% off', 'sender': 'Promotions', 'time': 'Yesterday'},
    {'title': 'News Posted', 'sender': 'News', 'time': '2 days ago'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/home.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Content
          notifications.isNotEmpty
              ? ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(notifications[index]['title']!),
                onDismissed: (direction) {
                  setState(() {
                    notifications.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Notification dismissed'),
                    ),
                  );
                },
                background: Container(
                  color: Colors.grey.withOpacity(0.1),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                child: Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0),
                  color: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      // Add a CircleAvatar as the leading widget for the profile picture
                      backgroundImage: AssetImage(
                        'assets/images/LTC.jpg',
                        // You can replace this with the path to your actual profile pictures
                      ),
                    ),
                    title: Text(
                      notifications[index]['title']!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notifications[index]['sender']!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            notifications[index]['time']!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )
              : Center(
            child: Text(
              'No notifications left',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationPage(),
  ));
}
