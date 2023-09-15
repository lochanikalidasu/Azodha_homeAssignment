
// import 'dart:js_util';

// import 'package:azodha_internship/ui/Home.dart';
// import 'package:azodha_internship/ui/bloc/home_bloc.dart';

// class DataStorage extends Home{
//   final String? Name;
//   final String? email;
//   final String? phnumber;
//   final String? address;
 
//   DataStorage({

//   required this.Name,
//   required this.email,
//   required this.phnumber,
//   required this.address,

//  });
//   @override
//   List<Object?> get props => [

//     Name,
//     email,
//     phnumber,
//     address
//   ];

//   Map<String, Object> toDocument(){
//     Map customerAddress =Map();
//     customerAddress['Address']= address;

//     return{
//       'customerAddress': customerAddress,
//       'customerName': Name!,
//       'customerEmail': email!,
//       'customerPhNumber': phnumber!,
//     };
//   }
// }