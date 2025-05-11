import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      isProgressTap: true,
      bodyPadding: EdgeInsets.all(12),
      globalBackgroundColor: Colors.white,
      dotsDecorator: DotsDecorator(
        activeColor: Color(0xff4b4d39),
        color: Color(0xff4b4d39),
      ),
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            safeArea: 40,
            // bodyPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            imageAlignment: Alignment.center,
            bodyAlignment: Alignment.center,
            imagePadding: const EdgeInsets.only(left: 16.0, right: 16, top: 12),
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            bodyTextStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
          title: "uLearn",
          body:
              "Welcome to the app! This is an Ukhasyah's Learn App with Flutter\n Enjoy.",

          image: Center(
            child: Image.asset(
              scale: 5.0,
              alignment: Alignment.center,
              'assets/images/learn.png',
            ),
          ),
        ),
      ],
      showBackButton: true,
      showNextButton: false,
      back: const Icon(Icons.arrow_back),
      done: const Text("Done"),
      onDone: () {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => Homie()));
      },
    );
  }
}
