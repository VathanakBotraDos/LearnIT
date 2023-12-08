import 'package:flutter/material.dart';
import 'NotificationPage.dart';
import 'HomePage.dart';
import 'FavoritePage.dart';
import 'SearchPage.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController?.addListener(_tabChanged);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  void _tabChanged() {
    if (_tabController?.indexIsChanging ?? false) {
      print('tabChanged: ${_tabController?.index}');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,

      // endDrawer: RightDrawerWidget(),


      body: SafeArea(
        child: TabBarView(
          controller: _tabController!,
          children: [
            HomePage(),
            SearchPage(),
            FavoritePage(),
            NotificationPage(),
          ],
        ),
      ),


      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.black.withOpacity(1),
          child: TabBar(
            controller: _tabController!,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Explore',
              ),
              Tab(
                icon: Icon(Icons.collections_bookmark),
                text: 'Collection',
              ),
              Tab(
                icon: Icon(Icons.notifications),
                text: 'Notifications',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

