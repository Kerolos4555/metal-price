import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:metal_price/logic/cubit/app_cubit.dart';

class LastUpdate extends StatelessWidget {
  const LastUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateFormat('EEEE, MMM d, yyyy - hh:mm a').format(DateTime.now()),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        IconButton(
          onPressed: () {
            AppCubit.get(context).getMetal(
              symbol: AppCubit.get(context).selectedMetal,
              code: AppCubit.get(context).selectedCurrency,
            );
          },
          icon: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}
