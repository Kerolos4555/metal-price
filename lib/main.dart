import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/core/cache/shared_prefs_service.dart';
import 'package:metal_price/data/api/api_services.dart';
import 'package:metal_price/data/repo/metals_repo.dart';
import 'package:metal_price/core/helper/bloc_observer.dart';
import 'package:metal_price/core/helper/dio_helper.dart';
import 'package:metal_price/logic/cubit/app_cubit.dart';
import 'package:metal_price/logic/cubit/app_states.dart';
import 'package:metal_price/presentation/screens/home_screen.dart';
import 'package:metal_price/core/themes/dark_theme.dart';
import 'package:metal_price/core/themes/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsService.init();
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
            metalsRepo: MetalsRepo(apiServices: ApiServices(dio: createDio())),
          )..changeAppTheme(isDarkFromCache: SharedPrefsService.getAppTheme()),
      child: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: LightThemeData.lightTheme(),
            darkTheme: DarkThemeData.darkTheme(),
            themeMode:
                AppCubit.get(context).isDarkMode
                    ? ThemeMode.dark
                    : ThemeMode.light,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
