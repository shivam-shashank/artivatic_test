part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class LoadHomeDataEvent extends HomeEvent {}

// class SearchHomeDataEvent extends HomeEvent {
//   final DataModel dataModelResult;
//
//   const SearchHomeDataEvent({required this.dataModelResult});
// }
