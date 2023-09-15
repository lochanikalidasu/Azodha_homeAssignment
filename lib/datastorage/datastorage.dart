// import 'package:azodha_internship/datastorage/base_datastorage.dart';
// import 'package:azodha_internship/ui/Home.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'base_datastorage.dart';
// import 'package:azodha_internship/models/datastorage_model.dart';

// //import 'package:cloud_firestore/cloud_firestore.dart';

// class DataStorage extends BaseDataStorage{
//   final FirebaseFirestore _firebaseFirestore;

//   DataStorage({FirebaseFirestore? firebaseFirestore}):_firebaseFirestore= firebaseFirestore??FirebaseFirestore.instance;

//   Future<void> addDataStorage(Home home){
//     return _firebaseFirestore.collection('Home').add(home.toDocument());
//   }
// }