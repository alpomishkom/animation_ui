import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animation/pages/splash/splash1_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  late AnimationController _controller1;
  late Animation<Offset> _animation1;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween(end: 1.0, begin: 0.0).animate(_controller);
    _controller.forward();

    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation1 =
        Tween(end: const Offset(0, 0), begin: const Offset(0, 3)).animate(_controller1);
    _controller1.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.07,
                ),
                child: Center(
                    child: Column(
                  children: [
                    ScaleTransition(
                      alignment: Alignment.centerLeft,
                      scale: _animation,
                      child: const Text(
                        "MORABK",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Colors.black45,
                          fontFamily: "Candal-Regular",
                        ),
                      ),
                    )
                  ],
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Column(
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage("assets/images/a1.jpg"),
                      width: 300,
                      height: 300,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ScaleTransition(
                    alignment: Alignment.topCenter,
                    scale: _animation,
                    child:  Column(
                      children: [
                        TextLiquidFill(
                          text: 'The first bank \nwithout a bank',
                          waveColor: Colors.black,
                          boxBackgroundColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                          boxHeight: 100.0,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Join the nobank exprinke\n entirealy no online jokes",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  SlideTransition(
                    position: _animation1,
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            fixedSize: const Size(160, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                duration: const Duration(seconds: 1),
                                type: PageTransitionType.fade,
                                child: const Splash11Pages(),
                                isIos: true,
                              ),
                            );
                          },
                          child: const Text("Enter"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
