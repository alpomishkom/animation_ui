import 'package:flutter/material.dart';

class Containet1 extends StatefulWidget {
  final double? width;
  final double? height;
  final BoxDecoration? boxDecoration;
  final Color? color;
  final BorderRadius? borderRadius;

  const Containet1({
    Key? key,
    this.width,
    this.height,
    this.boxDecoration,
    this.color,
    this.borderRadius,
  }) : super(key: key);

  @override
  State<Containet1> createState() => _ContainetState();
}

class _ContainetState extends State<Containet1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: widget.width,
      height: widget.height,
      decoration: widget.boxDecoration ??
          BoxDecoration(
            color: widget.color ?? Colors.red,
            borderRadius: widget.borderRadius ?? BorderRadius.circular(40),
            boxShadow:  [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(0.0, 20), //(x,y)
                blurRadius: 12,
                spreadRadius: 0,
              ),
            ],
          ),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "noblack",
            style: TextStyle(fontFamily: "Candal-Regular", fontSize: 28),
          ),
          Text(
            "4.99\$ monthly",
            style: TextStyle(
                fontFamily: "Candal-Regular",
                color: Colors.black45,
                fontSize: 14),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Unlimited cards and spaces",
            style: TextStyle(fontFamily: "Candal-Regular", color: Colors.black),
          ),
          Text(
            "Investments tips and much more",
            style: TextStyle(fontFamily: "Candal-Regular", color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "read all the featunes",
            style:
                TextStyle(fontFamily: "Candal-Regular", color: Colors.black45),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "I Want this",
            style: TextStyle(fontFamily: "Candal-Regular", color: Colors.green),
          ),
        ],
      ),
    );
  }
}
