// import 'dart:js';

// import 'package:azodha_internship/ui/Home.dart';
// import 'package:flutter/material.dart';
// import 'package:email_auth/email_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:pinput/pinput.dart';

// import 'package:flutter/material.dart';

// class verify extends StatefulWidget {
//   //final  String verificationId;
//   const verify({Key? key, }): super (key: key);

//   @override
//   State<verify> createState() => _verifyState();
// }

// class _verifyState extends State<verify> {
//     bool loading = false;
//   String? otpCode;
//   final verifyCodecontroller = TextEditingController();
//   final auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     Size size;
//     double height, width;
//     size = MediaQuery.of(context).size;
//     height = size.height;
//     width = size.width;
//     return Container(
//       decoration: BoxDecoration(gradient:LinearGradient(colors:[ const Color.fromARGB(255, 142, 36, 170),Color.fromARGB(255, 198, 55, 223),Color.fromARGB(255, 232, 131, 250),const Color.fromARGB(255, 142, 36, 170),Color.fromARGB(255, 198, 55, 223)])),
//       child: Scaffold(
//         //backgroundColor: Colors.purple[600],
//         appBar: AppBar(
//           title: Text("Verification"),
//           backgroundColor:Colors.white
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             children: [
//               SizedBox(height: height*0.02,),
//               //Text("OTP has been sent",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
    
//               SizedBox(height: height*0.05,),
//               Text("Enter the verification code",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//               SizedBox(height: height*0.1,),
               
//                 Center(
//                   child: Pinput(
                  
//                   keyboardType: TextInputType.number,
                  
//                       length: 6,
//                       showCursor: true,
                      
//                       onChanged:(Value){
//                         otpCode=Value;
//                       },
//                       defaultPinTheme: PinTheme(height: height*0.06,width: height*0.06,
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white)
                      
//                       ),
//                       textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                      
                      
//                       ),
//                       onSubmitted: (Value){
//                         setState(() {
//                           loading=true;
//                           otpCode=Value;
//                         });
//                       },
                
//                   ),
//                 ),
//               //),
//               SizedBox(height: 30,),
//               //  Container(
//               //    decoration: BoxDecoration(
//               //          borderRadius: BorderRadius.circular(10),
//               //          color: Colors.black26,
//               //        ),
//               //      height: height * 0.05,
//               //        width: width * 0.6,
//               //    child: ElevatedButton(child:loading?CircularProgressIndicator(color: Colors.white,):Text("Register",
              
//               //    ),
//               //    style:ElevatedButton.styleFrom(
//               //      backgroundColor: Colors.white,
//               //      textStyle: TextStyle(fontSize: 25,)
                
              
//               //    ),
                
              
//               //      onPressed: () async {
                    
//               //      setState(() {
                  
//               //        loading = true;
//               //      });
              
                  
//               //     final credential = PhoneAuthProvider.credential(
//               //          verificationId: widget.verificationId,
                    
//               //        smsCode: otpCode.toString()
//               //     );
              
//               //      try {
//               //        await auth.signInWithCredential(credential);
                   
//               //  String token_=await "";
//               //         Navigator.push(
//               //              context,
//               //              MaterialPageRoute(
//               //                builder: ((context) {
//               //                  return Home();
                                
                              
//               //                }),
//               //              ),
//               //            );
//               //      }
              
//               //      catch (e) {
//               //        setState(() {
//               //          loading = false;
//               //        });
                   
//               //      }
//               //    }
//               //    ),
//               //  )
              
//              ],
    
//            ),
//          ),
        
    
    
//        ),
//      );
//   }

//   //verify otp
// //   void verifyOtp(BuildContext context, String userOtp){
// //     final credential = PhoneAuthProvider.credential(
// //                   verificationId: widget.verificationId,
                 
// //                  smsCode: userOtp
// //               );

// //               try {
// //                  auth.signInWithCredential(credential);
               
// // String token_= "";
// //                  Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                         builder: ((context) {
// //                           return Home();
// //                         }),
// //                       ),
// //                     );
// //               }

// //               catch (e) {
// //                 setState(() {
// //                   loading = false;
// //                 });
               
// //               }

// //   }
// }