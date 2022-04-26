import 'package:artivatic_test/core/models/data_model/data_model.dart';
import 'package:artivatic_test/core/repository/home_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(HomeInitialState()) {
    on<HomeEvent>(
      (event, emit) async {
        if (event is LoadHomeDataEvent) {
          emit(HomeLoadingState());
          try {
            DataModel _dataModelResult = await homeRepository.getHomeData();
            emit(
              HomeLoadedState(dataModelResult: _dataModelResult),
            );
          } catch (e) {
            emit(
              HomeErrorState(error: e),
            );
          }
        }
      },
    );
  }
}
