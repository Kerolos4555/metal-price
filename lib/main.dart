import 'package:flutter/material.dart';
import 'package:metal_price/presentation/screens/home_screen.dart';
import 'package:metal_price/themes/dark_theme.dart';
import 'package:metal_price/themes/light_theme.dart';

void main() {
  runApp(const MetalPrice());
}

class MetalPrice extends StatelessWidget {
  const MetalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightThemeData.lightTheme(),
      darkTheme: DarkThemeData.darkTheme(),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
