import 'package:flutter/material.dart';
import 'package:metal_price/widgets/metal_item.dart';

class MetalPriceList extends StatelessWidget {
  const MetalPriceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
      itemBuilder: (context, index) {
        return const MetalItem();
      },
    );
  }
}
