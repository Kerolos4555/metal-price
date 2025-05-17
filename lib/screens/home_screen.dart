import 'package:flutter/material.dart';
import 'package:metal_price/widgets/horizontal_buttons.dart';
import 'package:metal_price/widgets/last_update.dart';
import 'package:metal_price/widgets/list_header.dart';
import 'package:metal_price/widgets/metal_price_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metals'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          children: [
            HorizontalButtons(),
            SizedBox(height: 8),
            LastUpdate(),
            SizedBox(height: 12),
            ListHeader(),
            SizedBox(height: 8),
            Expanded(child: MetalPriceList()),
          ],
        ),
      ),
    );
  }
}
