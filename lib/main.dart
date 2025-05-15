import 'package:flutter/material.dart';
import 'package:metal_price/screens/home_screen.dart';

void main() {
  runApp(const MetalPrice());
}

class MetalPrice extends StatelessWidget {
  const MetalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
