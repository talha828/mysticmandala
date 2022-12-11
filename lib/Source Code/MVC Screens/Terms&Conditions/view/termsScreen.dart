import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/Utils/appstrings.dart';
import 'package:mysticmandala/Source%20Code/widgets/Custom%20Bar/custombar.dart';
import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';

import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/customButtons.dart';

class TermsCondition extends StatefulWidget {
  TermsCondition({Key? key}) : super(key: key);

  @override
  State<TermsCondition> createState() => _TermsConditionState();
}

enum SingingCharacter { lafayette, jefferson }

class _TermsConditionState extends State<TermsCondition> {
  bool check1 = false;
  SingingCharacter? _character = SingingCharacter.lafayette;
  Future<bool?> WarningMsg(BuildContext context) async {
    //  showMyDialog(context);
  }
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetPaths.LOGIN_BG_IMAGE),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      CustomTopContainer(
                        MyText: "TERMS & CONDITIONS",
                      ),
                    ],
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 18.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(14.0)),
                                          color: AppColors.BLACK_COLOR,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: const CustomTextWidget(
                                            Text_Color: AppColors.WHITE_COLOR,
                                            text:
                                                "Lorem ipsum Nulla facilisi. Sed id nunc aliquam, rhoncus arcu luctus, bibendum ligula. Sed ac congue elit. Donec quis feugiat augue. Cras fringilla, quam vel ornare cursus, enim augue porttitor est, imperdiet malesuada lorem dui a quam. Cras nec risus sed turpis interdum accumsan. Nullam maximus sed arcu in congue. Cras id mauris odio. Praesent lacinia metus sed rutrum aliquet. Sed sed suscipit ipsum. Donec lacinia accumsan magna non facilisis. Sed volutpat volutpat ex ac sagittis. Aenean placerat eros vel iaculis condimentum. Morbi congue orci in erat fringilla blandit. Nunc sodales tellus ut porta vulputate. Donec porttitor orci augue, et cursus ante sagittis vel. Nulla non scelerisque magna, vel fermentum arcu. Etiam interdum venenatis lacus.",
                                            Text_fontSize: 1.2,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 85.0,
                                          right: 85.0,
                                          top: 20.0,
                                          bottom: 25.0),
                                      child: GeneralButton(
                                        Btn_Background_color:
                                            AppColors.ORANGE_COLOR,
                                        Btn_TextColor: AppColors.WHITE_COLOR,
                                        Btn_TextName: "Continue",
                                        //font_weight: FontWeight.bold,
                                        ontapBtn: () {
                                          Get.toNamed('/SignupScreen');
                                        },
                                      ),
                                    ),
                                  ),
                                ]),
                          ))),
                ],
              ),
            ],
          ),
        ),
      );
}
