part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeContactFormTextChangedEvent extends HomeEvent{
  final String name;
  final String email;
  final String phnumber;
  final String address;

  HomeContactFormTextChangedEvent(this.name, this.email, this.phnumber, this.address);
  
  
}



class HomeContactFormSubmittedEvent extends HomeEvent{

  final String name;
  final String email;
  final String phnumber;
  final String address;

  HomeContactFormSubmittedEvent(this.name, this.email, this.phnumber, this.address);


  
}


 

