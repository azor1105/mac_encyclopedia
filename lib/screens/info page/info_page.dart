import 'package:encyclopedia/screens/info%20page/widgets/hello_container.dart';
import 'package:encyclopedia/screens/info%20page/widgets/image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:encyclopedia/utils/my_fonts.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoPage extends StatelessWidget {
  const InfoPage(
      {Key? key,
      required this.name,
      required this.imagePath2,
      required this.imagePath3,
      required this.data1,
      required this.data2Title,
      required this.data2,
      required this.data3Title,
      required this.data3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(
              name,
              style: MyFonts.w500.copyWith(color: Colors.white),
            ),
            centerTitle: true,
            floating: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: GradientColors.redSalvation),
              ),
            ),
          ),
        ],
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: GradientColors.redSalvation,
          )),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15.h,),
                HelloContainer(
                  height: MediaQuery.of(context).size.height*0.3,
                  radius: 25,
                ),
                SizedBox(height: 25.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    data1,
                    style: MyFonts.w400.copyWith(color: Colors.white,fontSize: 17.sp),
                  ),
                ),
                SizedBox(height: 30.h,),
                ImageViewer(
                  imagePath: imagePath2,
                  height: MediaQuery.of(context).size.height*0.35,
                  width: MediaQuery.of(context).size.width*0.7,
                  radius: 25,
                  model: name,
                ),
                SizedBox(height: 30.h,),
                Text(
                  data2Title,
                  style: MyFonts.w500.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    data2,
                    style: MyFonts.w400.copyWith(color: Colors.white,fontSize: 17.sp),
                  ),
                ),
                SizedBox(height: 30.h,),
                ImageViewer(
                  imagePath: imagePath3,
                  height: MediaQuery.of(context).size.height*0.35,
                  width: MediaQuery.of(context).size.width*0.7,
                  radius: 25,
                  model: name,
                ),
                SizedBox(height: 30.h,),
                Text(
                  data3Title,
                  style: MyFonts.w500.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    data3,
                    style: MyFonts.w400.copyWith(color: Colors.white,fontSize: 17.sp),
                  ),
                ),
                SizedBox(height: 15.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final String imagePath2;
  final String imagePath3;
  final String data1;
  final String data2Title;
  final String data2;
  final String data3Title;
  final String data3;
  final String name;
}
