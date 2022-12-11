import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
import 'package:mysticmandala/Source%20Code/utils/assetpaths.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../Dashboard/view/dashboard.dart';
import '../../../meditationp22.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';
import '../../Media/view/media.dart';
import '../../Profile Settings/view/profflsettings.dart';

class MediMusic extends StatefulWidget {
  MediMusic({Key? key}) : super(key: key);

  @override
  State<MediMusic> createState() => _MediMusicState();
}

bool isLoading = true;

class _MediMusicState extends State<MediMusic> {
  void initState() {
    super.initState();
    isLoading = true;
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

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
      backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
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
                Get.off(HomePage());
              }
              break;
            case 1:
              Get.off(MeditationPage());
              break;
            case 2:
              Get.off(Dashboard());
              break;
            case 3:
              Get.off(Media());
              break;
            case 4:
              Get.off(ProfileSettings());
              break;
          }
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.LIGHT_ORANGE_COLOR,
            child: WebView(
              backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
              initialUrl:
                  'https://mysticmandala.app/audio-category-meditation/',
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
          ),
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
          //         padding:
          //             const EdgeInsets.only(left: 22.0, right: 24.0, top: 10.0),
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
          //               text: "AUDIO",
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
          // ),
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
          //         padding:
          //             const EdgeInsets.only(left: 22.0, right: 5.0, top: 5.0),
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
          //                     scale: 1.0,
          //                   ));
          //             }),
          //             Spacer(),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 40.0),
          //               child: CustomTextWidget(
          //                 text: "AUDIO",
          //                 Text_Color: AppColors.BLACK_COLOR,
          //                 Text_fontSize: 1.4,
          //                 Text_fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //             Spacer(),
          //             InkWell(
          //               onTap: () async {
          //                 Get.back();
          //               },
          //               child: Container(
          //                 width: 72,
          //                 decoration: const BoxDecoration(
          //                   color: Colors.transparent,
          //                 ),
          //                 alignment: Alignment.center,
          //                 child: Image.asset(
          //                   AssetPaths.WHITE_BACK_BTN_IMAGE,
          //                   scale: 1.2,
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          CustomAppBar(
            text: "AUDIO",
          ),
          //
          // Padding(
          //   padding: const EdgeInsets.only(top: 40.0, left: 30.0),
          //   child: InkWell(
          //       onTap: () {
          //         Get.back();
          //       },
          //       child: Image.asset(AssetPaths.BACK_ICON)),
          // ),
          isLoading == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(),
        ],
      ),
    );
  }
}
