import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _pageIndex = 1;
  List<Widget> listContentConfig = [];

  @override
  void initState() {
    // listContentConfig.add(
    //   ContentConfig(
    //       title: "Lorem ipsum",
    //       description:
    //           "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
    //       backgroundImage: "assets/images/splash1.png",
    //       styleTitle: GoogleFonts.rufina(color: Colors.white, fontSize: 32),
    //       styleDescription: GoogleFonts.roboto(
    //         color: Colors.white,
    //         fontSize: 23,
    //       ),
    //       textAlignDescription: TextAlign.start),
    // );
    // listContentConfig.add(
    //   ContentConfig(
    //       title: "Lorem ipsum",
    //       description:
    //           "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
    //       backgroundImage: "assets/images/splash2.png",
    //       styleTitle: GoogleFonts.rufina(color: Colors.white, fontSize: 32),
    //       styleDescription:
    //           GoogleFonts.roboto(color: Colors.white, fontSize: 23)),
    // );
    // listContentConfig.add(
    //   ContentConfig(
    //       title: "Lorem ipsum",
    //       description:
    //           "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
    //       backgroundImage: "assets/images/splash3.png",
    //       styleTitle: GoogleFonts.rufina(color: Colors.white, fontSize: 32),
    //       styleDescription:
    //           GoogleFonts.roboto(color: Colors.white, fontSize: 23)),
    // );
    // listContentConfig.add(
    //   ContentConfig(
    //       title: "Lorem ipsum",
    //       description:
    //           "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
    //       backgroundImage: "assets/images/splash4.png",
    //       styleTitle: GoogleFonts.rufina(color: Colors.white, fontSize: 32),
    //       styleDescription:
    //           GoogleFonts.roboto(color: Colors.white, fontSize: 23)),
    // );
    listContentConfig.add(Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/splash1.png",
              ),
              fit: BoxFit.fitHeight)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsum",
                style: GoogleFonts.rufina(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                width: double.infinity,
                height: 25,
              ),
              Text(
                "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 23),
              )
            ],
          ),
        ),
      ),
    ));

    listContentConfig.add(Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/splash2.png",
              ),
              fit: BoxFit.fitHeight)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsum",
                style: GoogleFonts.rufina(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                width: double.infinity,
                height: 25,
              ),
              Text(
                "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 23),
              )
            ],
          ),
        ),
      ),
    ));

    listContentConfig.add(Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/splash3.png",
              ),
              fit: BoxFit.fitHeight)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsum",
                style: GoogleFonts.rufina(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                width: double.infinity,
                height: 25,
              ),
              Text(
                "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 23),
              )
            ],
          ),
        ),
      ),
    ));

    listContentConfig.add(Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/splash4.png",
              ),
              fit: BoxFit.fitHeight)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsum",
                style: GoogleFonts.rufina(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                width: double.infinity,
                height: 25,
              ),
              Text(
                "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 23),
              )
            ],
          ),
        ),
      ),
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Stack(
      children: [
        IntroSlider(
          key: UniqueKey(),
          listCustomTabs: listContentConfig,
          isShowDoneBtn: false,
          isShowNextBtn: false,
          isShowSkipBtn: false,
          isShowPrevBtn: false,
          // onTabChangeCompleted: (index) {
          //   print(index);
          //   _pageIndex = index + 1;
          // },

          indicatorConfig: IndicatorConfig(
              indicatorWidget: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(135, 135, 134, 1)),
              ),
              spaceBetweenIndicator: 25,
              activeIndicatorWidget: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(12)),
              )),
        ),
        Positioned(
          right: width * 0.075,
          top: height * 0.05,
          child: ElevatedButton(
            onPressed: () async {
              Get.offAll(() => const LoginPage());
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       Image.asset(
    //         "assets/images/splash1.png",
    //         height: double.infinity,
    //         fit: BoxFit.fitHeight,
    //       ),
    //       Positioned(
    //         right: width * 0.075,
    //         top: height * 0.05,
    //         child: ElevatedButton(
    //           onPressed: () async {
    //             Get.offAll(() => const LoginPage());
    //           },
    //           style: ElevatedButton.styleFrom(
    //               backgroundColor: Colors.black.withOpacity(0.2),
    //               shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(10))),
    //           child: const Text(
    //             "Skip",
    //             style: TextStyle(
    //               color: Colors.white,
    //             ),
    //           ),
    //         ),
    //       ),
    //       Center(
    //         child: Padding(
    //           padding: const EdgeInsets.all(12),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "Lorem ipsum",
    //                 style:
    //                     GoogleFonts.rufina(color: Colors.white, fontSize: 32),
    //               ),
    //               const SizedBox(
    //                 width: double.infinity,
    //                 height: 10,
    //               ),
    //               Text(
    //                 "Lorem ipsum, dolor sit amet\ncons\nectetur adipisicing elit. Ipsam \nnisi\nrem voluptates",
    //                 style:
    //                     GoogleFonts.roboto(color: Colors.white, fontSize: 23),
    //               )
    //             ],
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
