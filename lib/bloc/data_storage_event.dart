// part of 'data_storage_bloc.dart';

// @immutable
// sealed class DataStorageEvent {
//   const DataStorageEvent();

//   @override
//   List<Object?> get props => [];
// }
// class Updatehome extends DataStorageEvent{
//     final String? Name;
//   final String? email;
//   final String? phnumber;
//   final String? address;
//   final Home? home;
// Updatehome(this.home, 
//   {
//     this.Name,
//     this.address,
//     this.email,
//     this.phnumber,
//   }
// );

// @override
//   List<Object?> get props => [

//     Name,
//     email,
//     phnumber,
//     address
//   ];


// }

// class Confirmhome extends DataStorageEvent{
//   final Home home;
//   const Confirmhome({required this.home});

//   @override
//   List<Object?> get props => [home];

// }