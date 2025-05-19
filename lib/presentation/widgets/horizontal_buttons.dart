import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/logic/cubit/app_cubit.dart';
import 'package:metal_price/logic/cubit/app_states.dart';
import 'package:metal_price/presentation/widgets/text_icon_button.dart';

class HorizontalButtons extends StatelessWidget {
  const HorizontalButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextIconButton(
              onPress: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children:
                          ['XAU', 'XAG'].map((metal) {
                            return ListTile(
                              title: Text(metal),
                              onTap: () {
                                AppCubit.get(context).updateMetal(metal: metal);
                                Navigator.pop(context);
                              },
                            );
                          }).toList(),
                    );
                  },
                );
              },
              title: AppCubit.get(context).selectedMetal,
            ),
            TextIconButton(
              onPress: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children:
                          ['USD', 'EGP', 'EUR'].map((currency) {
                            return ListTile(
                              title: Text(currency),
                                onTap: () {
                                AppCubit.get(
                                  context,
                                ).updateCurrency(currency: currency);
                                Navigator.pop(context);
                              },
                            );
                          }).toList(),
                    );
                  },
                );
              },
              title: AppCubit.get(context).selectedCurrency,
            ),
          ],
        );
      },
    );
  }
}
