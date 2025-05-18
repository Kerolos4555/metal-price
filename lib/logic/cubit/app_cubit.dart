import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/data/repo/metals_repo.dart';
import 'package:metal_price/logic/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  final MetalsRepo metalsRepo;
  AppCubit({required this.metalsRepo}) : super(InitialState());

  AppCubit get(context) => BlocProvider.of(context);

  Future<void> getMetal({required String symbol, required String code}) async {
    emit(LoadingState());
    var result = await metalsRepo.getMetalDetails(symbol: symbol, code: code);
    result.fold(
      (error) {
        emit(ErrorState(errorMessage: error.errorMessage));
      },
      (metal) {
        emit(SuccessState(metalModel: metal));
      },
    );
  }
}
