import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/customButtons.dart';
import '../../../widgets/Text Fields/customTextField.dart';
import '../../../widgets/Text/customText.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetPaths.LOGIN_BG_IMAGE),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(children: [
          Stack(children: [
            Container(
              height: 70.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                  color: AppColors
                      .ORANGE_COLOR, //new Color.fromRGBO(255, 0, 0, 0.0),
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0))),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10.0),
                    child: Row(
                      children: [
                        // Builder(
                        //   builder: (context) => GestureDetector(
                        //     // child: Image.asset(
                        //     //   AssetPaths.DRAWER_ICON,
                        //     //   scale: 2.5,
                        //     // ),
                        //     onTap: () {},
                        //     //  ZoomDrawer.of(context)?.toggle(),
                        //     // _scaffoldKey.currentState?.openDrawer();
                        //   ),
                        // ),
                        Image.asset(
                          AssetPaths.DRAWER_ICON,
                          scale: 1,
                        ),
                        Spacer(),
                        CustomTextWidget(
                          text: "Category",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.4,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        Spacer(),
                        Icon(Icons.settings),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(Icons.email),
                        // InkWell(
                        //   child: Image.asset(
                        //     AssetPaths.EMAIL_ICON,
                        //     scale: 2.5,
                        //   ),
                        //   onTap: () {},
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          AssetPaths.SLEEP_IMAGE,
                          scale: 1.2,
                        ),
                        Image.asset(
                          AssetPaths.WORK_IMAGE,
                          scale: 1.2,
                        ),
                        Image.asset(
                          AssetPaths.INSTRUMENTS_IMAGE,
                          scale: 1.2,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          AssetPaths.RELAX_IMAGE,
                          scale: 1.2,
                        ),
                        Image.asset(
                          AssetPaths.NATURE_IMAGE,
                          scale: 1.2,
                        ),
                        Image.asset(
                          AssetPaths.MEDITATION_RECT_IMAGE,
                          scale: 1.2,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            AssetPaths.HEALTH_IMAGE,
                            scale: 1.2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Container(
                      height: 132.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AssetPaths.CATEGORY_IMAGE),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/Membership');
                      },
                      child: Container(
                        width: 180.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: AppColors.ORANGE_COLOR,
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: CustomTextWidget(
                            text: "Subscribe Now",
                            Text_Color: AppColors.WHITE_COLOR,
                            Text_fontSize: 1.0,
                            Text_fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ])
      ]),
    );
  }
}
