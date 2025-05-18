import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/data/api/api_services.dart';
import 'package:metal_price/data/repo/metals_repo.dart';
import 'package:metal_price/helper/bloc_observer.dart';
import 'package:metal_price/logic/cubit/app_cubit.dart';
import 'package:metal_price/presentation/screens/home_screen.dart';
import 'package:metal_price/themes/dark_theme.dart';
import 'package:metal_price/themes/light_theme.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MetalPrice());
}

class MetalPrice extends StatelessWidget {
  const MetalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => AppCubit(
            metalsRepo: MetalsRepo(apiServices: ApiServices(dio: Dio())),
          ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: LightThemeData.lightTheme(),
        darkTheme: DarkThemeData.darkTheme(),
        themeMode: ThemeMode.light,
        home: const HomeScreen(),
      ),
    );
  }
}
