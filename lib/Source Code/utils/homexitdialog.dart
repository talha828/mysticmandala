import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import '../widgets/Text/customText.dart';
import 'appcolors.dart';
import 'appstrings.dart';

Future<void> showMyDialog(context) async {
  return showAnimatedDialog<void>(
      animationType: DialogTransitionType.scaleRotate,
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(22.0))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text: "Are you sure",
                      Text_Color: AppColors.ORANGE_COLOR,
                      Text_fontSize: 1.4,
                      Text_fontWeight: FontWeight.bold,
                    ),
                    CustomTextWidget(
                      text: "DO You want to exit from App?",
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontSize: 1.4,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        child: CustomTextWidget(
                          text: "NO",
                          Text_Color: AppColors.WHITE_COLOR,
                          Text_fontSize: 1.2,
                          Text_fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.ORANGE_COLOR,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.0)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                          exit(0);
                        },
                        child: CustomTextWidget(
                          text: "YES",
                          Text_Color: AppColors.WHITE_COLOR,
                          Text_fontSize: 1.2,
                          Text_fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      });
}
