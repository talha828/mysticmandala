import 'package:flutter/material.dart';

import '../../Utils/appstrings.dart';
import '../../utils/appcolors.dart';
import '../Text/customText.dart';

class OutlineButtons extends StatelessWidget {
  const OutlineButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 40.0,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.ORANGE_COLOR, width: 2),
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      child: Center(
        child: CustomTextWidget(
          text: "Buy ticket",
          Text_Color: AppColors.BLACK_COLOR,
          Text_fontSize: 1.0,
          Text_fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
