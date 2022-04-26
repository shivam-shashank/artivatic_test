part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final String searchQuery;
  final DataModel dataModelResult;

  const HomeLoadedState({
    required this.searchQuery,
    required this.dataModelResult,
  });

  @override
  List<Object> get props => [searchQuery, dataModelResult];
}

class HomeErrorState extends HomeState {
  final Object error;

  const HomeErrorState({required this.error});
}
