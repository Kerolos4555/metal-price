import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/logic/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  AppCubit get(context) => BlocProvider.of(context);
}
