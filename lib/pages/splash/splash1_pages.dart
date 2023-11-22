import 'package:animation/pages/splash/splash3pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class Splash11Pages extends StatefulWidget {
  const Splash11Pages({super.key});
  @override
  State<Splash11Pages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<Splash11Pages>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  late AnimationController _controller1;
  late Animation<Offset> _animation1;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween(end: const Offset(-0, 0), begin: const Offset(1, 0))
        .animate(_controller);
    _controller.forward();

    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation1 = Tween(end: const Offset(0, 0), begin: const Offset(0, 8))
        .animate(_controller1);
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
                    SlideTransition(
                      position: _animation1,
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
                  SlideTransition(
                    position: _animation,
                    child: const Column(
                      children: [
                        Center(
                          child: Image(
                            image: AssetImage("assets/images/b1.jpg"),
                            width: 300,
                            height: 300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SlideTransition(
                    position: _animation,
                    child: const Column(
                      children: [
                        Text(
                          "You did it",
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w100,
                              fontFamily: "Candal-Regular"),
                        ),
                        Text(
                          "you're in",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w100,
                            fontFamily: "Candal-Regular",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "welcome Lorezo now",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                        Text(
                          "you are a nobanker",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
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
                                type: PageTransitionType.leftToRight,
                                duration: const Duration(milliseconds: 600),
                                child: const Slpash1Pages(),
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
