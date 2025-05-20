abstract class AppStates {}

class InitialState extends AppStates {}

class AppModeState extends AppStates {}

class ThemeIconState extends AppStates {}

class LoadingState extends AppStates {}

class SuccessState extends AppStates {}

class ErrorState extends AppStates {
  final String errorMessage;
  ErrorState({required this.errorMessage});
}
