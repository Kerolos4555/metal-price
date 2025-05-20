import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/core/cache/shared_prefs_service.dart';
import 'package:metal_price/data/model/metal_model.dart';
import 'package:metal_price/data/repo/metals_repo.dart';
import 'package:metal_price/logic/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  final MetalsRepo metalsRepo;
  bool isDarkMode = false;
  String selectedMetal = SharedPrefsService.getCurrentMetal();
  String selectedCurrency = SharedPrefsService.getCurrentCurrency();
  MetalModel? metalModel;

  AppCubit({required this.metalsRepo}) : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  void changeAppTheme({bool? isDarkFromCache}) {
    if (isDarkFromCache != null) {
      isDarkMode = isDarkFromCache;
      emit(AppModeState());
    } else {
      isDarkMode = !isDarkMode;
    }
    SharedPrefsService.saveAppTheme(isDark: isDarkMode).then((value) {
      emit(AppModeState());
    });
  }

  IconData get currentThemeIcon =>
      isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined;

  Future<void> getMetal({required String symbol, required String code}) async {
    emit(LoadingState());
    var result = await metalsRepo.getMetalDetails(symbol: symbol, code: code);
    result.fold((error) => emit(ErrorState(errorMessage: error.errorMessage)), (
      metal,
    ) {
      metalModel = metal;
      emit(SuccessState());
    });
  }

  void updateMetal({required String metal}) {
    selectedMetal = metal;
    SharedPrefsService.saveCurrentMetal(currentMetal: metal);
    getMetal(symbol: selectedMetal, code: selectedCurrency);
  }

  void updateCurrency({required String currency}) {
    selectedCurrency = currency;
    SharedPrefsService.saveCurrentCurrency(currentCurrency: currency);
    getMetal(symbol: selectedMetal, code: selectedCurrency);
  }
}
