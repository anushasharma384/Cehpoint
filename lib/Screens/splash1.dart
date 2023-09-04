import 'dart:async';
import 'package:cehpoint/Screens/login.dart';
import 'package:cehpoint/Screens/splash2.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          const Splash2()
                                                         )
                                       )
         );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash1.png"),
            fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: [
            Positioned(
              right: width*0.04,
              top: height*0.04,
              height: 50,
              width: 130,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.w400,
                      fontSize: 25.6
                    ),
                  ),
              ),
            ),
            Positioned(
              top: height*0.35,
              child: const Text(
                "Lorem ipsum",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w600
                ),
              )
            ),
            Positioned(
              top: height*0.45,
              child: const Text(
                "Lorem ipsum, dolor sit amet \n cons \n ectetur adipisicing elit. Ipsam \n nisi \n rem voluptates",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.w600
                ),
              )
            ),
            Positioned(
              bottom: height*0.02,
              left: width*0.33,
              child: Center(
                child: Image.asset(
                  "assets/images/1_4.png",
                  height: 28.7,
                  width: 131.27,
                  fit: BoxFit.cover,
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}