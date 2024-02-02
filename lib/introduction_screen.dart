import 'dart:html';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project/landinpage.dart';
import 'package:project/login.dart';

void main() {
  runApp(MaterialApp(
    home: Intro_screen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Intro_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 21, 88, 77),
          fontSize: 40,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
      imagePadding: EdgeInsets.all(10),
    );
    return IntroductionScreen(
      // allowImplicitScrolling: true,
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: 'Intro Screen1',
          image: Image.asset("assets/icons/maxence.jpg"),
          body: 'this is screen one',
        ),
        PageViewModel(
            decoration: pageDecoration,
            title: 'Intro Screen2',
            image: Image.asset("assets/icons/neom.jpg"),
            body: 'this is screen two'),
        PageViewModel(
            decoration: pageDecoration,
            titleWidget: const Text('Intro screen 3'),
            image: Image.asset("assets/icons/owlimg.jpg"),
            body: 'this is screen three'),
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginPage())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Landinpage())),
      skip: const Text('Skip to escape'),
      next: const Text('Next'),
      done: const Text('Dive in'),
      dotsDecorator: const DotsDecorator(
        color: Color.fromARGB(255, 107, 84, 84),
        activeColor: Color.fromARGB(255, 0, 35, 65),
        size: Size(10, 10),
        activeSize: Size(15, 10),
      ),
      showSkipButton: true,
    );
  }
}
