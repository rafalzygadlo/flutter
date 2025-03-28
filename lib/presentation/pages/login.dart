import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/menu.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  void _submitForm(BuildContext context) {
    
    /*
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Dane zapisane poprawnie!')));
    */

    final route = MaterialPageRoute(builder: (context) => MenuPage());

    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'email')),
              SizedBox(height: 10),
              TextFormField(decoration: InputDecoration(labelText: 'Password')),
              SizedBox(height: 20),

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () => _submitForm(context),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
