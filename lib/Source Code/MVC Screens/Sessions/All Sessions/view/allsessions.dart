import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/assetpaths.dart';
import '../../../../widgets/Buttons/outlinebuttons.dart';
import '../../../../widgets/Buttons/roundedbuttons.dart';
import '../../../../widgets/Text/customText.dart';

class AllSessions extends StatelessWidget {
  const AllSessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 12.0, right: 12.0),
        child: Column(
          children: [
            Container(
              child: Column(
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.SESSION_1_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  CustomTextWidget(
                    text: "Vastu & Feng Shui - Zoom or Phone",
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  CustomTextWidget(
                    text: "1 hr | \$425",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                    Text_fontSize: 1.2,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SessionSchedule');
                        },
                        child: RoundedButtons(
                          btnText: "Book",
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/ServiceDetails');
                        },
                        child: RoundedButtons(
                          btnText: "Details",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.SESSION_7_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  CustomTextWidget(
                    text: "Vastu & Feng Shui - Zoom or Phone",
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  CustomTextWidget(
                    text: "1 hr | \$425",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                    Text_fontSize: 1.2,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SessionSchedule');
                        },
                        child: RoundedButtons(
                          btnText: "Book",
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/ServiceDetails');
                        },
                        child: RoundedButtons(
                          btnText: "Details",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.SESSION_3_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  CustomTextWidget(
                    text: "Vastu & Feng Shui - Zoom or Phone",
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  CustomTextWidget(
                    text: "1 hr | \$425",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                    Text_fontSize: 1.2,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SessionSchedule');
                        },
                        child: RoundedButtons(
                          btnText: "Book",
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/ServiceDetails');
                        },
                        child: RoundedButtons(
                          btnText: "Details",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                // 1,2,3,7
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.SESSION_2_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  CustomTextWidget(
                    text: "Vastu & Feng Shui - Zoom or Phone",
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  CustomTextWidget(
                    text: "1 hr | \$425",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                    Text_fontSize: 1.2,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SessionSchedule');
                        },
                        child: RoundedButtons(
                          btnText: "Book",
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/ServiceDetails');
                        },
                        child: RoundedButtons(
                          btnText: "Details",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                // 1,2,3,7,4,
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.SESSION_4_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  CustomTextWidget(
                    text: "Vastu & Feng Shui - Zoom or Phone",
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  CustomTextWidget(
                    text: "1 hr | \$425",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                    Text_fontSize: 1.2,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SessionSchedule');
                        },
                        child: RoundedButtons(
                          btnText: "Book",
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/ServiceDetails');
                        },
                        child: RoundedButtons(
                          btnText: "Details",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                // 1,2,3,7,4,5,
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.SESSION_5_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  CustomTextWidget(
                    text: "Vastu & Feng Shui - Zoom or Phone",
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  CustomTextWidget(
                    text: "1 hr | \$425",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                    Text_fontSize: 1.2,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SessionSchedule');
                        },
                        child: RoundedButtons(
                          btnText: "Book",
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/ServiceDetails');
                        },
                        child: RoundedButtons(
                          btnText: "Details",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                // 1,2,3,7,4,5,6
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.SESSION_8_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  CustomTextWidget(
                    text: "Vastu & Feng Shui - Zoom or Phone",
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  CustomTextWidget(
                    text: "1 hr | \$425",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                    Text_fontSize: 1.2,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SessionSchedule');
                        },
                        child: RoundedButtons(
                          btnText: "Book",
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/ServiceDetails');
                        },
                        child: RoundedButtons(
                          btnText: "Details",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                // 1,2,3,7,4,5,6
                //  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.SESSION_9_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  CustomTextWidget(
                    text: "Vastu & Feng Shui - Zoom or Phone",
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  CustomTextWidget(
                    text: "1 hr | \$425",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                    Text_fontSize: 1.2,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SessionSchedule');
                        },
                        child: RoundedButtons(
                          btnText: "Book",
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/ServiceDetails');
                        },
                        child: RoundedButtons(
                          btnText: "Details",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    //   SizedBox(
    //     height: MediaQuery.of(context).size.height * 0.90,
    //     width: double.infinity,
    //     child:
    //     ListView.builder(
    //       physics: const BouncingScrollPhysics(),
    //       shrinkWrap: true,
    //       scrollDirection: Axis.vertical,
    //       itemCount: 1,
    //       itemBuilder: (BuildContext context, int index) => Container(
    //         child: Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: Container(
    //             color: Colors.red,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Container(
    //                   height: 200.0,
    //                   width: double.infinity,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.all(Radius.circular(8.0)),
    //                     image: DecorationImage(
    //                       image: AssetImage(AssetPaths.SESSION_1_IMAGE),
    //                       fit: BoxFit.fill,
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 12.0,
    //                 ),
    //                 CustomTextWidget(
    //                   text: "Vastu & Feng Shui - Zoom or Phone",
    //                   Text_Color: AppColors.BLACK_COLOR,
    //                   Text_fontSize: 1.2,
    //                   Text_fontWeight: FontWeight.bold,
    //                 ),
    //                 CustomTextWidget(
    //                   text: "1 hr | \$425",
    //                   Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
    //                   Text_fontSize: 1.2,
    //                 ),
    //                 SizedBox(
    //                   height: 12.0,
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     InkWell(
    //                       onTap: () {
    //                         Get.toNamed('/SessionSchedule');
    //                       },
    //                       child: RoundedButtons(
    //                         btnText: "Book",
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 40.0,
    //                     ),
    //                     InkWell(
    //                       onTap: () {
    //                         Get.toNamed('/ServiceDetails');
    //                       },
    //                       child: RoundedButtons(
    //                         btnText: "Details",
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 SizedBox(
    //                   height: 8.0,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     )
    // );
  }
}
