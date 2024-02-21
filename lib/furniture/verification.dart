import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'new_password.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(scrollDirection:Axis.vertical ,
         child: Column(
           children: [
             SizedBox(height: 100),
             Text(
               "Verification",
               style: TextStyle(
                   fontWeight: FontWeight.w700,
                   fontSize: 32,
                   color: Color(0XFF3D3c3c)),
             ),
             SizedBox(height: 5),
             Text(
               "please enter the 4 digit code sent to\n"
                 "                         email id.",
               style: TextStyle(color: Color(0XFFB5B5B5), fontSize: 14),
             ),
             SizedBox(height: 20),
             Padding(
               padding: const EdgeInsets.only(top: 15, left: 20, right: 10),
               child: Container(
                 height: Get.height / 15,
                 width: Get.width / 1.1,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5), color: Colors.white),
                 child: Row(
                   children: [

                     SizedBox(
                       width: 5,
                     ),
                     Expanded(
                       child: TextFormField(
                         decoration: InputDecoration(
                             border:
                             OutlineInputBorder(borderSide: BorderSide.none),
                             hintText: "Enter your Email",
                             hintStyle: TextStyle(color: Color(0XFF909090))),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             SizedBox(height:20),
             Text("Enter code",style: TextStyle(color: Color(0XFF555555),fontSize: 14),),
         SizedBox(height:40),
             OTPTextField(
                 controller: otpController,
                 length: 4,
                 width: MediaQuery.of(context).size.width/1.5,
                 textFieldAlignment: MainAxisAlignment.spaceAround,
                 fieldWidth:45,
                 fieldStyle: FieldStyle.box,
                 outlineBorderRadius:10,
                 style: TextStyle(fontSize: 17),
                 onChanged: (pin) {
                   print("Changed: " + pin);
                 },
                 onCompleted: (pin) {
                   print("Completed: " + pin);
                 }),
             SizedBox(height:50),
             InkWell(
               onTap: () {
                 Get.to(Password());
               },
               child: Container(
                 height: MediaQuery.of(context).size.height / 17,
                 width: MediaQuery.of(context).size.width / 1.1,
                 decoration: BoxDecoration(
                     color: Colors.black, borderRadius: BorderRadius.circular(5)),
                 child: Center(
                     child: Text(
                       "Verify",
                       style: TextStyle(color: Colors.white, fontSize: 20),
                     )),
               ),
             ),
             SizedBox(height:100),
             Text("Resend Code",style: TextStyle(color: Color(0XFF555555),fontSize: 14),),
           ],
         ),
       ),
    );
  }
}
