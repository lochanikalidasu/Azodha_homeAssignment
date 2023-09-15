import 'dart:async';
import 'dart:core';



// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';


part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeContactFormSubmittedEvent>((event,emit)=>{
      print("submitted"),
      emit(HomeLoadingState())


    });
    on<HomeContactFormTextChangedEvent>((event, emit) => {
       if (event.name.isEmpty )
{
        emit(HomeErrorState("Enter your Name"))
      }
      
      else if (!event.email.contains(RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'))){
        emit(HomeErrorState("Enter valid email Id"))
      }
       
       else if (event.phnumber.isEmpty || event.phnumber.contains(RegExp(r'^(?=.*[a-zA-Z!@#$%^&*])[\w!@#$%^&*]{1,9}$'))||event.phnumber.length!=10 || !event.phnumber.contains(RegExp(r'^[6-9]\d{9}$')
)){
        emit(HomeErrorState("Enter valid Phone number"))
      }
       else if (event.address==""){
        emit(HomeErrorState("Enter Address"))
      }
      else{
        emit(HomeValidState())
      }

    });
   

    
  }
 
  FutureOr<void> homeContactFormButtonClickedEvent(HomeContactFormSubmittedEvent event, Emitter<HomeState> emit) {
    
    
      emit(HomeInitial());

    
    
  }
  

}