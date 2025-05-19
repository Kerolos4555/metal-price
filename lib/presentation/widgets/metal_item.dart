import 'package:flutter/material.dart';

class MetalItem extends StatelessWidget {
  final String karat;
  final double price;
  const MetalItem({super.key, required this.karat, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(karat, style: Theme.of(context).textTheme.bodyMedium),
            Text(
              price.toString(),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
