import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
import 'package:mysticmandala/Source%20Code/utils/appstrings.dart';
import 'package:mysticmandala/Source%20Code/widgets/Text%20Fields/customTextField.dart';
import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';

import '../../../utils/OTPVal;idation.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/customButtons.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otp = TextEditingController();
  final OTPVal = Get.put(OTPValidation());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetPaths.LOGIN_BG_IMAGE),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 12.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        AssetPaths.LOGIN_LOGO_IMAGE,
                        scale: 1.6,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      CustomTextWidget(
                        text: AppStrings.VERIFICATION_TEXT,
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.6,
                        Text_fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Stack(
                        children: [
                          Positioned(
                            left: 50.0,
                            top: 25.0,
                            child: Image.asset(
                              AssetPaths.FIELD_LINE,
                              scale: 1,
                            ),
                          ),
                          CustomTextField(
                            preffixIcon: Image.asset(
                              AssetPaths.OTP_ICON,
                              scale: 1.4,
                            ),
                            field_Hint_Text: AppStrings.ENTER_CODE_HINT_TEXT,
                            Keyboard_Type: TextInputType.number,
                            field_BgColor: Colors.transparent,
                            Field_controller: otp,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 85.0, right: 85.0, top: 30.0, bottom: 25.0),
                        child: GeneralButton(
                          Btn_Background_color: AppColors.ORANGE_COLOR,
                          Btn_TextColor: AppColors.WHITE_COLOR,
                          Btn_TextName: AppStrings.VERIFYTEXT,
                          ontapBtn: () {
                            //   OTPVal.OTPVal(otp.text);
                            Get.toNamed('/ChangePass');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
