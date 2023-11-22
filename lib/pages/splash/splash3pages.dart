import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import '../../widget/widget.dart';

class Slpash1Pages extends StatefulWidget {
  const Slpash1Pages({super.key});

  @override
  State<Slpash1Pages> createState() => _Slpash1PagesState();
}

class _Slpash1PagesState extends State<Slpash1Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 55,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "Choose\nYour plan",
                        textStyle: const TextStyle(
                          fontSize: 45,
                          fontFamily: "Candal-Regular",
                        ),
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 2000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   const GradientAnimationText(
                    reverse: true,
                    text: Text(
                      "you can always start with \n a free plan and then upgrades",
                      style: TextStyle(fontSize: 18, color: Colors.black45),
                    ),
                    colors: [
                      Colors.black,
                      Colors.black54,
                      Colors.black38,
                      Colors.black26,
                      Colors.blueAccent
                    ],
                    duration: Duration(seconds: 3),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                  height: 600,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          TweenAnimationBuilder(
                            tween: Tween(begin: 0.0, end: 1.0),
                            duration: const Duration(seconds: 7),
                            curve: Curves.fastLinearToSlowEaseIn,
                            builder: (context, value, child) {
                              return Transform.scale(
                                scaleY: value,
                                scaleX: value,
                                child: const Containet1(
                                  width: double.infinity,
                                  height: 250,
                                  color: Color(0xF2FFFFFF),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
