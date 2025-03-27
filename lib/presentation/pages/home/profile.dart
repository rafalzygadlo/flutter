
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
      
void _submitForm(BuildContext context) {
    
      // Jeśli formularz poprawny, pokaż komunikat
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Dane zapisane poprawnie!')),
      );
    
  }

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
          child: Form(
            child:Column(
          /*key: _formKey,*/          
            children: [
              CircleAvatar(
                radius: 40,
                /*backgroundImage: AssetImage('assets/avatars/1.jpg'),*/
                child: const Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,    
                    fontSize: 30
                  ),
                  'AH'),
              ),
              SizedBox( height: 20),
              TextFormField(
                /*controller: _ibanController,*/
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Podaj numer IBAN';
                  }
                  if (!RegExp(r'^[A-Z]{2}\d{18,}$').hasMatch(value)) {
                    return 'Niepoprawny IBAN';
                  }
                  return null;
                },
              ),
              SizedBox( height: 20),
              TextFormField(
                /*controller: _bankNameController,*/
                decoration: InputDecoration(
                  hintText: 'Wpisz swój email', // Wskazówka w środku pola
                  border: OutlineInputBorder(),
                  labelText: 'Phone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Podaj nazwę banku';
                  }
                  return null;
                },
              ),
              SizedBox( height: 20),
              ElevatedButton(
                onPressed: () => _submitForm(context),
                child: Text('Edit profile'),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
      
 
  }


 
 





