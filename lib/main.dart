import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/slider_page.dart';
import 'pages/profile_form_page.dart';
import 'pages/settings_page.dart';
import 'pages/summary_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio von Fatma',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/slider': (_) => const SliderPage(),
        '/profile': (_) => const ProfileFormPage(),
        '/settings': (_) => const SettingsPage(),
        '/summary': (_) => const SummaryPage(),
      },
    );
  }
}
