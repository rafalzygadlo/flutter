import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/models/register.dart';
import 'package:flutter_application_2/presentation/pages/menu.dart';

class RegisterPage extends StatefulWidget {
  
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  
  @override
  void initState() {
    super.initState();
    
    //_emailController.addListener(() => setState(() {}));
    //_passwordController.addListener(() => setState(() {}));
    
  }
  
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
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
              TextFormField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'password',
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                        }, 
                        icon: _obscurePassword
                          ? const Icon(Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined))
                          ),
                          validator: (String? value) { return null;},
                  ),
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
