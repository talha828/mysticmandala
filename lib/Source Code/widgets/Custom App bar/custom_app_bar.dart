import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/utils/assetpaths.dart';

import '../../Utils/appstrings.dart';
import '../../utils/appcolors.dart';
import '../Text/customText.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  const CustomAppBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: double.infinity,
      decoration: new BoxDecoration(
          color: AppColors.ORANGE_COLOR, //new Color.fromRGBO(255, 0, 0, 0.0),
          borderRadius: new BorderRadius.only(
              bottomLeft: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0))),
      child: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(right: 5.0, top: 8.0),
            child: Row(
              children: [
                Builder(builder: (context) {
                  return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        width: 72,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          AssetPaths.DRAWER_ICON,
                          scale: 1.0,
                        ),
                      ));
                }),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: AppColors.BLACK_COLOR,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  // child: CustomTextWidget(
                  //   text: text,
                  //   Text_Color: AppColors.BLACK_COLOR,
                  //   Text_fontSize: 1.4,
                  //   Text_fontWeight: FontWeight.bold,
                  // ),
                ),
                Spacer(),
                InkWell(
                  onTap: () async {
                    Get.back();
                  },
                  child: Container(
                    width: 72,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      AssetPaths.WHITE_BACK_BTN_IMAGE,
                      scale: 1.2,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
