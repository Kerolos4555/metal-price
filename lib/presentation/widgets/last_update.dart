import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:metal_price/logic/cubit/app_cubit.dart';
import 'package:metal_price/logic/cubit/app_states.dart';

class LastUpdate extends StatelessWidget {
  const LastUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppCubit.get(context).metalModel != null
                ? Text(
                  DateFormat('EEEE, MMM d, yyyy - hh:mm a').format(
                    DateTime.fromMillisecondsSinceEpoch(
                      AppCubit.get(context).metalModel!.timesTamp! * 1000,
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium,
                )
                : Text(
                  DateFormat(
                    'EEEE, MMM d, yyyy - hh:mm a',
                  ).format(DateTime.now()),
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
      },
    );
  }
}
