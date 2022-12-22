import 'dart:io';

import 'package:dob_input_field/dob_input_field.dart';
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
import '../controller/controller.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController DOB = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController Confirmpassword = TextEditingController();
  final SignAuth = Get.put(SignupController());
  bool _isHidden = true;
  String? gender;
  bool check1 = false;

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
                  const EdgeInsets.only(right: 20.0, left: 12.0, top: 12.0),
              child: SingleChildScrollView(
                //   physics: BouncingScrollPhysics(),
                child: Center(
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // _imageFile == null
                          //      ?
                          Container(
                            width: 100,
                            height: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        AssetPaths.DRAW_PROFILE_IMAGE),
                                    scale: 6),
                              ),
                            ),
                          ),
                          //     : Container(
                          //   width: 150,
                          //   height: 150,
                          //   decoration: BoxDecoration(
                          //     border: Border.all(
                          //         width: 3,
                          //         color: Theme.of(context)
                          //             .scaffoldBackgroundColor),
                          //     boxShadow: [
                          //       BoxShadow(
                          //           spreadRadius: 2,
                          //           blurRadius: 10,
                          //           color: Colors.black.withOpacity(0.1),
                          //           offset: Offset(0, 10))
                          //     ],
                          //     shape: BoxShape.rectangle,
                          //     image: DecorationImage(
                          //         fit: BoxFit.cover,
                          //         image: FileImage(File(_imageFile!.path)),
                          //         scale: 6),
                          //   ),
                          // ),
                          Positioned(
                              bottom: -6.0,
                              right: -12.0,
                              child: InkWell(
                                onTap: () {
                                  // showModalBottomSheet(
                                  //     backgroundColor: AppColors.PRIMARY_COLOR,
                                  //     context: context,
                                  //     builder: ((builder) => CustombottomSheet())
                                  // );
                                },
                                child: Container(
                                    height: 52.0,
                                    width: 32.0,
                                    decoration: BoxDecoration(
                                      color: AppColors.LIGHT_ORANGE_COLOR,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: AppColors.BLACK_COLOR,
                                    )),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CustomTextWidget(
                        text: AppStrings.UPLOAD_PROFILE_TEXT,
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.2,
                        Text_fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 5.0,
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
                            preffixIcon: Icon(Icons.person),
                            field_Hint_Text: AppStrings.FIRST_NAME_HINT_TEXT,
                            Keyboard_Type: TextInputType.name,
                            field_BgColor: Colors.transparent,
                            Field_controller: firstname,
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
                            preffixIcon: Icon(Icons.person),
                            field_Hint_Text: AppStrings.LAST_NAME_HINT_TEXT,
                            Keyboard_Type: TextInputType.name,
                            field_BgColor: Colors.transparent,
                            Field_controller: lastname,
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
                            preffixIcon: Icon(Icons.calendar_month),
                            field_Hint_Text: AppStrings.DOB_HINT_TEXT,
                            Keyboard_Type: TextInputType.visiblePassword,
                            field_BgColor: Colors.transparent,
                            Field_controller: DOB,
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
                            preffixIcon: Icon(Icons.phone),
                            field_Hint_Text: AppStrings.PHONE_HINT_TEXT,
                            Keyboard_Type: TextInputType.phone,
                            field_BgColor: Colors.transparent,
                            Field_controller: number,
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
                            Field_controller: Confirmpassword,
                          ),
                        ],
                      ),
                      Container(
                        height: 50.0,
                        width: double.infinity,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 5.0),
                          child: Row(
                            children: [
                              CustomTextWidget(
                                text: "Gender",
                                Text_Color: AppColors.BLACK_COLOR,
                                Text_fontSize: 1.2,
                              ),
                              Container(
                                width: 124.0,
                                child: RadioListTile(
                                  title: Text("Male"),
                                  value: "male",
                                  groupValue: gender,
                                  activeColor: AppColors.ORANGE_COLOR,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 150.0,
                                child: RadioListTile(
                                  title: Text("Female"),
                                  value: "female",
                                  groupValue: gender,
                                  activeColor: AppColors.ORANGE_COLOR,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value.toString();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: check1,
                              checkColor: AppColors.WHITE_COLOR,
                              activeColor: AppColors.ORANGE_COLOR,
                              onChanged: (bool? checked) {
                                setState(() {
                                  check1 = checked!;
                                });
                              }),
                          InkWell(
                            child: CustomTextWidget(
                              text: AppStrings.TERMSCONDITION_TEXT,
                              Text_Color: AppColors.BLACK_COLOR,
                              Text_fontSize: 1.1,
                              Text_fontWeight: FontWeight.bold,
                            ),
                            onTap: () {
                              Get.toNamed('/TermsScreen');
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 85.0, right: 85.0, top: 12.0, bottom: 25.0),
                        child: GeneralButton(
                          Btn_Background_color: AppColors.ORANGE_COLOR,
                          Btn_TextColor: AppColors.WHITE_COLOR,
                          Btn_TextName: AppStrings.SIGN_UP_TEXT,
                          //font_weight: FontWeight.bold,
                          ontapBtn: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            print(firstname.text);
                            print(lastname.text);
                            print(email.text);
                            print(DOB.text);
                            print(number.text);
                            print(password.text);
                            print(password.text);
                            print(gender);
                            SignAuth.CreateNewUser(
                              firstname.text,
                              lastname.text,
                              email.text,
                              password.text,
                              number.text,
                              gender!,
                              DOB.text,
                            );
                          },
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/Login');
                        },
                        child: CustomTextWidget(
                          text: "Already have an account? Login here",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                          Text_fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
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
}
