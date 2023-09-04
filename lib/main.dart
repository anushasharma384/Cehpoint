// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:cehpoint/Screens/splash1.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cehpoint',
      theme: ThemeData(
        primarySwatch:  Colors.blue
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
  
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          const Splash1()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(22,43, 115, 1),
      child: Column(
        children: [
          SizedBox(
            height: height*0.45,
          ),
          const Text("Thaiseva",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),),
        ],
      )
    ));
  }
}