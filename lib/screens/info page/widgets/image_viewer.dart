import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home page/widgets/build_sheet.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer(
      {Key? key,
      required this.imagePath,
      required this.height,
      required this.radius,
      required this.model, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          )),
          context: context,
          builder: (context) => BuildSheet(
            imagePath: imagePath,
            name: model,
          ),
        );
      },
      child: Container(
        width: width,
        height: height.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 5,
              blurRadius: 5,
              color: Colors.black.withOpacity(0.7),
            ),
          ],
          borderRadius: BorderRadius.circular(radius.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius.r),
          child: Image.asset(imagePath, fit: BoxFit.cover,),
        ),
      ),
    );
  }

  final String model;
  final String imagePath;
  final double height;
  final double width;
  final double radius;
}
