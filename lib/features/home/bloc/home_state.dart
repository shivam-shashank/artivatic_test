part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final DataModel dataModelResult;

  const HomeLoadedState({required this.dataModelResult});
}

class HomeErrorState extends HomeState {
  final Object error;

  const HomeErrorState({required this.error});
}
