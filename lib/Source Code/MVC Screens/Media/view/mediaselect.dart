import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/customButtons.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text Fields/customTextField.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';

class MediaSelect extends StatefulWidget {
  const MediaSelect({Key? key}) : super(key: key);

  @override
  State<MediaSelect> createState() => _MediaSelectState();
}

class _MediaSelectState extends State<MediaSelect> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
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

  @override
  Widget build(BuildContext context) {
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
            //             Padding(
            //               padding: const EdgeInsets.only(right: 20.0),
            //               child: CustomTextWidget(
            //                 text: "MEDIA",
            //                 Text_Color: AppColors.BLACK_COLOR,
            //                 Text_fontSize: 1.4,
            //                 Text_fontWeight: FontWeight.bold,
            //               ),
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
              text: "MEDIA",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 80.0,
                      left: 80.0,
                      right: 80.0,
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed('/Videos');
                            },
                            child: Container(
                              height: 125.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AssetPaths.LIVE_STREAMING),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/Playlist');
                            },
                            child: Container(
                              height: 125.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AssetPaths.UPLOAD_VIDEOS),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/MandalaVideos');
                            },
                            child: Container(
                              height: 125.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AssetPaths.MYSTIC_VIDEOS),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Get.toNamed('/Membership');
                  //   },
                  //   child: Container(
                  //     height: 125.0,
                  //     width: double.infinity,
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage(AssetPaths.CATEGORY_IMAGE),
                  //         fit: BoxFit.fill,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          )
        ])
      ]),
    );
  }
}
