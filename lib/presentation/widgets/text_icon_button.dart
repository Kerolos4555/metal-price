import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  final Function()? onPress;
  final String title;
  const TextIconButton({super.key, required this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.grey[300]),
      ),
      label: Text(title, style: const TextStyle(color: Colors.black)),
      icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
      iconAlignment: IconAlignment.end,
    );
  }
}
