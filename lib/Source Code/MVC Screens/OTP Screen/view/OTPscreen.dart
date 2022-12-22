// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
// import 'package:mysticmandala/Source%20Code/utils/appstrings.dart';
// import 'package:mysticmandala/Source%20Code/widgets/Text%20Fields/customTextField.dart';
// import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';
//
// import '../../../utils/OTPVal;idation.dart';
// import '../../../utils/assetpaths.dart';
// import '../../../widgets/Buttons/customButtons.dart';
//
// class OTPScreen extends StatefulWidget {
//   OTPScreen({Key? key}) : super(key: key);
//
//   @override
//   State<OTPScreen> createState() => _OTPScreenState();
// }
//
// class _OTPScreenState extends State<OTPScreen> {
//   TextEditingController otp = TextEditingController();
//   final OTPVal = Get.put(OTPValidation());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(AssetPaths.LOGIN_BG_IMAGE),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 20.0, left: 12.0),
//               child: SingleChildScrollView(
//                 physics: BouncingScrollPhysics(),
//                 child: Center(
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         AssetPaths.LOGIN_LOGO_IMAGE,
//                         scale: 1.6,
//                       ),
//                       SizedBox(
//                         height: 30.0,
//                       ),
//                       CustomTextWidget(
//                         text: AppStrings.VERIFICATION_TEXT,
//                         Text_Color: AppColors.BLACK_COLOR,
//                         Text_fontSize: 1.6,
//                         Text_fontWeight: FontWeight.bold,
//                       ),
//                       SizedBox(
//                         height: 50.0,
//                       ),
//                       Stack(
//                         children: [
//                           Positioned(
//                             left: 50.0,
//                             top: 25.0,
//                             child: Image.asset(
//                               AssetPaths.FIELD_LINE,
//                               scale: 1,
//                             ),
//                           ),
//                           CustomTextField(
//                             preffixIcon: Image.asset(
//                               AssetPaths.OTP_ICON,
//                               scale: 1.4,
//                             ),
//                             field_Hint_Text: AppStrings.ENTER_CODE_HINT_TEXT,
//                             Keyboard_Type: TextInputType.number,
//                             field_BgColor: Colors.transparent,
//                             Field_controller: otp,
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 40.0,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             left: 85.0, right: 85.0, top: 30.0, bottom: 25.0),
//                         child: GeneralButton(
//                           Btn_Background_color: AppColors.ORANGE_COLOR,
//                           Btn_TextColor: AppColors.WHITE_COLOR,
//                           Btn_TextName: AppStrings.VERIFYTEXT,
//                           ontapBtn: () {
//                             //   OTPVal.OTPVal(otp.text);
//                             Get.toNamed('/ChangePass');
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/customButtons.dart';
import '../../../widgets/Text/customText.dart';
import '../controller/verify.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController OTPCode = TextEditingController();
  final otp = Get.put(VerifyController());

  bool hasError = false;
  StreamController<ErrorAnimationType>? errorController;

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
              padding:
                  const EdgeInsets.only(right: 20.0, left: 12.0, top: 20.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        AssetPaths.LOGIN_LOGO_IMAGE,
                        scale: 1.6,
                      ),
                      CustomTextWidget(
                        text: AppStrings.VERIFICATION_TEXT,
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.6,
                        Text_fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      PinCodeTextField(
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          color: AppColors.BLACK_COLOR,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 4,
                        obscureText: false,
                        obscuringCharacter: '*',
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 4) {
                            return "Enter 4 Numbers";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.circle,
                          fieldHeight: 50,
                          fieldWidth: 50,
                          activeColor: Colors.grey.withOpacity(0.2),
                          inactiveFillColor: Colors.grey.withOpacity(0.2),
                          inactiveColor: Colors.grey.withOpacity(0.2),
                          selectedFillColor: Colors.grey.withOpacity(0.2),
                          selectedColor: Colors.grey.withOpacity(0.2),
                          activeFillColor: hasError
                              ? Colors.orange
                              : Colors.grey.withOpacity(0.2),
                        ),
                        cursorColor: AppColors.ORANGE_COLOR,
                        animationDuration: Duration(milliseconds: 300),
                        textStyle: TextStyle(fontSize: 20, height: 1.6),
                        enableActiveFill: true,
                        errorAnimationController: errorController,
                        controller: OTPCode,
                        keyboardType: TextInputType.number,
                        onCompleted: (v) {
                          print("Completed");
                        },
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            //currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          return true;
                        },
                      ),
                      SizedBox(
                        height: 25.0,
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
                            FocusManager.instance.primaryFocus?.unfocus();
                            otp.VerifyCode(OTPCode.text);
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
