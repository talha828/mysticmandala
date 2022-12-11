import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/outlinebuttons.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';

class MembershipPlanScreen extends StatefulWidget {
  const MembershipPlanScreen({Key? key}) : super(key: key);

  @override
  State<MembershipPlanScreen> createState() => _MembershipPlanScreenState();
}

class _MembershipPlanScreenState extends State<MembershipPlanScreen> {
  bool check1 = false;
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    const TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    const List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: optionStyle,
      ),
      Text(
        'Index 1: Business',
        style: optionStyle,
      ),
      Text(
        'Index 2: School',
        style: optionStyle,
      ),
      Text(
        'Index 3: Settings',
        style: optionStyle,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      drawer: Drawer(
        child: drawer(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: AppColors.ORANGE_COLOR,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetPaths.HOME_ICON),
              color: Colors.black,
              size: 24.0,
            ),
            label: 'Home',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetPaths.MEDI_ICON),
              color: Colors.black,
              size: 24.0,
            ),
            label: 'Meditation',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetPaths.DASHBOARD_ICON),
              color: Colors.black,
              size: 24.0,
            ),
            label: 'Dashboard',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetPaths.PLAY_ICON),
              color: Colors.black,
              size: 24.0,
            ),
            label: 'Media',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Account',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (int index) {
          switch (index) {
            case 0:
              // only scroll to top when current index is selected.
              if (_selectedIndex == index) {
                Get.toNamed('/Home');
              }
              break;
            case 1:
              Get.toNamed('/MeditationPage');
              break;
            case 2:
              Get.toNamed('/Dashboard');
              break;
            case 3:
              Get.toNamed('/Media');
              break;
            case 4:
              Get.toNamed('/ProfileSettings');
              break;
          }
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetPaths.LOGIN_BG_IMAGE),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(children: [
          Stack(children: [
            // Container(
            //   height: 75.0,
            //   width: double.infinity,
            //   decoration: new BoxDecoration(
            //       color: AppColors
            //           .ORANGE_COLOR, //new Color.fromRGBO(255, 0, 0, 0.0),
            //       borderRadius: new BorderRadius.only(
            //           bottomLeft: const Radius.circular(10.0),
            //           bottomRight: const Radius.circular(10.0))),
            //   child: SafeArea(
            //     child: Align(
            //       alignment: Alignment.topCenter,
            //       child: Padding(
            //         padding: const EdgeInsets.only(
            //             left: 22.0, right: 24.0, top: 10.0),
            //         child: Row(
            //           children: [
            //             // Builder(
            //             //   builder: (context) => GestureDetector(
            //             //     // child: Image.asset(
            //             //     //   AssetPaths.DRAWER_ICON,
            //             //     //   scale: 2.5,
            //             //     // ),
            //             //     onTap: () {},
            //             //     //  ZoomDrawer.of(context)?.toggle(),
            //             //     // _scaffoldKey.currentState?.openDrawer();
            //             //   ),
            //             // ),
            //             Builder(builder: (context) {
            //               return GestureDetector(
            //                   onTap: () {
            //                     Scaffold.of(context).openDrawer();
            //                   },
            //                   child: Image.asset(
            //                     AssetPaths.DRAWER_ICON,
            //                     scale: 1,
            //                   ));
            //             }),
            //             Spacer(),
            //             CustomTextWidget(
            //               text: "MEMBERSHIP PLAN",
            //               Text_Color: AppColors.BLACK_COLOR,
            //               Text_fontSize: 1.4,
            //               Text_fontWeight: FontWeight.bold,
            //             ),
            //             Spacer(),
            //             InkWell(
            //               onTap: () {
            //                 Get.back();
            //               },
            //               child: Image.asset(
            //                 AssetPaths.WHITE_BACK_BTN_IMAGE,
            //                 scale: 1.0,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // )
            CustomAppBar(
              text: "MEMBERSHIP PLAN",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset(
                    AssetPaths.LOGIN_LOGO_IMAGE,
                    scale: 1.8,
                  ),
                  Container(
                    height: 80.0,
                    color: AppColors.ORANGE_COLOR,
                    width: double.infinity,
                    child: Center(
                      child: CustomTextWidget(
                        text:
                            "Get full access to Mystic Mandala \nHeal your Soul and Body Now",
                        Text_Color: AppColors.WHITE_COLOR,
                        Text_fontSize: 1.4,
                        Text_fontWeight: FontWeight.bold,
                        Text_Align: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetPaths.TICK_ICON,
                        scale: 0.8,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CustomTextWidget(
                        text: "7- Day free Trial",
                        Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                        Text_fontSize: 1.0,
                        Text_fontWeight: FontWeight.bold,
                        Text_Align: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetPaths.TICK_ICON,
                        scale: 0.8,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CustomTextWidget(
                        text: "New Daily Content",
                        Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                        Text_fontSize: 1.0,
                        Text_fontWeight: FontWeight.bold,
                        Text_Align: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  CustomTextWidget(
                    text: "First 7 days Free !",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                    Text_Align: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14.0, right: 14.0, top: 8.0, bottom: 14.0),
                    child: Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.BLACK_COLOR,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Center(
                        child: CustomTextWidget(
                          text: "Then \$ 7.99 / Month",
                          Text_Color: AppColors.WHITE_COLOR,
                          Text_fontSize: 1.4,
                          Text_fontWeight: FontWeight.bold,
                          Text_Align: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  CustomTextWidget(
                    text: "Privacy Policy \n Terms and Conditions",
                    Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                    Text_fontSize: 1.2,
                    Text_fontWeight: FontWeight.bold,
                    Text_Align: TextAlign.center,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 80.0, right: 80.0, top: 16.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('/CheckoutPage');
                      },
                      child: Container(
                        height: 50.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.ORANGE_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(28.0))),
                        child: Center(
                          child: CustomTextWidget(
                            text: "Subscribe",
                            Text_Color: AppColors.WHITE_COLOR,
                            Text_fontSize: 1.2,
                            Text_fontWeight: FontWeight.bold,
                            Text_Align: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5.0,
                  // ),
                  // InkWell(
                  //   onTap: () async {
                  //     Get.back();
                  //   },
                  //   child: Container(
                  //     width: 80,
                  //     height: 80.0,
                  //     decoration: const BoxDecoration(),
                  //     alignment: Alignment.center,
                  //     child: Image.asset(
                  //       AssetPaths.WHITE_BACK_BTN_IMAGE,
                  //       scale: 0.8,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 60.0,
                  ),
                ],
              ),
            ),
          ),
        ])
      ]),
    );
  }
}
