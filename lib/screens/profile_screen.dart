import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Mock user data
  User currentUser =
      User(username: 'Akash Keote', email: 'keoteakash@gmail.com');

  final _formKey = GlobalKey<FormState>();
  late String username;
  late String email;

  bool isEditing = false;

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Update user data
      setState(() {
        currentUser = User(username: username, email: email);
        isEditing = false;
      });
      // Here, you would typically send the updated data to your backend or authentication service
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile updated successfully')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    username = currentUser.username;
    email = currentUser.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(isEditing ? Icons.cancel : Icons.edit),
            onPressed: () {
              setState(() {
                if (isEditing) {
                  // Reset fields
                  username = currentUser.username;
                  email = currentUser.email;
                }
                isEditing = !isEditing;
              });
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Profile Picture
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/profile_placeholder.png'),
                    ),
                    const SizedBox(height: 20),
                    // Username Field
                    TextFormField(
                      initialValue: username,
                      enabled: isEditing,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? 'Enter your username' : null,
                      onSaved: (value) => username = value!,
                    ),
                    const SizedBox(height: 20),
                    // Email Field
                    TextFormField(
                      initialValue: email,
                      enabled: isEditing,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) =>
                          value!.isEmpty ? 'Enter your email' : null,
                      onSaved: (value) => email = value!,
                    ),
                    const SizedBox(height: 30),
                    if (isEditing)
                      ElevatedButton(
                        onPressed: _saveProfile,
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text('Save'),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
