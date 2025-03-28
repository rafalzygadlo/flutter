import 'package:flutter/material.dart';
import 'home/bank.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           CircleAvatar(
                radius: 100,
                //backgroundImage: AssetImage('assets/avatars/1.jpg'),
                child: const Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,    
                    fontSize: 30
                  ),
                  'AH'),
              ),
          ListTile(
            leading: Icon(Icons.balance),
            title: Text('Bank Konto'),
            trailing: Icon(Icons.chevron_right),
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
            trailing: Icon(Icons.chevron_right),
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
            trailing: Icon(Icons.chevron_right),
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
