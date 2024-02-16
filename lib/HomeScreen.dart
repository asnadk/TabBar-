import 'package:flutter/material.dart';

class MyTabBarApp extends StatefulWidget {
  @override
  _MyTabBarAppState createState() => _MyTabBarAppState();
}

class _MyTabBarAppState extends State<MyTabBarApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        title: const Text('Tab Bar '),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        bottom: TabBar(
       
          controller: _tabController,
          tabs: const [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Tab 1 Content',style: TextStyle(color: Colors.green,fontSize: 20),),
          ),
          Center(
            child: Text('Tab 2 Content',style: TextStyle(color: Colors.green,fontSize: 20),),
          ),
          Center(
            child: Text('Tab 3 Content',style: TextStyle(color: Colors.green,fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
