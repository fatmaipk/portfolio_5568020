import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, // <-- HIER eingefügt
      appBar: AppBar(
        title: const Text('Willkommen im Portfolio von Fatma'),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Slider-Seite'),
            onTap: () => Navigator.pushNamed(context, '/slider'),
          ),
          ListTile(
            title: const Text('Profil bearbeiten'),
            onTap: () => Navigator.pushNamed(context, '/profile'),
          ),
          ListTile(
            title: const Text('Einstellungen'),
            onTap: () => Navigator.pushNamed(context, '/settings'),
          ),
          ListTile(
            title: const Text('Zusammenfassung'),
            onTap: () => Navigator.pushNamed(context, '/summary'),
          ),
        ],
      ),
    );
  }
}
