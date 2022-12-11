import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
import 'package:mysticmandala/Source%20Code/utils/appstrings.dart';
import 'package:mysticmandala/Source%20Code/widgets/Text%20Fields/customTextField.dart';
import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';

import '../../../utils/assetpaths.dart';
import '../../../utils/loginvalidation.dart';
import '../../../widgets/Buttons/customButtons.dart';
import '../controller/logincontroller.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final LoginAuth = Get.put(AuthController());
  bool _isHidden = true;

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
                            preffixIcon: Icon(Icons.email),
                            field_Hint_Text: AppStrings.EMAIL_HINT_TEXT,
                            Keyboard_Type: TextInputType.emailAddress,
                            field_BgColor: Colors.transparent,
                            Field_controller: email,
                          ),
                        ],
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
                            preffixIcon: Icon(Icons.lock),
                            field_Hint_Text: AppStrings.PASSWORD_HINT_TEXT,
                            Keyboard_Type: TextInputType.visiblePassword,
                            Obscure_Text: _isHidden,
                            EyesuffixIcon: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  _isHidden
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.BLACK_COLOR,
                                )),
                            field_BgColor: Colors.transparent,
                            Field_controller: password,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 85.0, right: 85.0, top: 30.0, bottom: 30.0),
                        child: GeneralButton(
                          Btn_Background_color: AppColors.ORANGE_COLOR,
                          Btn_TextColor: AppColors.WHITE_COLOR,
                          Btn_TextName: AppStrings.LOGIN_TEXT,
                          //font_weight: FontWeight.bold,
                          ontapBtn: () {
                            //   LoginVal.LoginVal(email.text, password.text);
                            LoginAuth.LoginUser(email.text, password.text);
                            // print(email.text);
                            // Get.toNamed('/Home');
                          },
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/Forgot');
                        },
                        child: CustomTextWidget(
                          text: AppStrings.FORGOT_TEXT,
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/SignupScreen');
                        },
                        child: CustomTextWidget(
                          text: AppStrings.CREATE_NEW_ACCOUNT_TEXT,
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      CustomTextWidget(
                        text: AppStrings.OTHER_LOGINS_TEXT,
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.0,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetPaths.GOOGLE_BTN,
                            scale: 0.8,
                          ),
                          SizedBox(
                            width: 26.0,
                          ),
                          Image.asset(
                            AssetPaths.FB_ICON,
                            scale: 0.8,
                          ),
                          SizedBox(
                            width: 26.0,
                          ),
                          if (Platform.isIOS)
                            Image.asset(
                              AssetPaths.APPLE_BTN,
                              scale: 0.8,
                            ),
                        ],
                      )
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

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
