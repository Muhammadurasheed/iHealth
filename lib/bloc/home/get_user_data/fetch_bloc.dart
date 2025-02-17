import 'package:bloc/bloc.dart';
import 'package:intelli_health/bloc/home/get_user_data/fetch_bloc_event.dart';
import 'package:intelli_health/bloc/home/get_user_data/fetch_bloc_state.dart';
import 'package:intelli_health/service/ApiService.dart';

class FetchUserDataBloc
    extends Bloc<FetchUserDataBlocEvent, FetchUserDataBlocState> {
  final ApiService apiService = ApiService();
  FetchUserDataBloc() : super(FetchingDataInitial()) {
    on<GetUserData>((event, emit) async {
      emit(FetchingDataLoading());

      try {
        final res = await apiService.getUserData();

        emit(FetchingDataSuccess(user: res.user!));
      } catch (err) {
        emit(FetchingDataFailure(errorMessage: err.toString()));
      }
    });
  }
}
