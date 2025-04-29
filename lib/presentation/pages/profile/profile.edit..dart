
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/models/profile.dart';

class ProfileEditPage extends StatefulWidget {
 
 final Profile profile;

  // Konstruktor przyjmujący profil
  ProfileEditPage({required this.profile});
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfileEditPage> {

  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _weightController;


  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController(text: widget.profile.firstName);
    _lastNameController = TextEditingController(text: widget.profile.lastName);
    _emailController = TextEditingController(text: widget.profile.email);
    _weightController = TextEditingController(text: widget.profile.weight.toString());
  }

 @override
  void dispose() {
    // Zwolnienie kontrolerów po zakończeniu pracy
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _weightController.dispose(); // Zwolnienie kontrolera salary
    super.dispose();
  }
  void saveForm(BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Dane zapisane poprawnie!')),
      );
  }

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
    appBar: AppBar(
      title: Text('Profile'),
      ),
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
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                  ),
               
              ),
              SizedBox( height: 20),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name'),
                
              ),
               SizedBox( height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email'),
                
              ),
              SizedBox( height: 20),
              TextFormField(
                controller: _weightController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Weight'),
                
              ),
              SizedBox( height: 20),
              ElevatedButton(
                onPressed: () => saveForm(context),
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
      
 
  }


 
 





