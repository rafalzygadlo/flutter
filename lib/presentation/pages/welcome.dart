import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/login.dart';
import 'package:flutter_application_2/presentation/pages/otp.dart';
import 'package:flutter_application_2/presentation/pages/register.dart';

class WelcomePage extends StatefulWidget {
  @override
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome'),       
      ),
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
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OtpPage()),
              );
            },
            child: Text('Here you can login\n to your new account.'),
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
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
            child: Text('Here you can register new account'),
          ),
        ],
      ),
    );
  }
  
}

