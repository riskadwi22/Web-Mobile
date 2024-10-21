import 'package:flutter/material.dart';
import 'profile.dart'; // Import the ProfilePage

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _schoolController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isButtonEnabled = false;

  void _checkInput() {
    setState(() {
      isButtonEnabled = _usernameController.text.isNotEmpty &&
          _roleController.text.isNotEmpty &&
          _descriptionController.text.isNotEmpty &&
          _schoolController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(_checkInput);
    _roleController.addListener(_checkInput);
    _descriptionController.addListener(_checkInput);
    _schoolController.addListener(_checkInput);
    _passwordController.addListener(_checkInput);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Image / Icon User di dalam lingkaran
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.person_outline,
                color: Color(0xFF00796B), // Teal dark
                size: 60,
              ),
            ),
            const SizedBox(height: 20),

            // Username TextField
            TextField(
              controller: _usernameController,
              style: const TextStyle(color: Color(0xFF424242)), // Dark grey
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Color(0xFF00796B)),
                labelText: 'Username',
                labelStyle:
                    const TextStyle(color: Color(0xFF80CBC4)), // Light teal
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFF00796B)),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Role TextField
            TextField(
              controller: _roleController,
              style: const TextStyle(color: Color(0xFF424242)),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.group,
                    color: Color(
                        0xFF00796B)), // Ganti Icons.work menjadi Icons.group
                labelText: 'Role',
                labelStyle: const TextStyle(color: Color(0xFF80CBC4)),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFF00796B)),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Description TextField
            TextField(
              controller: _descriptionController,
              style: const TextStyle(color: Color(0xFF424242)),
              decoration: InputDecoration(
                prefixIcon:
                    const Icon(Icons.description, color: Color(0xFF00796B)),
                labelText: 'Deskripsi',
                labelStyle: const TextStyle(color: Color(0xFF80CBC4)),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFF00796B)),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // School TextField
            TextField(
              controller: _schoolController,
              style: const TextStyle(color: Color(0xFF424242)),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.apartment,
                    color: Color(
                        0xFF00796B)), // Ganti Icons.school menjadi Icons.apartment
                labelText: 'Sekolah',
                labelStyle: const TextStyle(color: Color(0xFF80CBC4)),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFF00796B)),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password TextField
            TextField(
              controller: _passwordController,
              obscureText: true,
              style: const TextStyle(color: Color(0xFF424242)),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock, color: Color(0xFF00796B)),
                labelText: 'Password',
                labelStyle: const TextStyle(color: Color(0xFF80CBC4)),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFF00796B)),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Tombol Login
            ElevatedButton(
              onPressed: isButtonEnabled
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(
                            username: _usernameController.text,
                            role: _roleController.text,
                            description: _descriptionController.text,
                            school: _schoolController.text,
                            password: _passwordController.text,
                          ),
                        ),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: isButtonEnabled
                    ? const Color(0xFF00796B)
                    : const Color(0xFFBDBDBD), // Disabled button grey
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
