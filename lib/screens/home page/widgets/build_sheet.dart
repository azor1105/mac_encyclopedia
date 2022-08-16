import 'package:encyclopedia/utils/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildSheet extends StatelessWidget {
  const BuildSheet({Key? key, required this.imagePath, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            gradient: LinearGradient(
              colors: GradientColors.redSalvation,
            )),
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Text(
              name,
              style: MyFonts.w500.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const Expanded(child: SizedBox(),),
            Container(
              height: MediaQuery.of(context).size.height* 0.45,
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 5,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  )),
            ),
            const Expanded(child: SizedBox(),),
          ],
        ));
  }

  final String name;
  final String imagePath;
}
