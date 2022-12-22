import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../Dashboard/view/dashboard.dart';
import '../../../Utils/appstrings.dart';
import '../../../meditationp22.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/customButtons.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text Fields/customTextField.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';
import '../../Profile Settings/view/profflsettings.dart';
import 'media.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  State<Playlist> createState() => _PlaylistState();
}

bool isLoading = true;

class _PlaylistState extends State<Playlist> {
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
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            color: AppColors.LIGHT_ORANGE_COLOR,
            child: WebView(
              backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
              initialUrl:
                  'https://mysticmandala.app/mobile-recorded-live-sessions/',
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
          ),
        ),
        // Container(
        //   height: 75.0,
        //   width: double.infinity,
        //   decoration: new BoxDecoration(
        //       color:
        //           AppColors.ORANGE_COLOR, //new Color.fromRGBO(255, 0, 0, 0.0),
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
        //               text: "RECORDED LIVE SESSION",
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
        CustomAppBar(
          text: "RECORDED LIVE SESSION",
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
                child: SpinKitCircle(
                    itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven
                          ? AppColors.ORANGE_COLOR
                          : AppColors.BLACK_COLOR,
                    ),
                  );
                }),
              )
            : Stack(),
        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage(AssetPaths.LOGIN_BG_IMAGE),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        // Column(children: [
        //   Stack(children: [
        //     Container(
        //       height: 75.0,
        //       width: double.infinity,
        //       decoration: new BoxDecoration(
        //           color: AppColors
        //               .ORANGE_COLOR, //new Color.fromRGBO(255, 0, 0, 0.0),
        //           borderRadius: new BorderRadius.only(
        //               bottomLeft: const Radius.circular(10.0),
        //               bottomRight: const Radius.circular(10.0))),
        //       child: SafeArea(
        //         child: Align(
        //           alignment: Alignment.topCenter,
        //           child: Padding(
        //             padding: const EdgeInsets.only(
        //                 left: 22.0, right: 24.0, top: 10.0),
        //             child: Row(
        //               children: [
        //                 // Builder(
        //                 //   builder: (context) => GestureDetector(
        //                 //     // child: Image.asset(
        //                 //     //   AssetPaths.DRAWER_ICON,
        //                 //     //   scale: 2.5,
        //                 //     // ),
        //                 //     onTap: () {},
        //                 //     //  ZoomDrawer.of(context)?.toggle(),
        //                 //     // _scaffoldKey.currentState?.openDrawer();
        //                 //   ),
        //                 // ),
        //                 Builder(builder: (context) {
        //                   return GestureDetector(
        //                       onTap: () {
        //                         Scaffold.of(context).openDrawer();
        //                       },
        //                       child: Image.asset(
        //                         AssetPaths.DRAWER_ICON,
        //                         scale: 1,
        //                       ));
        //                 }),
        //                 Spacer(),
        //                 Padding(
        //                   padding: const EdgeInsets.only(right: 20.0),
        //                   child: CustomTextWidget(
        //                     text: "PLAYLIST",
        //                     Text_Color: AppColors.BLACK_COLOR,
        //                     Text_fontSize: 1.4,
        //                     Text_fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //                 Spacer(),
        //                 InkWell(
        //                   onTap: () {
        //                     Get.back();
        //                   },
        //                   child: Image.asset(
        //                     AssetPaths.WHITE_BACK_BTN_IMAGE,
        //                     scale: 1.0,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     )
        //   ]),
        //   Expanded(
        //     child: SingleChildScrollView(
        //       child: Padding(
        //         padding: const EdgeInsets.only(
        //           top: 10.0,
        //         ),
        //         child: Text(""),
        //         // Column(
        //         //   mainAxisAlignment: MainAxisAlignment.center,
        //         //   crossAxisAlignment: CrossAxisAlignment.center,
        //         //   children: [
        //         //     Container(
        //         //         height: 280.0,
        //         //         width: double.infinity,
        //         //         child: WebView(
        //         //           backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
        //         //           initialUrl:
        //         //               'https://www.youtube.com/watch?v=RAbj76hQMus&list=PLUL8fkehFHDOsEDQE2pXaBPUEvuvytm3l&index=1',
        //         //           //    javaScriptMode: JavaScriptMode.unrestricted,
        //         //           javascriptMode: JavascriptMode.unrestricted,
        //         //         )),
        //         //     SizedBox(
        //         //       height: 12.0,
        //         //     ),
        //         //     Container(
        //         //         height: 280.0,
        //         //         width: double.infinity,
        //         //         child: WebView(
        //         //           backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
        //         //           initialUrl:
        //         //               'https://www.youtube.com/watch?v=5ZxQKIMDlTk&list=PLUL8fkehFHDOsEDQE2pXaBPUEvuvytm3l&index=2',
        //         //           //    javaScriptMode: JavaScriptMode.unrestricted,
        //         //           javascriptMode: JavascriptMode.unrestricted,
        //         //         )),
        //         //     SizedBox(
        //         //       height: 12.0,
        //         //     ),
        //         //     Container(
        //         //         height: 280.0,
        //         //         width: double.infinity,
        //         //         child: WebView(
        //         //           backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
        //         //           initialUrl:
        //         //               'https://www.youtube.com/watch?v=UsqX5EiE8m4&list=PLUL8fkehFHDOsEDQE2pXaBPUEvuvytm3l&index=3',
        //         //           //    javaScriptMode: JavaScriptMode.unrestricted,
        //         //           javascriptMode: JavascriptMode.unrestricted,
        //         //         )),
        //         //     // InkWell(
        //         //     //   onTap: (){
        //         //     //     Get.toNamed('/Videos');
        //         //     //   },
        //         //     //   child: Container(
        //         //     //     height: 125.0,
        //         //     //     width: double.infinity,
        //         //     //     decoration: BoxDecoration(
        //         //     //       image: DecorationImage(
        //         //     //         image: AssetImage(AssetPaths.LIVE_STREAMING),
        //         //     //         fit: BoxFit.fill,
        //         //     //       ),
        //         //     //     ),
        //         //     //   ),
        //         //     // ),
        //         //     // SizedBox(
        //         //     //   height: 50.0,
        //         //     // ),
        //         //     // InkWell(
        //         //     //   onTap: (){
        //         //     //     //   Get.toNamed('/MediaSelect');
        //         //     //   },
        //         //     //   child: Container(
        //         //     //     height: 125.0,
        //         //     //     width: double.infinity,
        //         //     //     decoration: BoxDecoration(
        //         //     //       image: DecorationImage(
        //         //     //         image: AssetImage(AssetPaths.UPLOAD_VIDEOS),
        //         //     //         fit: BoxFit.fill,
        //         //     //       ),
        //         //     //     ),
        //         //     //   ),
        //         //     // ),
        //         //   ],
        //         // ),
        //       ),
        //     ),
        //   )
        // ])
      ]),
    );
  }
}
