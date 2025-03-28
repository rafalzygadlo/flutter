import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/pages/menu.dart';

class OtpPage extends StatefulWidget {
  @override
  OtpPageState createState() => OtpPageState();
}

class OtpPageState extends State<OtpPage> {
  void _submitForm(BuildContext context) {
    final route = MaterialPageRoute(builder: (context) => MenuPage());

    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Telephone')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'phone number'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              SizedBox(height: 10),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () => _submitForm(context),
                child: Text('Send Code'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
