import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  final List<Map<String, String>> savedItems = [
    {'title': 'Favorite Item 1', 'category': 'Category A', 'time': '10:00 AM'},
    {'title': 'Favorite Item 2', 'category': 'Category B', 'time': 'Yesterday'},
    {'title': 'Favorite Item 3', 'category': 'Category C', 'time': '2 days ago'},
    {'title': 'Favorite Item 1', 'category': 'Category A', 'time': '10:00 AM'},
    {'title': 'Favorite Item 2', 'category': 'Category B', 'time': 'Yesterday'},
    {'title': 'Favorite Item 3', 'category': 'Category C', 'time': '2 days ago'},
    {'title': 'Favorite Item 1', 'category': 'Category A', 'time': '10:00 AM'},
    {'title': 'Favorite Item 2', 'category': 'Category B', 'time': 'Yesterday'},
    {'title': 'Favorite Item 3', 'category': 'Category C', 'time': '2 days ago'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Collections',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: savedItems.isNotEmpty
                    ? ListView.builder(
                  itemCount: savedItems.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: Key(savedItems[index]['title']!),
                      onDismissed: (direction) {
                        // Your dismiss logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Item removed from favorites'),
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
                        margin: EdgeInsets.only(bottom: 10.0),
                        color: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(child: Text('A')), // Add leading widget here
                          title: Text(
                            savedItems[index]['title']!,
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
                                  savedItems[index]['category']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  savedItems[index]['time']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          trailing: Icon(Icons.bookmark, color: Colors.white),
                        ),
                      ),
                    );
                  },
                )
                    : Center(
                  child: Text(
                    'No saved items',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FavoritePage(),
  ));
}
