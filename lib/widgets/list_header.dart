import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Type', style: Theme.of(context).textTheme.titleMedium),
          Text('Price', style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
