import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  const CustomErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'There was an error: $errorMessage',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
