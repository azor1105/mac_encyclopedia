import 'package:encyclopedia/models/pc_data.dart';
import 'package:encyclopedia/screens/home%20page/widgets/dialog.dart';
import 'package:encyclopedia/screens/home%20page/widgets/flutter_toast.dart';
import 'package:encyclopedia/screens/home%20page/widgets/my_controllers.dart';
import 'package:encyclopedia/screens/home%20page/widgets/pc_info_table.dart';
import 'package:encyclopedia/screens/no_data%20page/no_data_page.dart';
import 'package:encyclopedia/utils/my_fonts.dart';
import 'package:encyclopedia/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Pc Data
  List<PcData> data = PcData.pcDataInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          floating: true,
          title: Text(
            "Apple Computers Evalution",
            style: MyFonts.w500.copyWith(color: Colors.white),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: GradientColors.redSalvation),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: IconButton(
                onPressed: () {
                  myDialog(() {
                    if (MyControllers.controllerIsEmpty()) {
                      ShowToast.getMyToast(
                          message: "Please, add information to fields");
                    } else {
                      data.add(
                        PcData(
                          imagePath: MyImages.defaultMac,
                          model: MyControllers.controllerModel.text,
                          cpu: MyControllers.controllerCpu.text,
                          ram: MyControllers.controllerRam.text,
                          released: MyControllers.controllerReleased.text,
                          display: MyControllers.controllerDisplay.text,
                          price: MyControllers.controllerDisplay.text,
                          infoPageImage2Path: "",
                          infoPageImage3Path: "",
                          infoPageData1: "",
                          infoPageData2: "",
                          infoPageData3: "",
                          infoPageData2Title: "",
                          infoPageData3Title: "",
                        ),
                      );
                      MyControllers.controllerClear();
                      ShowToast.getMyToast(message: "Information was added");
                      Navigator.of(context).pop();
                      setState(() {});
                    }
                  },
                      null,
                      false,
                      MediaQuery.of(context).size.width * 0.75.toDouble(),
                      context,
                      "Add data");
                },
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ],
      body: data.isEmpty
          ? const NoDataScreen()
          : Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: GradientColors.redSalvation),
              ),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, index) {
                    return Dismissible(
                      key: UniqueKey(),
                      background: Container(
                        color: const Color.fromARGB(255, 255, 17, 0),
                        child: Center(
                          child: Row(
                            children: [
                              const Expanded(child: SizedBox()),
                              Text(
                                "Removing 🗑",
                                style: MyFonts.w500.copyWith(fontSize: 30.sp),
                              ),
                              const Expanded(child: SizedBox()),
                            ],
                          ),
                        ),
                      ),
                      onDismissed: (DismissDirection direction) {
                        data.removeAt(index);
                      },
                      child: PcInfoTable(
                        data: data[index],
                        height: MediaQuery.of(context).size.height *
                            0.45.toDouble(),
                        imagePath: data[index].imagePath,
                        model: data[index].model,
                        cpu: data[index].cpu,
                        ram: data[index].ram,
                        display: data[index].display,
                        released: data[index].released,
                        price: data[index].price,
                        editTap: () {
                          myDialog(
                            () {
                              data[index].model =
                                  MyControllers.controllerModel.text;
                              data[index].cpu =
                                  MyControllers.controllerCpu.text;
                              data[index].ram =
                                  MyControllers.controllerRam.text;
                              data[index].display =
                                  MyControllers.controllerModel.text;
                              data[index].released =
                                  MyControllers.controllerReleased.text;
                              data[index].price =
                                  MyControllers.controllerPrice.text;
                              MyControllers.controllerClear();
                              ShowToast.getMyToast(
                                  message: "Information was edited");
                              Navigator.of(context).pop();
                              setState(() {});
                            },
                            data[index],
                            true,
                            MediaQuery.of(context).size.width * 0.75.toDouble(),
                            context,
                            "Edit information",
                          );
                        },
                      ),
                    );
                  })),
    ));
  }
}
