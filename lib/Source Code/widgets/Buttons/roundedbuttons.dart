import 'package:flutter/material.dart';

import '../../Utils/appstrings.dart';
import '../../utils/appcolors.dart';
import '../Text/customText.dart';

class RoundedButtons extends StatelessWidget {
  final String btnText;
  const RoundedButtons({Key? key, required this.btnText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 35.0,
      decoration: BoxDecoration(
        color: AppColors.ORANGE_COLOR,
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: CustomTextWidget(
          text: btnText,
          Text_Color: AppColors.WHITE_COLOR,
          Text_fontSize: 1.2,
          Text_fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
