// ignore_for_file: depend_on_referenced_packages
import 'package:cehpoint/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cehpoint/Screens/details.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPpage extends StatefulWidget {
  const OTPpage({super.key});

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  final TextEditingController _otpController = TextEditingController();
  
  get auth => null;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var code = "";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: height*0.2,
          ),
          Row(
            children: [
              SizedBox(
                width: width*0.4,
              ),
              Container(
                  height: 141,
                  width: 183,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/otp.png"),
                          fit: BoxFit.cover)),
                ),
            ],
          ),
          SizedBox(
            height: height*0.06,
          ),
          const Text(
            "OTP Authentication",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 21
            ),
          ),
          SizedBox(
            height: height*0.03,
          ),
          const Text(
            "We have sent the code to you Email",
            style: TextStyle(
              fontSize: 16.4,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(115, 115, 115, 1)
            ),
          ),
          SizedBox(
            height: height*0.04,
          ),
          Pinput(
            controller: _otpController,
            onChanged: (value) {
              code = value;
            },
            length: 4,
            showCursor: true,
          ),
          SizedBox(
            height: height*0.04,
          ),
          const Text(
            "Resend OTP",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 18, 60, 215)
            ),
          ),
          SizedBox(
            height: height*0.01,
          ),
          const Text(
            "Didn't recieve OTP?",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(115, 115, 115, 1)
            ),
          ),
          SizedBox(
            height: height*0.09,
          ),
          SizedBox(
              height: 50,
              width: width*0.6,
              child: ElevatedButton(
                onPressed: () async {
                  try {
                            PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                 verificationId: LoginPage.verify,
                                  smsCode: code);

                            await auth.signInWithCredential(credential);
                          }
                          catch(e) {}
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const UserDetails()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 18, 60, 215),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ]),
      ),
    );
  }
}