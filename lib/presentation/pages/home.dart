import 'package:flutter/material.dart';
import 'home/bank.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.balance),
            title: Text('Bank Konto'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BankPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Steuer Info'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Text('aaa')),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Steuer Info'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlertDialog(
                  content: Text('eqwe'),
                  title: Text('data'),
                )),
              );
            },
          ),
        ],
      ),
    );
  }
 }
