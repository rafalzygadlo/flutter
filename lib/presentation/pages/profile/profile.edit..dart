import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/models/profile.dart';

class ProfileEditPage extends StatefulWidget {
  final Profile profile;

  // Konstruktor przyjmujący profil
  const ProfileEditPage({super.key, required this.profile});
  
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

    _firstNameController.addListener(() => setState(() {}));
    _lastNameController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _weightController.dispose(); 
    super.dispose();
  }

  String getInitials() {
    String first = _firstNameController.text.trim();
    String last = _lastNameController.text.trim();
    String initials = '';

    if (first.isNotEmpty) initials += first[0].toUpperCase();
    if (last.isNotEmpty) initials += last[0].toUpperCase();

    return initials;
  }

  void saveForm(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Dane zapisane poprawnie!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            /*key: _formKey,*/
            children: [
              CircleAvatar(
                radius: 40,
                child: Text(
                  getInitials(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),

              SizedBox(height: 20),
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(labelText: 'First Name'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(labelText: 'Last Name'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _weightController,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(labelText: 'Weight'),
              ),
              SizedBox(height: 20),
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
