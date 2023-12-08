import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];
  List<String> _differentImages = [
    'assets/images/earth.jpg',
    'assets/images/R.jpg',
    'assets/images/course_rec.jpg',
    'assets/images/flowchart.jpg',
    'assets/images/LTC.jpg',
    'assets/images/vsc.jpg',
    'assets/images/htlr.jpg',
    'assets/images/blho.jpg',
    'assets/images/earth.jpg',
    'assets/images/R.jpg',
    'assets/images/course_rec.jpg',
    'assets/images/flowchart.jpg',
    'assets/images/LTC.jpg',
    'assets/images/vsc.jpg',
    'assets/images/htlr.jpg',
    'assets/images/blho.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _searchController,
                onChanged: _onSearchChanged,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter search term',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              _buildSearchResults(),
            ],
          ),
        ),
      ),
    );
  }

  void _onSearchChanged(String value) {
    setState(() {
      _searchResults = _differentImages
          .where((item) => item.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  Widget _buildSearchResults() {
    if (_searchController.text.isEmpty) {
      return Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: _differentImages.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Image.asset(
                _differentImages[index],
                key: UniqueKey(),
                height: 100.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      );
    } else if (_searchResults.isEmpty) {
      return Expanded(
        child: Center(
          child: Text(
            'No results found',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      return Expanded(
        child: ListView.builder(
          itemCount: _searchResults.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Image.asset(
                _searchResults[index],
                key: UniqueKey(),
                height: 100.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      );
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: SearchPage(),
  ));
}
