import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/models/profile.dart';
import 'package:flutter_application_2/presentation/pages/profile/profile.edit..dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {

 Profile profile = Profile(firstName: 'rafal', lastName: 'zygadlo', email: 'qotsa@op.pl', weight: 81.2);

  void _editForm(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileEditPage(profile:  profile)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                child: const Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  'AH',
                ),
              ),
              SizedBox(height: 20),
              Text('${profile.email}'),
              SizedBox(height: 20),
              Text('First Name: ${profile.firstName}'),
              Text('Last Name: ${profile.lastName}'),
              Text('Weight: ${profile.weight} kg'),
              SizedBox(height: 20),
              TextButton(
                onPressed: () => _editForm(context),
                child: Text('Edit profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
