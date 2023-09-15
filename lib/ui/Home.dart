// import 'package:azodha_internship/ui/opendialog.dart';
// import 'package:azodha_internship/ui/verify.dart';
import 'package:azodha_internship/ui/SuccessScreen.dart';
import 'package:azodha_internship/ui/veriffy.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import'SuccessScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'RoundButton.dart';
// import 'package:_flutterfire_internals/_flutterfire_internals.dart';

import 'bloc/home_bloc.dart';

class Home extends StatefulWidget {
  
  Home(
      {super.key,
      String? Name,
      String? email,
      String? address,
      String? phnumber});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();

  final namecontroller = TextEditingController();

  final Emailcontroller = TextEditingController();

  final phoneNumberController = TextEditingController();

  final Addcontroller = TextEditingController();

   final _formKey =GlobalKey<FormState>();
    //final phoneNumberController=TextEditingController();
  final auth = FirebaseAuth.instance;

 // final databaseRef1 = FirebaseDatabase.instance.ref("ContactDetails");
 final firestore = FirebaseFirestore.instance.collection("ContactDetails");

  //final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size;
    
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        listenWhen: (previous, current) => current is HomeActionState,
        buildWhen: (previous, current) => current is! HomeActionState,
        listener: (context, state) {
          if (state is HomeContactFormSubmittedEvent) {
            Container(
                height: height * 0.04,
                width: height * 0.4,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: NetworkImage(
                      "https://cdn3.iconfinder.com/data/icons/flat-actions-icons-9/792/Tick_Mark_Dark-256.png",
                    ),)));
          }

          
        },
        
        builder: (context, state) {
          return Scaffold(
             appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 20, 163, 146),
              
title: Center(child: Text("Contact Form",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
        
      ),
            // appBar: AppBar(
            //   backgroundColor: Colors.white,
            //   // The title text which will be shown on the action bar
            //   title: Text("Contact Form",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            // ),
            //backgroundColor: Colors.transparent,
            body: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    child: Center(
                      
                      child: Image.asset('assets/greenn.gif',)),
                  ),
                ),
                
               Container(
                color: Colors.transparent,
                height: double.infinity,
                
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Form(
                      key: _formKey,
                      child: Column(children: [
                        
                        
                        SizedBox(
                          height: height * 0.07,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            BlocProvider.of<HomeBloc>(context).add(
                                HomeContactFormTextChangedEvent(
                                    Emailcontroller.text,
                                    phoneNumberController.text,
                                    namecontroller.text,
                                    Addcontroller.text)
                                    );
                          },
                          style: const TextStyle(color:Color.fromARGB(255, 0, 105, 92)),
                          controller: namecontroller,
                          cursorColor: Colors.white,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              focusColor: const Color.fromARGB(255, 92, 232, 99),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color.fromARGB(255, 0, 105, 92)),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: ("Enter Your Name"),
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 105, 92))),
                                  validator: (value){
                            if (value!.isEmpty){
                              return 'Enter your Name';
            
                            }
                            return null ;
                          }
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            BlocProvider.of<HomeBloc>(context).add(
                                HomeContactFormTextChangedEvent(
                                    Emailcontroller.text,
                                    phoneNumberController.text,
                                    namecontroller.text,
                                    Addcontroller.text));
                          },
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 105, 92)),
                          controller: Emailcontroller,
                          cursorColor: Colors.white,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              focusColor: const Color.fromARGB(255, 92, 232, 99),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color.fromARGB(255, 0, 105, 92)),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: ("Enter Your Email ID"),
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 105, 92))),
                                  validator: (value){
                            if (value!.isEmpty|| !value.contains(RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'))){
                              return 'Enter valid email Id ';
            
                            }
                            return null ;
                          }
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            BlocProvider.of<HomeBloc>(context).add(
                                HomeContactFormTextChangedEvent(
                                    Emailcontroller.text,
                                    phoneNumberController.text,
                                    namecontroller.text,
                                    Addcontroller.text));
                          },
                          style: const TextStyle(color: Color.fromARGB(255, 0, 105, 92)),
                          controller: phoneNumberController,
                          cursorColor: Colors.white,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              focusColor: const Color.fromARGB(255, 92, 232, 99),
                              suffixIcon: TextButton(child: Text("Send OTP",style: TextStyle(fontWeight:FontWeight.bold ,color:Color.fromARGB(255, 0, 105, 92)),),onPressed: (){
                                setState(() {
                //loading = true;
              });
              auth.verifyPhoneNumber(
                phoneNumber: phoneNumberController.text,
                  verificationCompleted: (_){
                  setState(() {
                    //loading=false;
                  });


                  },
                  verificationFailed: (e){
                  setState(() {
                    //loading=false;
                  });
                  //utils().toastMessage(e.toString());
                  },
                  codeSent: (String verificationId , int? token){
                   // Navigator.pop(context);

                  Navigator.push((context), MaterialPageRoute(builder: (context)=>veriffy(verificationId: verificationId,)));
                  setState(() {
                    //loading=false;
                  });
                  },
                  codeAutoRetrievalTimeout: (e){
                    //utils().toastMessage(e.toString());
                    setState(() {
                      //loading=false;
                    });
                  });
            
                        //         Navigator.push(context,
                        // MaterialPageRoute(builder: (context)=> veriffy()));


                              }),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color.fromARGB(255, 0, 105, 92)),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: ("Enter phone no(+91)"),
                              
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 105, 92))),
                                  validator: (value){
                            if (value!.isEmpty||value.length!=13|| value.contains(RegExp(r'^(?=.*[a-zA-Z!@#$%^&*])[\w!@#$%^&*]{1,9}$'))){
                              return 'Enter valid Phone number';
            
                            }
                            return null ;
                          }
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            BlocProvider.of<HomeBloc>(context).add(
                                HomeContactFormTextChangedEvent(
                                    Emailcontroller.text,
                                    phoneNumberController.text,
                                    namecontroller.text,
                                    Addcontroller.text));
                          },
                          style: const TextStyle(color:Color.fromARGB(255, 0, 105, 92)),
                          controller: Addcontroller,
                          cursorColor: Colors.white,
                          keyboardType: TextInputType.text,
                          // maxLines: 3,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              focusColor: const Color.fromARGB(255, 92, 232, 99),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color.fromARGB(255, 0, 105, 92)),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: ("Enter Your Address"),
                              hintStyle: const TextStyle(
                                  fontSize: 14,
                                  color:Color.fromARGB(255, 0, 105, 92))),
                                  validator: (value){
                            if (value!.isEmpty){
                              return 'Enter Address';
            
                            }
                            return null ;
                          }
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            if (state is HomeErrorState) {
                    
                              return Container();
                            } else {
                              return Container();
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            if (state is HomeLoadingState) {
                              return Center(child: CircularProgressIndicator(color: Colors.black,));
                            }
                            return TextButton(
                              
                                onPressed: () {
                                  
                                  
                                  if (_formKey.currentState!.validate()){
                  
                  
                                  String Id= DateTime.now().millisecond.toString();
                                  firestore.doc(Id).set({
                                    'name': namecontroller.text.toString(),
                                  'address': Addcontroller.text.toString(),
                                  'phone number': phoneNumberController.text.toString(),
                                  'email': Emailcontroller.text.toString(),
                                  }
                                  );  
                      //             Container(
                      //               height: height*0.05,
                      //               width: height*0.05,
                      //               child: Image(image: NetworkImage(
                      //   "https://cdn3.iconfinder.com/data/icons/flat-actions-icons-9/792/Tick_Mark_Dark-256.png",
                      // ),)
                      //             );
                                  
                                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SuccessScreen();
                      })); 
                      }                           
                                  if (state is HomeValidState) {
                                    
                                    
                                    BlocProvider.of<HomeBloc>(context).add(
                                        HomeContactFormSubmittedEvent(
                                            Emailcontroller.text,
                                            phoneNumberController.text,
                                            namecontroller.text,
                                            Addcontroller.text));
            
                                            
                                  }
                                   homeBloc.add(HomeContactFormSubmittedEvent(namecontroller.text,Emailcontroller.text,phoneNumberController.text,Addcontroller.text));
                                },
            
                                //if at all realtime database is required to be used, the following code 
                                //snippet can be uncommented and also its reference is to be uncommented
                    
                                // databaseRef1
                                //     .child(DateTime.now()
                                //         .millisecondsSinceEpoch
                                //         .toString())
                                //     .set({
                                //   'id':
                                //       DateTime.now().millisecondsSinceEpoch.toString(),
                                //   'name': namecontroller.text.toString(),
                                //   'address': Addcontroller.text.toString(),
                                //   'phone number': phoneNumbercontroller.text.toString(),
                                //   'email': Emailcontroller.text.toString(),
                                //   //'Contact info ': PhController.text.toString()
                                // });
                                
                    
                                style: TextButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 20, 163, 146),
                                ),
                                child: SizedBox(
                                  height: height * 0.03,
                                  width: width * 0.5,
                                  child: const Text("Submit",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color:Color.fromARGB(255, 252, 253, 253),
                                      )),
                                ));
                          },
                        )
                      ]),
                    ),
                  ),
                ),
              ),
           ] ),
          );
        },
      ),
    );
  }
}
