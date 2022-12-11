import 'package:flutter/material.dart';

import '../../Utils/appstrings.dart';
import '../../utils/appcolors.dart';
import '../Text/customText.dart';

class CustomTopContainer extends StatelessWidget {
  final String MyText;
  final double? Text_fontSize;
  const CustomTopContainer({Key? key, required this.MyText, this.Text_fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      width: double.infinity,
      child: Center(
        child: CustomTextWidget(
          text: MyText,
          Text_Color: AppColors.WHITE_COLOR,
          Text_fontSize: 1.4,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32.0),
          bottomRight: Radius.circular(32.0),
        ),
        color: AppColors.ORANGE_COLOR,
      ),
    );
  }
}
