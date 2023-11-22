import 'package:animation/pages/splash/splash1_pages.dart';
import 'package:flutter/material.dart';

import '../splash/splash3pages.dart';
import '../splash/splash_pages.dart';

class buttonnb1 extends StatefulWidget {
  @override
  buttonnb1State createState() => buttonnb1State();
}

class buttonnb1State extends State<buttonnb1> {
  var currentIndex = 0;

  var _list = <Widget>[
    SplashPages(),
    Splash11Pages(),
    Slpash1Pages(),

  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _list.elementAt(currentIndex),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: InkWell(
              onTap: (){

              },
              child: Text("View Codes"))),
        ),
      ],
        backgroundColor: Colors.teal,shadowColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text("Bottom Navigation Bar 1",style: TextStyle(color: Colors.white),)),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                    () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .128,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                Icon(
                  listOfIcons[index],
                  size: size.width * .076,
                  color: index == currentIndex ? Colors.blueAccent : Colors.black38,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
}