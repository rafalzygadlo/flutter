
import 'package:flutter/material.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfileEditPage> {
      
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
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                  ),
               
              ),
              SizedBox( height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name'),
                
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


 
 





