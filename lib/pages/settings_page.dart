import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, // hellblauer Hintergrund
      appBar: AppBar(
        title: const Text('Einstellungen'),
        backgroundColor: Colors.lightBlueAccent, // AppBar auch blau
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'Hier kommen die Einstellungen hin',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
