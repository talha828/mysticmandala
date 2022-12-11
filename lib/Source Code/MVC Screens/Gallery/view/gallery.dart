import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';

class EventGallery extends StatefulWidget {
  const EventGallery({Key? key}) : super(key: key);

  @override
  State<EventGallery> createState() => _EventGalleryState();
}

class _EventGalleryState extends State<EventGallery> {
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
            //               text: "PHOTO GALLERY",
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
              text: "PHOTO GALLERY",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 12.0, right: 12.0),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        //  mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 230.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              image: DecorationImage(
                                image: AssetImage(AssetPaths.SESSION_5_IMAGE),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 230.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              image: DecorationImage(
                                image: AssetImage(AssetPaths.SESSION_6_IMAGE),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 230.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              image: DecorationImage(
                                image: AssetImage(AssetPaths.SESSION_9_IMAGE),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ])
      ]),
    );
    //   SizedBox(
    //     height: MediaQuery.of(context).size.height * 0.90,
    //     width: double.infinity,
    //     child:
    //     ListView.builder(
    //       physics: const BouncingScrollPhysics(),
    //       shrinkWrap: true,
    //       scrollDirection: Axis.vertical,
    //       itemCount: 1,
    //       itemBuilder: (BuildContext context, int index) => Container(
    //         child: Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: Container(
    //             color: Colors.red,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Container(
    //                   height: 200.0,
    //                   width: double.infinity,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.all(Radius.circular(8.0)),
    //                     image: DecorationImage(
    //                       image: AssetImage(AssetPaths.SESSION_1_IMAGE),
    //                       fit: BoxFit.fill,
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 12.0,
    //                 ),
    //                 CustomTextWidget(
    //                   text: "Vastu & Feng Shui - Zoom or Phone",
    //                   Text_Color: AppColors.BLACK_COLOR,
    //                   Text_fontSize: 1.2,
    //                   Text_fontWeight: FontWeight.bold,
    //                 ),
    //                 CustomTextWidget(
    //                   text: "1 hr | \$425",
    //                   Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
    //                   Text_fontSize: 1.2,
    //                 ),
    //                 SizedBox(
    //                   height: 12.0,
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     InkWell(
    //                       onTap: () {
    //                         Get.toNamed('/SessionSchedule');
    //                       },
    //                       child: RoundedButtons(
    //                         btnText: "Book",
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 40.0,
    //                     ),
    //                     InkWell(
    //                       onTap: () {
    //                         Get.toNamed('/ServiceDetails');
    //                       },
    //                       child: RoundedButtons(
    //                         btnText: "Details",
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 SizedBox(
    //                   height: 8.0,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     )
    // );
  }
}
