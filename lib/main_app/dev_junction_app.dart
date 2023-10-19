import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../navigation/routes.dart';

class DevJunctionApp extends StatefulWidget {

  final String initialRoute;
  const DevJunctionApp({Key? key, required this.initialRoute}) : super(key: key);

  @override
  State<DevJunctionApp> createState() => _DevJunctionAppState();
}

class _DevJunctionAppState extends State<DevJunctionApp> {

  int _selectedIndex = 0;

  // Define the tabs and their corresponding icons here
  final List<Widget> _tabs = [
    const Placeholder(),
    const Placeholder()
  ];

  // Define the icons for each tab here
  final List<IconData> _icons = [
    Icons.home,
    Icons.location_city
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevJunctionApp',
      debugShowCheckedModeBanner: false,
      initialRoute: widget.initialRoute,
      routes: Routes.routes,
      home: Scaffold(
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onTabTapped,
          items: _icons.map((icon) => BottomNavigationBarItem(
              icon: Icon(icon),
              label: ''
          )).toList(),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}