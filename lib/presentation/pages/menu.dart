import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/home.dart';
import 'package:flutter_application_2/presentation/pages/profile/profile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<StatefulWidget> createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(actions: <Widget> [IconButton(onPressed: (){}, icon: Icon(Icons.notifications) )],),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomSheet: Text('2025 my app'),
      
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
