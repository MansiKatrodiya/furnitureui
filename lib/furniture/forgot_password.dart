import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/verification.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(
            "Forgot Password?",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Color(0XFF3D3c3c)),
          ),
          SizedBox(height: 5),
          Text(
            "Please enter your email address to\n"
            "       recieve a verification code.",
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
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.email,
                        color: Color(0XFF909090),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Color(0XFF909090))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:50),
          Padding(
            padding: const EdgeInsets.only(left:20,right: 10),
            child: InkWell(
              onTap: () {
                Get.to(Verification());
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  "Send",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
