import 'package:flutter/material.dart';
import 'RoundButton.dart';

import 'Home.dart';
import 'SuccessScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class veriffy extends StatefulWidget {
  final  String verificationId;
  const veriffy({Key? key, required this.verificationId}) : super(key: key);

  @override
  State<veriffy> createState() => _veriffyState();
}

class _veriffyState extends State<veriffy> {
   final verifyCodecontroller = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 0, 105, 92),
        title: Text("Verify"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            TextFormField(
              controller: verifyCodecontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "6 digit code"
              ),
            ),
            SizedBox(height: 30,),
            RoundButton(title: 'Verify',  onTap: () async {
              setState(() {
               // loading = true;
              });
              final credential = PhoneAuthProvider.credential(
                  verificationId: widget.verificationId,
                  smsCode: verifyCodecontroller.text.toString()
              );

              try {
                await auth.signInWithCredential(credential);


                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Home()));
                Navigator.pop(context);
              }

              catch (e) {
                setState(() {
                 // loading = false;
                });
                //utils().toastMessage(e.toString());
              }
            })
          ],

        ),
      ),


    );
  }
}

  