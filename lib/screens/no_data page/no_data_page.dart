import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:lottie/lottie.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/my_fonts.dart';
import '../../utils/my_images.dart';

class NoDataScreen extends StatelessWidget {
  const NoDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: GradientColors.redSalvation),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Lottie.asset(MyImages.emptyBox),
            ),
            Text(
              "No informations found.\nPlease add them!",
              style: MyFonts.w500.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
