import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/utils/appstrings.dart';
import 'package:mysticmandala/Source%20Code/utils/assetpaths.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/appcolors.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
            //                     scale: 1.0,
            //                   ));
            //             }),
            //             Spacer(),
            //             Padding(
            //               padding: const EdgeInsets.only(right: 14.0),
            //               child: CustomTextWidget(
            //                 text: "NOTIFICATIONS",
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
              text: "NOTIFICATIONS",
            ),
          ]),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5, //chats.length,
              itemBuilder: (BuildContext context, int index) {
                //       final Message chat = chats[index];
                return GestureDetector(
                  onTap: () => {},
                  //     Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => ChatScreen(
                  //       user: chat.sender,
                  //     ),
                  //   ),
                  // ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration:
                              // chat.unread
                              //     ?
                              BoxDecoration(
                                  //   borderRadius: BorderRadius.all(Radius.circular(40)),
                                  // border: Border.all(
                                  //   width: 2,
                                  //   color: AppColors.PRIMARY_COLOR,
                                  // ),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.5),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 5,
                                  //   ),
                                  // ],
                                  ),
                          //     :
                          //     BoxDecoration(
                          //   shape: BoxShape.circle,
                          //   // boxShadow: [
                          //   //   BoxShadow(
                          //   //     color: Colors.grey.withOpacity(0.5),
                          //   //     spreadRadius: 2,
                          //   //     blurRadius: 5,
                          //   //   ),
                          //   // ],
                          // ),
                          child: Container(
                            width: 55,
                            height: 50,
                            decoration: BoxDecoration(
                              //    borderRadius: BorderRadius.circular(5.0),
                              shape: BoxShape.circle,
                              color: AppColors.ORANGE_COLOR,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.notifications,
                                color: AppColors.BLACK_COLOR,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "User 1",
                                        //  chat.sender.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      // chat.sender.isOnline
                                      //     ? Container(
                                      //   margin: const EdgeInsets.only(left: 5),
                                      //   width: 7,
                                      //   height: 7,
                                      //   decoration: BoxDecoration(
                                      //     shape: BoxShape.circle,
                                      //     color: Theme.of(context).primaryColor,
                                      //   ),
                                      // )
                                      Container(
                                        child: null,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "12:30",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  AppStrings.LOREUM_TEXT,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black54,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Expanded(
          //   child: ListView(
          //     physics: BouncingScrollPhysics(),
          //     children: [],
          //   ),
          // )
        ])
      ]),
    );
  }
}
