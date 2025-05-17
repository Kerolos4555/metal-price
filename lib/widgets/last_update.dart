import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LastUpdate extends StatelessWidget {
  const LastUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateFormat('EEEE, MMM d, yyyy').format(DateTime.now()),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
      ],
    );
  }
}
