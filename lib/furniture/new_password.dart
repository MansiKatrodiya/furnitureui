import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Log in.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(
            "Create New Password",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Color(0XFF3D3c3c)),
          ),
          SizedBox(height: 5),
          Text(
            "Your New Password must be differnt\n"
              "     form previously used password.",
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
                          hintText: "New password",
                          hintStyle: TextStyle(color: Color(0XFF909090))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:20),
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
                          hintText: "Confirm password",
                          hintStyle: TextStyle(color: Color(0XFF909090))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:100),
          InkWell(
            onTap: () {
              Get.to(Page2());
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                    "save",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
