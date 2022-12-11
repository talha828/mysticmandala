import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
import 'package:mysticmandala/Source%20Code/utils/appstrings.dart';
import 'package:mysticmandala/Source%20Code/widgets/Text%20Fields/customTextField.dart';
import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';

import '../../../utils/assetpaths.dart';
import '../../../utils/newpassValidation.dart';
import '../../../widgets/Buttons/customButtons.dart';

class ChangePassScreen extends StatefulWidget {
  ChangePassScreen({Key? key}) : super(key: key);

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  TextEditingController newpass = TextEditingController();
  TextEditingController NewConfirmpass = TextEditingController();
  final NewPassVal = Get.put(NewPassValidation());
  bool _isHidden = true;
  bool _isHidden1 = true;

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
                        text: AppStrings.ENTER_NEW_PASSWORD,
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
                            preffixIcon: Icon(Icons.lock),
                            field_Hint_Text: AppStrings.ENTER_NEWPASS_HINT_TEXT,
                            Keyboard_Type: TextInputType.visiblePassword,
                            Field_controller: newpass,
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
                            field_Hint_Text: AppStrings.CONFIRM_PASS_HINT_TEXT,
                            Keyboard_Type: TextInputType.visiblePassword,
                            Obscure_Text: _isHidden1,
                            Field_controller: NewConfirmpass,
                            EyesuffixIcon: InkWell(
                                onTap: _togglePasswordView1,
                                child: Icon(
                                  _isHidden1
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.BLACK_COLOR,
                                )),
                            field_BgColor: Colors.transparent,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 85.0, right: 85.0, top: 30.0, bottom: 25.0),
                        child: GeneralButton(
                          Btn_Background_color: AppColors.ORANGE_COLOR,
                          Btn_TextColor: AppColors.WHITE_COLOR,
                          Btn_TextName: AppStrings.CONFIRM_TEXT,
                          //font_weight: FontWeight.bold,
                          ontapBtn: () {
                            //     NewPassVal.NewPassVal(newpass.text, NewConfirmpass.text);
                            Get.toNamed('/Login');
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

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _togglePasswordView1() {
    setState(() {
      _isHidden1 = !_isHidden1;
    });
  }
}
