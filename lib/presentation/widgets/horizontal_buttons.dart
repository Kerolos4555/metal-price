import 'package:flutter/material.dart';
import 'package:metal_price/presentation/widgets/text_icon_button.dart';

class HorizontalButtons extends StatelessWidget {
  const HorizontalButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextIconButton(onPress: () {}, title: 'Egypt'),
        TextIconButton(onPress: () {}, title: 'Gold'),
      ],
    );
  }
}
