import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Widget/naviagation_drawer.dart';
import '../_TapView/whatsnews.dart';
import '../_TapView/Favourites.dart';
import '../_TapView/populair.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Explore"),
          centerTitle: false,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed:(){}),
            IconButton(icon: Icon(Icons.more_vert), onPressed:(){}),

          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: [
            Tab(
              text: "WHATS NEW",
            ),

              Tab(
              text: "POPULAIRE",
            ),
              Tab(
              text: "FAVOURITES",
            ),
          ],
          ),

        ),
        drawer: DrawerAppbar(),
        body: TabBarView(
          children: <Widget> [
            WhatsNews(),
            Populair(),
            Favourites(),
          ],
          controller: _tabController,

        ),
    );



  }
}
