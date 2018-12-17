import 'package:flutter/material.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 关闭debug标识
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        // highlightColor: 点击的背景颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        // splashColor: 点击的水波纹颜色
        splashColor: Colors.white70,
        // primaryColor: Colors.yellow
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            'App Demo',
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        // body: ListViewDemo(),
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            ListViewDemo(),
            // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            BasicDemo(),
            // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            LayoutDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
