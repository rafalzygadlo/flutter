import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/menu.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
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
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'email')),
              SizedBox(height: 10),
              TextFormField(decoration: InputDecoration(labelText: 'password')),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () => _submitForm(context),
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
