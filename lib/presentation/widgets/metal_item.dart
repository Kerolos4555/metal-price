import 'package:flutter/material.dart';

class MetalItem extends StatelessWidget {
  const MetalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('24K', style: Theme.of(context).textTheme.bodyMedium),
            Text('4378 EGP', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
