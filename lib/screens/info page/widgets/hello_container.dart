import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../utils/my_images.dart';

class HelloContainer extends StatelessWidget {
  const HelloContainer(
      {Key? key,
      required this.height,
      required this.radius,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              spreadRadius: 5,
              color: Colors.black.withOpacity(0.6)),
        ],
      ),
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius.r),
        child: Container(
          child: Lottie.asset(
            MyImages.macHello,
            repeat: false, 
          ),
        ),
      ),
    );
  }
  final double height;
  final double radius;
}
