import 'package:cehpoint/Screens/home.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
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
                  width: width*0.06,
                ),
                const Text(
                  "Add Personal Details",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(3, 13, 48, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
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
                  hintText: "Name",
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
                  hintText: "Phone number",
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
                  hintText: "Email Id",
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
                  hintText: "DOB",
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
                  hintText: "Gender",
                  hintStyle: TextStyle(
                      fontSize: 16.38,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(115, 115, 115, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            SizedBox(
              height: 50,
              width: width*0.9,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage()));
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
          ],
        ),
      ),
    );
  }
}