part of 'home_bloc.dart';


@immutable
sealed class HomeState {}
//abstract class verifyotp{}
abstract class HomeActionState extends HomeState{}
class HomeInitial extends HomeState {}
//class HomeInvalidState extends HomeState {}
class HomeValidState extends HomeState {

}
class HomeErrorState extends HomeState {
  final String errorMessage;

  HomeErrorState(this.errorMessage);

}
class HomeLoadingState extends HomeState{}

