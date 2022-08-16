import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;

  const MyContainer(
      {Key? key, this.height = 80, this.width = 80, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 10,
                spreadRadius: 2,
                color: Colors.grey)
          ],
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green,
              Colors.deepOrange,
            ],
          ),
          color: Colors.blue),
      child: child
    );
  }
}
