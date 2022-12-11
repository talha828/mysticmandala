import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../Dashboard/view/dashboard.dart';
import '../../../meditationp22.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text/customText.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../Home/view/home.dart';
import '../../Media/view/media.dart';
import '../../Profile Settings/view/profflsettings.dart';

class Videos extends StatefulWidget {
  Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  late YoutubePlayerController _controller;
  ScrollController? _hideButtonController;
  var _isVisible;
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController?.addListener(() {
      if (_hideButtonController?.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible)
          setState(() {
            _isVisible = false;
            print("**** $_isVisible up");
          });
      }
      if (_hideButtonController?.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_isVisible)
          setState(() {
            _isVisible = true;
            print("**** $_isVisible down");
          });
      }
    });
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
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
        bottomNavigationBar: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: _isVisible ? 70.0 : 12.0,
          child: _isVisible
              ? BottomNavigationBar(
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
                )
              : Container(),
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
              //               text: "LIVE STREAMING",
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
              //             // InkWell(
              //             //   child: Image.asset(
              //             //     AssetPaths.EMAIL_ICON,
              //             //     scale: 2.5,
              //             //   ),
              //             //   onTap: () {},
              //             // ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: _isVisible ? 78.0 : 12.0,
                child: _isVisible
                    ? CustomAppBar(
                        text: "VIDEO",
                      )
                    : Container(),
              )
            ]),
            // YoutubePlayer(
            //   controller: _controller,
            // ),
            // Container(
            //     height: 300.0,
            //     child: WebView(
            //       initialUrl: Uri.dataFromString(
            //               '<html><body><iframe src="//closeradio.tv/mysticmandala/player.htm" width="542" height="640" frameborder="0" scrolling="no" allowfullscreen="allowfullscreen"></iframe></body></html>',
            //               mimeType: 'text/html')
            //           .toString(),
            //

            // //     )),

            ///////////////////////////  ANIMATED CODE ////////////////////////////////////
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  controller: _hideButtonController,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 120.0),
                        child: Container(
                            height: 370.0,
                            color: AppColors.LIGHT_ORANGE_COLOR,
                            child: WebView(
                              backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
                              initialUrl:
                                  'https://closeradio.tv/mysticmandala/player.htm',
                              //    javaScriptMode: JavaScriptMode.unrestricted,
                              javascriptMode: JavascriptMode.unrestricted,
                            )),
                      ),
                    ],
                  ),
                )),
            ///////////////////// simple first code ///////////////////////////////
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: Padding(
            //       padding: const EdgeInsets.only(top: 16.0),
            //       child: Container(
            //           height: 300.0,
            //           child: WebView(
            //             backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
            //             initialUrl:
            //                 'https://closeradio.tv/mysticmandala/player.htm',
            //             //    javaScriptMode: JavaScriptMode.unrestricted,
            //             javascriptMode: JavascriptMode.unrestricted,
            //           )),
            //     ),
            //   ),
            // ),
            //    isLoading == true ? CircularProgressIndicator() : Container(),
            ///////////////////////// code ///////////////////
          ]),
        ]));
  }
}
