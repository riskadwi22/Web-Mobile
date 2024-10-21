import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String role;
  final String description;
  final String school;
  final String password;

  const ProfilePage({
    Key? key,
    required this.username,
    required this.role,
    required this.description,
    required this.school,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf4f4f4), // Soft light grey background
      appBar: AppBar(
        backgroundColor: const Color(0xFF00796B), // Teal dark
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // User Icon inside a circular Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100), // Circular shape
              ),
              elevation: 4, // Elevation for shadow effect
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100), // Circular clipping
                child: Container(
                  width: 100, // Width of the card
                  height: 100, // Height of the card
                  color: const Color(0xFF80CBC4), // Light teal background
                  child: const Icon(
                    Icons.person, // User icon
                    size: 60, // Icon size
                    color: Colors.white, // Icon color
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),

            Text(
              username,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF424242), // Dark grey text
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),

            // Description (About) Card with User Icon
            _buildCard(Icons.person_outline, "Nama", description),
            const SizedBox(height: 10.0),

            // Role Card with Two User Icon
            _buildCard(Icons.group, "Role", role),
            const SizedBox(height: 10.0),

            // School Card with Building Icon
            _buildCard(Icons.apartment, "Sekolah", school),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(IconData icon, String title, String value) {
    return Card(
      color: Colors.white, // Keep card background white
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 30, color: const Color(0xFF00796B)), // Teal dark icon
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF424242), // Dark grey text for title
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF424242), // Dark grey text for value
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
