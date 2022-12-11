import 'package:flutter/material.dart';

import '../../../../utils/appcolors.dart';
import '../../../../utils/assetpaths.dart';
import '../../../../widgets/Buttons/outlinebuttons.dart';
import '../../../../widgets/Buttons/roundedbuttons.dart';
import '../../../../widgets/Text/customText.dart';

class yoursession extends StatelessWidget {
  const yoursession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.50,
        width: double.infinity,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) => Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: InkWell(
              onTap: () => print("ciao"),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CustomTextWidget(
                      text: "Class Name",
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontWeight: FontWeight.bold,
                      Text_fontSize: 1.4,
                    ),
                    Spacer(),
                    CustomTextWidget(
                      text: "Duration    :   45 mins",
                      Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                      Text_fontWeight: FontWeight.bold,
                      Text_fontSize: 1.2,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                          text: "Status        :   Not Completed",
                          Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                          Text_fontWeight: FontWeight.bold,
                          Text_fontSize: 1.2,
                        ),
                        Spacer(),
                        Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.BLACK_COLOR.withOpacity(0.5),
                                width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(32.0),
                            ),
                          ),
                          child: Center(
                            child: CustomTextWidget(
                              text: "Schedules",
                              Text_Color:
                                  AppColors.BLACK_COLOR.withOpacity(0.5),
                              Text_fontSize: 1.0,
                              Text_fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
