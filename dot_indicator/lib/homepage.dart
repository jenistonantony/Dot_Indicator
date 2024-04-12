import 'package:dot_indicator/pages/page_1.dart';
import 'package:dot_indicator/pages/page_2.dart';
import 'package:dot_indicator/pages/page_3.dart';
import 'package:dot_indicator/pages/page_4.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 161, 96, 227),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),

          // dot indicator
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: const JumpingDotEffect(
              activeDotColor: Color.fromARGB(255, 157, 71, 243),
              dotColor: Color.fromARGB(255, 237, 240, 242),
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
              verticalOffset: 50,
            ),
          ),
        ],
      ),
    );
  }
}
