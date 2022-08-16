import 'package:encyclopedia/models/pc_data.dart';
import 'package:encyclopedia/screens/home%20page/widgets/build_sheet.dart';
import 'package:encyclopedia/screens/home%20page/widgets/flutter_toast.dart';
import 'package:encyclopedia/screens/info%20page/info_page.dart';
import 'package:encyclopedia/utils/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PcInfoTable extends StatelessWidget {
  const PcInfoTable(
      {Key? key,
      required this.data,
      required this.editTap,
      required this.height,
      required this.imagePath,
      required this.model,
      required this.cpu,
      required this.ram,
      required this.display,
      required this.released,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (data.infoPageData1 != "") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoPage(
                name: model,
                imagePath2: data.infoPageImage2Path,
                imagePath3: data.infoPageImage3Path,
                data1: data.infoPageData1,
                data2Title: data.infoPageData2Title,
                data2: data.infoPageData2,
                data3Title: data.infoPageData3Title,
                data3: data.infoPageData3,
              ),
            ),
          );
        } else {
          ShowToast.getMyToast(
              message: "This information can not\nhave a detailed info");
        }
      },
      child: Container(
        width: double.infinity,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 5,
              color: Colors.black.withOpacity(0.6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
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
              child: SizedBox(
                height: height / 2,
                child: Center(
                  child: Image.asset(
                    imagePath,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 3,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Model: $model",
              style: MyFonts.w500.copyWith(fontSize: 17.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Cpu: $cpu",
              style: MyFonts.w500.copyWith(fontSize: 15.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Ram: $ram",
              style: MyFonts.w500.copyWith(fontSize: 15.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Display: $display pixels",
              style: MyFonts.w500.copyWith(fontSize: 15.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Released: $released",
              style: MyFonts.w500.copyWith(fontSize: 15.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Price: \$$price",
                  style: MyFonts.w500.copyWith(fontSize: 15.sp),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                GestureDetector(
                  onTap: editTap,
                  child: const Icon(Icons.edit),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }

  final PcData data;
  final double height;
  final String imagePath;
  final String model;
  final String cpu;
  final String ram;
  final String display;
  final String released;
  final String price;
  final VoidCallback editTap;
}
