import 'package:metal_price/data/model/metal_model.dart';

abstract class AppStates {}

class InitialState extends AppStates {}

class AppModeState extends AppStates {}

class LoadingState extends AppStates {}

class SuccessState extends AppStates {
  final MetalModel metalModel;
  SuccessState({required this.metalModel});
}

class ErrorState extends AppStates {
  final String errorMessage;
  ErrorState({required this.errorMessage});
}
