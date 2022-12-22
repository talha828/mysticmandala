import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/MVC%20Screens/Events/view/events.dart';

import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/outlinebuttons.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';

class Eventsscreens extends StatefulWidget {
  const Eventsscreens({Key? key}) : super(key: key);

  @override
  State<Eventsscreens> createState() => _EventsscreensState();
}

class _EventsscreensState extends State<Eventsscreens> {
  Events Eventsservice = Events();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Eventsservice.getAllEvents();
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
            //               text: "EVENTS",
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
              text: "EVENTS",
            ),
          ]),
          // Expanded(
          //   child: ListView.builder(
          //     physics: BouncingScrollPhysics(),
          //     shrinkWrap: true,
          //     scrollDirection: Axis.vertical,
          //     itemCount: 3,
          //     itemBuilder: (BuildContext context, int index) => Container(
          //       child: Padding(
          //         padding: const EdgeInsets.all(16.0),
          //         child: Column(
          //           children: [
          //             CustomTextWidget(
          //               text:
          //                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet finibus nibh ut tincidunt.",
          //               Text_Color: Colors.black,
          //               Text_fontSize: 1.4,
          //               Text_fontWeight: FontWeight.w500,
          //             ),
          //             SizedBox(
          //               height: 10.0,
          //             ),
          //             Image.asset(
          //               AssetPaths.NEW_EVENT_IMAGE,
          //               scale: 1,
          //             ),
          //             SizedBox(
          //               height: 12.0,
          //             ),
          //             SizedBox(
          //               height: 10.0,
          //             ),
          //             InkWell(
          //                 onTap: () {
          //                   Get.toNamed('/CheckoutPage');
          //                 },
          //                 child: OutlineButtons()),
          //             SizedBox(
          //               height: 20.0,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            child: Container(
              child: FutureBuilder<List>(
                future: Eventsservice.getAllEvents(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data?.length == 0) {
                      return Center(
                        child: Text("No Events"),
                      );
                    }
                    return ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, i) {
                          return Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 20.0),
                              child: Column(children: [
                                // snapshot.data?[i]['tags'].toString() != '[59]'
                                //     ?
                                snapshot.data![i]['categories'][0]['name'] ==
                                        "Events"
                                    ? Column(
                                        children: [
                                          //  Text("Yh 59 Tag waly  hai"),
                                          Align(
                                            child: CustomTextWidget(
                                              text: snapshot.data?[i]['name'],
                                              Text_Color: AppColors.BLACK_COLOR,
                                              Text_fontSize: 1.2,
                                              Text_fontWeight: FontWeight.bold,
                                            ),
                                            alignment: Alignment.topLeft,
                                          ),
                                          SizedBox(
                                            height: 12.0,
                                          ),
                                          // Align(
                                          //   child: CustomTextWidget(
                                          //     text: snapshot.data?[i]['tags']
                                          //         .toString(),
                                          //     Text_Color: AppColors.BLACK_COLOR
                                          //         .withOpacity(0.5),
                                          //     Text_fontSize: 1.2,
                                          //     Text_fontWeight: FontWeight.bold,
                                          //   ),
                                          //   alignment: Alignment.topLeft,
                                          // ),
                                          // SizedBox(
                                          //   height: 12.0,
                                          // ),
                                          Image.network(snapshot.data?[i]
                                              ['images'][0]['src']),
                                          // SizedBox(
                                          //   height: 12.0,
                                          // ),
                                          // CustomTextWidget(
                                          //   text: snapshot.data![i]
                                          //       ['categories'][0]['name'],
                                          //   Text_Color: AppColors.BLACK_COLOR,
                                          //   Text_fontSize: 1.2,
                                          //   Text_fontWeight: FontWeight.bold,
                                          // ),
                                          // SizedBox(
                                          //   height: 12.0,
                                          // ),
                                          // Text(
                                          //   snapshot.data![i]['content']['rendered']
                                          //       .toString()
                                          //       .replaceAll("<p>", "")
                                          //       .replaceAll("</p>", "")
                                          //       .replaceAll("<b>", "")
                                          //       .replaceAll("</b>", "")
                                          //       .replaceAll("<i>", "")
                                          //       .replaceAll("<br />", "")
                                          //       .replaceAll("</i>", "")
                                          //       .replaceAll("&nbsp;", " "),
                                          //   maxLines: 14,
                                          //   overflow: TextOverflow.ellipsis,
                                          //   textAlign: TextAlign.justify,
                                          //   style: TextStyle(
                                          //       fontSize: 16.0,
                                          //       color: AppColors.BLACK_COLOR),
                                          // ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                Get.toNamed('/CheckoutPage');
                                              },
                                              child: OutlineButtons()),
                                          SizedBox(
                                            height: 40.0,
                                          ),
                                        ],
                                      )
                                    : Container(),
                              ]),
                            ),
                          );
                        });
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else {
                    return Center(
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
                    );
                  }
                },
              ),
            ),
          ),
          // Expanded(
          //   child: SingleChildScrollView(
          //     physics: const BouncingScrollPhysics(),
          //     child: Padding(
          //       padding: const EdgeInsets.only(
          //         left: 28.0,
          //         right: 28.0,
          //         top: 22.0,
          //       ),
          //       child:
          //       // Container(
          //       //   child: Column(
          //       //     children: [
          //       //       CustomTextWidget(
          //       //         text:
          //       //             "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet finibus nibh ut tincidunt.",
          //       //         Text_Color: Colors.black,
          //       //         Text_fontSize: 0.3,
          //       //         Text_fontWeight: FontWeight.bold,
          //       //       ),
          //       //       SizedBox(
          //       //         height: 12.0,
          //       //       ),
          //       //       SizedBox(
          //       //         height: 5.0,
          //       //       ),
          //       //       Image.asset(
          //       //         AssetPaths.BLOG_IMAGE,
          //       //         scale: 1,
          //       //       ),
          //       //       SizedBox(
          //       //         height: 14.0,
          //       //       ),
          //       //       OutlineButtons(),
          //       //       Container(
          //       //         height: 400.0,
          //       //         color: Colors.black,
          //       //       )
          //       //     ],
          //       //   ),
          //       // ),
          //     ),
          //   ),
          // )
        ])
      ]),
    );
  }
}
