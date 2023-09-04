import 'package:cehpoint/Screens/otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cehpoint/Screens/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String verify = "";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  String name = '';
  String email = '';
  var phone = '';
  String password = '';
  String gender = '';
  bool login = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const Text(
                    "Let's get started",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(3, 13, 48, 1),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const Text(
                    "Create an account",
                    style: TextStyle(
                        color: Color.fromRGBO(100, 100, 100, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromRGBO(115, 115, 115, 1),
                        width: 1)),
                child: TextFormField(
                  key: const ValueKey('name'),
                  decoration: const InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                        fontSize: 16.38,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(115, 115, 115, 1)),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Name';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      name = value!;
                    });
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromRGBO(115, 115, 115, 1),
                        width: 1)),
                child: TextFormField(
                  controller: _emailController,
                  key: const ValueKey('email'),
                  decoration: const InputDecoration(
                    hintText: "Email ID",
                    hintStyle: TextStyle(
                        fontSize: 16.38,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(115, 115, 115, 1)),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please enter your Email Id';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      email = value!;
                    });
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromRGBO(115, 115, 115, 1),
                        width: 1)),
                child: TextFormField(
                  key: const ValueKey('phone'),
                  decoration: const InputDecoration(
                    hintText: "Phone number",
                    hintStyle: TextStyle(
                        fontSize: 16.38,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(115, 115, 115, 1)),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value.length < 10) {
                      return 'Please Enter Your Phone Number';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      phone = value!;
                    });
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromRGBO(115, 115, 115, 1),
                        width: 1)),
                child: TextFormField(
                  key: const ValueKey('password'),
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontSize: 16.38,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(115, 115, 115, 1)),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Please enter the password of minimum 6 characters';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      password = value!;
                    });
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromRGBO(115, 115, 115, 1),
                        width: 1)),
                child: TextFormField(
                  key: const ValueKey('gender'),
                  decoration: const InputDecoration(
                    hintText: "Gender",
                    hintStyle: TextStyle(
                        fontSize: 16.38,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(115, 115, 115, 1)),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value.contains('male')) {
                      return 'Please enter your gender';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              SizedBox(
                height: 50,
                width: width * 0.9,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                     await FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: '${phone}',
                          verificationCompleted:
                              (PhoneAuthCredential credential) {},
                          verificationFailed: (FirebaseAuthException e) {},
                          codeSent: (String verificationId, int? resendToken) {
                            LoginPage.verify = verificationId;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const OTPpage()));
                          },
                          codeAutoRetrievalTimeout: (String verificationId) {},
                        );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 18, 60, 215),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: 18,
                width: 210,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login_with.png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                height: 50,
                width: width * 0.9,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OTPpage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: const Color.fromRGBO(115, 115, 115, 1)),
                  child: const Text(
                    "Login With Google",
                    style: TextStyle(
                        color: Color.fromRGBO(115, 115, 115, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.1,
                  ),
                  const Text(
                    "By signing up, you agree to our",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Terms And Policy",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(10, 51, 194, 1),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.2,
                  ),
                  const Text(
                    "Have an account?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.38,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    height: 34,
                    width: 82.23,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(236, 236, 236, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromRGBO(10, 51, 194, 1),
                            width: 1)),
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUp()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          )),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            color: Color.fromRGBO(10, 51, 194, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.3),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
