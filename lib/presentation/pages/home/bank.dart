
import 'package:flutter/material.dart';

class BankPage extends StatefulWidget {
  @override
  BankPageState createState() => BankPageState();
}

class BankPageState extends State<BankPage> {
      
void _submitForm(BuildContext context) {
    
      // Jeśli formularz poprawny, pokaż komunikat
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Dane zapisane poprawnie!')),
      );    
}

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
      appBar: AppBar(title: Text('Dodaj konto bankowe')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          /*key: _formKey,*/
          child: Column(
            children: [
              TextFormField(
                /*controller: _ibanController,*/
                decoration: InputDecoration(labelText: 'IBAN'),
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
              TextFormField(
                /*controller: _bankNameController,*/
                decoration: InputDecoration(labelText: 'Nazwa banku'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Podaj nazwę banku';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _submitForm(context),
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
      
 
  }


 
 





