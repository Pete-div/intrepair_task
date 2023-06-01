// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrapair_task/model/onboarding_model.dart';
import 'package:intrapair_task/screen/login_screen.dart';
import 'package:intrapair_task/utilis/color.dart';
import 'package:intrapair_task/widget/Customcontainer_widget.dart';
import 'package:intrapair_task/widget/base_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currrentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialization();
    _controller = PageController(initialPage: 0);
    currentIndex = ValueNotifier(0);
    autoChange();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    currentIndex.dispose();
    _controller.dispose();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  late ValueNotifier<int> currentIndex;
  autoChange() {
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _controller.jumpToPage((currentIndex.value + 1) % 4);
      });

      autoChange();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/images/intrapair_background_img.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            bottom: 45,
            right: 28,
            left: 27,
            child: CustomContainerWidget(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff5c3b52), Color(0xff3c263a)],
                    begin: const FractionalOffset(0.1, 0.0),
                    end: const FractionalOffset(0.5, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                color: Color(0xff3d263b),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    child: PageView.builder(
                        itemCount: onBoard.length,
                        controller: _controller,
                        physics: BouncingScrollPhysics(),
                        onPageChanged: (int index) {
                          setState(() {
                            currrentIndex = index;
                            currentIndex.value = index;
                          });
                        },
                        itemBuilder: (_, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                onBoard[index].Topic,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                onBoard[index].subTopic,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: BaseButton(
                        bgColor: Color(0xFF781596),
                        onPress: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        },
                        text: 'Get Started'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: Duration(seconds: 2),
                        height: 20.0,
                        child: ListView.builder(
                          itemCount: onBoard.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 1),
                              child: Stack(
                                children: [
                                  Container(
                                    width: currrentIndex == index ? 12 : 5,
                                    height: currrentIndex == index ? 12 : 5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffF6F6F6),
                                    ),
                                  ),
                                  Positioned(
                                    top: currrentIndex == index ? -5 : 3,
                                    bottom: currrentIndex == index ? 1 : 3,
                                    left: currrentIndex == index ? 1 : 3,
                                    right: currrentIndex == index ? 1 : 3,
                                    child: Container(
                                      width: currrentIndex == index ? null : 2,
                                      height: currrentIndex == index ? null : 2,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffF6F6F6),
                                        border: Border.all(
                                            width: 2,
                                            color: currrentIndex == index
                                                ? AppColors.primaryColor
                                                : Colors.transparent),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
