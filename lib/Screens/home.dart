// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: GNav(
            gap: 8, 
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(255, 22, 50, 142),
            padding:const EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                onPressed: () {},
              ),
              GButton(
                icon: Icons.history,
                onPressed: () {},
              ),
              GButton(
                icon: LineIcons.heart,
                onPressed: () {},
              ),
              GButton(
                icon: Icons.person_2_outlined,
                onPressed: () {},
              )
            ]
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.33,
              width: double.infinity,
              color: const Color.fromRGBO(22, 43, 115, 1),
              child: Stack(
                children: [
                  Positioned(
                      top: height * 0.05,
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Container(
                            height: 21,
                            width: 24.5,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/side_drawer.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Container(
                            height: 57,
                            width: 148,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/thialand.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: width * 0.23,
                          ),
                          Container(
                            height: 27.5,
                            width: 30.5,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/cart.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Container(
                            height: 27,
                            width: 30,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/notification.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      )
                    ),
                  Positioned(
                      top: height * 0.18,
                      child: Row(
                        children: [
                          SizedBox(
                            width: width*0.08,
                          ),
                          Container(
                            height: 37,
                            width: 37,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/customer_support.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: width*0.165,
                          ),
                          Container(
                            height: 32.38,
                            width: 32.38,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/food.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: width*0.15,
                          ),
                          Container(
                            height: 37,
                            width: 37,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/bed_icon.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: width*0.15,
                          ),
                          Container(
                            height: 37,
                            width: 37,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/car_icon.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      )
                    ),
                    Positioned(
                      top: height*0.24,
                      child: Row(
                        children: [
                          SizedBox(
                            width: width*0.025,
                          ),
                          const Text(
                            "Local \n Assistance",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(
                            width: width*0.11,
                          ),
                          const Text(
                            "Food",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(
                            width: width*0.14,
                          ),
                          const Text(
                            "Room",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(
                            width: width*0.14,
                          ),
                          const Text(
                            "Travel",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      )
                    ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(236, 236, 236, 1),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "What are you looking for?",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(135, 135, 135, 1)
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: height*0.25,
              width: width*0.9,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/home_screen.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(
              height: height*0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: width*0.05,
                ),
                const Text(
                  "What's on your mind?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),
                ),
                SizedBox(
                  width: width*0.25,
                ),
                const Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(50, 95, 255, 1)
                  ),
                )
              ],
            ),
            SizedBox(
              height: height*0.02,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: width*0.05,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/biryani.png"),
                                fit: BoxFit.cover)),
                      ),
                      const Text(
                        "Biryani",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(135, 135, 135, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width*0.1,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/chineese.png"),
                                fit: BoxFit.cover)),
                      ),
                      const Text(
                        "Chineese",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(135, 135, 135, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width*0.1,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/pakoda.png"),
                                fit: BoxFit.cover)),
                      ),
                      const Text(
                        "Pakodas",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(135, 135, 135, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width*0.1,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/north_indian.png"),
                                fit: BoxFit.cover)),
                      ),
                      const Text(
                        "North Indian",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(135, 135, 135, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ), 
            SizedBox(
              height: height*0.07,
            ),
            Container(
              height: 150,
              width: width*0.9,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/text_image.png"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}
