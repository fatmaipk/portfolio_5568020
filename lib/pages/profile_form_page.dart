import 'package:flutter/material.dart';

class ProfileFormPage extends StatelessWidget {
  const ProfileFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil bearbeiten')),
      body: const Center(child: Text('Hier kommt das Formular hin')),
    );
  }
}
