
import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/home.dart';
import 'package:flutter_application_2/presentation/pages/home/profile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  
  @override
  State<StatefulWidget> createState() => MenuPageState();

}
class MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;
     
 static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ProfilePage(),
    Text('Index 2: School', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavigationBar Sample')),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
 
  }
}
/*
      return DefaultTabController(
        
      length: 4, // Liczba zakładek
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Menu'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.dangerous)),
            ],

          ),
        ),
        body: TabBarView(
          children: [
            Center(child: HomePage()),
            Center(child: ProfilePage()),
            Center(child: Text('Settings')),
            Center(child: Text('Ustawienia')),
          ],
        ),
      ),
    );
  }
}

*/



  void _onItemTapped(int value) {
  }

