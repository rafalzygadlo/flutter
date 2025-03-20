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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: 
        Form(
          /*key: _formKey,*/
          child: 
          Column(
            children: [
              Text('Welcome. Choose Login to enter application'),
              ElevatedButton(
                onPressed:
                    () =>
                        {} /* Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage())) */,
                child: Text('Login'),
              ),
              Text('Here you can register new account'),
              ElevatedButton(
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
        ),
      ),
      ),
    );
  }
}
