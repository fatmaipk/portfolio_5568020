import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider-Wolke'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🎈 Wolke für die Zahl
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.6),
                    blurRadius: 30,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'Wähle eine Zahl:',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _value.toInt().toString(),
                    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // 🌫 Wolken-Slider
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.white54,
                thumbColor: Colors.white,
                overlayColor: Colors.white.withOpacity(0.3),
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 14),
              ),
              child: Slider(
                min: 0,
                max: 100,
                divisions: 100,
                value: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
