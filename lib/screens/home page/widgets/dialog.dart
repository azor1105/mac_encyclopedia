import 'package:encyclopedia/models/pc_data.dart';
import 'package:encyclopedia/screens/home%20page/widgets/my_controllers.dart';
import 'package:encyclopedia/utils/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

myDialog(
  VoidCallback okButton,
  PcData? object,
  bool edit,
  double width,
  BuildContext context,
  String title,
) {
  if (edit && object!=null) {
    MyControllers.controllerModel.text = object.model;
    MyControllers.controllerCpu.text = object.cpu;
    MyControllers.controllerRam.text = object.ram;
    MyControllers.controllerDisplay.text = object.display;
    MyControllers.controllerReleased.text = object.released;
    MyControllers.controllerPrice.text = object.price;
  }
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            width: width.w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    title,
                    style: MyFonts.w400.copyWith(fontSize: 20.sp),
                    textAlign: TextAlign.center,
                  ),
                  // Model field
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormField(
                    cursorHeight: 25.h,
                    style: MyFonts.w400.copyWith(fontSize: 15.sp),
                    decoration: InputDecoration(
                      labelText: "Model",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: MyControllers.controllerModel,
                  ),
                  // Cpu field
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    cursorHeight: 25.h,
                    style: MyFonts.w400.copyWith(fontSize: 15.sp),
                    decoration: InputDecoration(
                      labelText: "Cpu",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: MyControllers.controllerCpu,
                  ),
                  // Ram field
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    cursorHeight: 25.h,
                    style: MyFonts.w400.copyWith(fontSize: 15.sp),
                    decoration: InputDecoration(
                      labelText: "Ram",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: MyControllers.controllerRam,
                  ),
                  // Display field
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    cursorHeight: 25.h,
                    style: MyFonts.w400.copyWith(fontSize: 15.sp),
                    decoration: InputDecoration(
                      labelText: "Display",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: MyControllers.controllerDisplay,
                  ),
                  // Released field
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    cursorHeight: 25.h,
                    style: MyFonts.w400.copyWith(fontSize: 15.sp),
                    decoration: InputDecoration(
                      labelText: "Released",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: MyControllers.controllerReleased,
                  ),
                  // Price field
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    cursorHeight: 25.h,
                    style: MyFonts.w400.copyWith(fontSize: 15.sp),
                    decoration: InputDecoration(
                      labelText: "Price",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: MyControllers.controllerPrice,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: SizedBox(),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          MyControllers.controllerClear();
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Cancel",
                          style: MyFonts.w400.copyWith(fontSize: 15.sp),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      OutlinedButton(
                        onPressed: okButton,
                        child: Text(
                          "Ok",
                          style: MyFonts.w400.copyWith(fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
