
import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/home.dart';
import 'package:flutter_application_2/presentation/pages/home/profile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
    
  @override
  Widget build(BuildContext context) {
   
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





