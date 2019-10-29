library flutter_package_tab_home;

import 'package:flutter/material.dart';
import 'package:flutter_package_00/flutter_package_00.dart';
import 'package:flutter_package_01/flutter_package_01.dart';
import 'package:flutter_package_tab_home/jksj_page.dart';

class HomeTabApp extends StatefulWidget {

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<HomeTabApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.white,
            //appBar: AppBar(title: Text('首页'),),
            body: TabBarView(children: [MyApp(), MyApp1(), ChromeSafariExampleScreen()]),
            bottomNavigationBar: Container(
              color: Theme.of(context).primaryColor,
                child: TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(text: "Demo1"),
                    Tab(text: "Demo2"),
                    Tab(text: "jksj"),
                  ],
                ),
            ),
          )),
    );
  }
}

