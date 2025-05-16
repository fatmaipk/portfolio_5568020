import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider-Seite')),
      body: const Center(child: Text('Hier kommt der Slider hin')),
    );
  }
}
