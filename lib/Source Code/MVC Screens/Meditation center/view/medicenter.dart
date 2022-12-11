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

class MeditationCenter extends StatefulWidget {
  const MeditationCenter({Key? key}) : super(key: key);

  @override
  State<MeditationCenter> createState() => _MeditationCenterState();
}

class _MeditationCenterState extends State<MeditationCenter> {
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
            //             CustomTextWidget(
            //               text: "Meditation Center",
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
              text: "MEDITATION CENTER",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 28.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                text: "LOCATED IN PLANO, TX",
                                Text_Color: AppColors.BLACK_COLOR,
                                Text_fontSize: 1.2,
                                Text_fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 220.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage(AssetPaths.MEDI_CENTER_1_IMAGE),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          CustomTextWidget(
                            text: "OUR VALUES",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.4,
                            Text_fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                "Holistic living is a choice a responsibility of well-being to ones self and to the environment we live in. We provide the knowledge and resources to implement this into your day to day life.",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          CustomTextWidget(
                            text: "OUR COMMUNITY",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.4,
                            Text_fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                "We are alone unless with eachother. Community is the foundation of Mystic Mandala Center, we encourage all to come and join our center, inspiring and encouraging all to become a part of the whole. ",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          CustomTextWidget(
                            text: "OUR MISSION",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.4,
                            Text_fontWeight: FontWeight.bold,
                          ),
                          CustomTextWidget(
                            text:
                                "Our mission is to create an environment that encourages you to find what you seek being where you are in your life- physically, spiritually and financially, a foundation for where you are and where you want to be.",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_Align: TextAlign.center,
                          ),
                          ///////////////////////////////// 2ND PART /////////////////////////////
                          SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            height: 180.0,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: double.infinity,
                                  width: 180.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          AssetPaths.MEDI_CENTER_2_IMAGE),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomTextWidget(
                                        text: "WEEKLY\n MEDITATIONSCHEDULE",
                                        Text_Color: AppColors.BLACK_COLOR,
                                        Text_fontSize: 1.0,
                                        Text_fontWeight: FontWeight.bold,
                                        Text_Align: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Container(
                                        height: 30.0,
                                        width: 110.0,
                                        decoration: BoxDecoration(
                                            color: AppColors.ORANGE_COLOR,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(28.0))),
                                        child: Center(
                                          child: CustomTextWidget(
                                            text: "Find out more",
                                            Text_Color: AppColors.WHITE_COLOR,
                                            Text_fontSize: 1.0,
                                            Text_fontWeight: FontWeight.bold,
                                            Text_Align: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          CustomTextWidget(
                            text:
                                "TUESDAYS 6:15-7:30PM TEACHINGS OF GREAT MASTERS",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.4,
                            Text_fontWeight: FontWeight.bold,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          CustomTextWidget(
                            text:
                                "A simple book reading about the great masters. A page, or a chapter. A little discussion. Followed by an hour of our decade old Mystic Mandala Meditation.",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          CustomTextWidget(
                            text:
                                "THURSDAYS 6:30PM -7:30PM -LIVING MOKSHA MEDITATION ",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.4,
                            Text_fontWeight: FontWeight.bold,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          CustomTextWidget(
                            text:
                                "Join us every Thursday for Mystic Mandala Meditations open for ALL Levels.",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 14.0,
                          ),
                          CustomTextWidget(
                            text:
                                "FRIDAYS 6:00PM -7:00PM SOUND BATH WITH ANANDA",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.4,
                            Text_fontWeight: FontWeight.bold,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          CustomTextWidget(
                            text:
                                "Escape into sound in this one hour meditation. Crystal bowls, mantra, harmonium and bells.",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          CustomTextWidget(
                            text:
                                "SATURDAYS 11:30AM-12:30PM TANTRA AND CHAKRA MEDITATION",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.4,
                            Text_fontWeight: FontWeight.bold,
                            Text_Align: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          CustomTextWidget(
                            text:
                                "Tantra is an authentic spiritual path, which can take You to enlightenment or your highest state of awareness. Tantra allows us to find balance in opposites.",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_Align: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 125.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.CATEGORY_IMAGE),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          )
        ])
      ]),
    );
  }
}
