import 'package:cehpoint/Screens/login.dart';
import 'package:cehpoint/Screens/otp.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Row(
              children: [
                SizedBox(
                  width: width*0.08,
                ),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                      color: Color.fromRGBO(3, 13, 48, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: height*0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: width*0.08,
                ),
                const Text(
                  "Login to your existing account",
                  style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromRGBO(115, 115, 115, 1),
                      width: 1)),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "User Nmae",
                  hintStyle: TextStyle(
                      fontSize: 16.38,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(115, 115, 115, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromRGBO(115, 115, 115, 1),
                      width: 1)),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                      fontSize: 16.38,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(115, 115, 115, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: width*0.06,
                ),
                const Text(
                  "Forgotten your password?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(10, 51, 194, 1)
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.06,
            ),
            SizedBox(
              height: 50,
              width: width*0.9,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(10, 51, 194, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
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
              height: height * 0.04,
            ),
            SizedBox(
              height: 50,
              width: width*0.9,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const OTPpage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),shadowColor:const Color.fromRGBO(115, 115, 115, 1) ),
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
                  width: width*0.1,
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
                  width: width*0.2,
                ),
                const Text(
                  "Need an account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.38,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: width*0.05,
                ),
                Container(
                  height: 34,
                  width: 90,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(236, 236, 236, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(10, 51, 194, 1),
                          width: 1)),
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color.fromRGBO(10, 51, 194, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}