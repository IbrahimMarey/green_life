import 'package:flutter/material.dart';
import 'package:green_life/models/slider_model.dart';
import 'package:green_life/screens/auth/login/login_screen.dart';
import 'package:green_life/sheard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (v) {
                  setState(() {
                    currentIndex = v;
                    print(v);
                    print(currentIndex);
                  });
                },
                controller: pageController,
                children: [
                  pageItem(sliderList[0]),
                  pageItem(sliderList[1]),
                  pageItem(sliderList[2]),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
              child: currentIndex == 2
                  ? sharedBtn(txt: 'Get Started', radius: 18, onTap: (){
                    Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) => LoginScreen(),));
              })
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                            controller: pageController, // PageController
                            count: 3,
                            effect: const WormEffect(
                                dotColor: Colors.grey,
                                activeDotColor:
                                    kPrimaryColor), // your preferred effect
                            onDotClicked: (index) {}),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              currentIndex = currentIndex + 1;
                              pageController.animateToPage(currentIndex,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            });
                          },
                          icon: const CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            child: Icon(
                              Icons.arrow_forward,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }
}

Widget pageItem(SliderModel sliderModel) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(sliderModel.image),
      SizedBox(
        height: 8,
      ),
      Text(
        sliderModel.title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 12,
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          sliderModel.description,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    ],
  );
}
