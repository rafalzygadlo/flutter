import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/login.dart';

class WelcomePage extends StatefulWidget {
  @override
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: Column(
        children: [_buttonLogin(), _buttonRegister()]
      ),
    );
  }

  Widget _buttonLogin() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10,10,10,10),
      child: Column(
        children: [
           Text('Here you can register new account'),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }

Widget _buttonRegister() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10,10,10,10),
      child: Column(
        children: [
           Text('Here you can register new account'),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }


  
}
