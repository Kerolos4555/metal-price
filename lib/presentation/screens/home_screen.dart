import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/logic/cubit/app_cubit.dart';
import 'package:metal_price/logic/cubit/app_states.dart';
import 'package:metal_price/presentation/widgets/horizontal_buttons.dart';
import 'package:metal_price/presentation/widgets/last_update.dart';
import 'package:metal_price/presentation/widgets/list_header.dart';
import 'package:metal_price/presentation/widgets/metal_price_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Metals'),
            actions: [
              IconButton(
                onPressed: () {
                  AppCubit.get(context).changeAppTheme();
                },
                icon: Icon(AppCubit.get(context).currentThemeIcon),
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
      },
    );
  }
}
