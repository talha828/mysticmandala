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
import 'package:readmore/readmore.dart';

import '../../Home/view/home.dart';

class AboutGuru extends StatefulWidget {
  const AboutGuru({Key? key}) : super(key: key);

  @override
  State<AboutGuru> createState() => _AboutGuruState();
}

class _AboutGuruState extends State<AboutGuru> {
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
            //         padding:
            //             const EdgeInsets.only(left: 22.0, right: 5.0, top: 8.0),
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
            //                 text: "GURU",
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
              text: "GURU",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18.0,
                  left: 12.0,
                  right: 12.0,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      AssetPaths.ABOUT_GURU_IMAGE,
                      scale: 4,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextWidget(
                      text: "Vijay Moksha",
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontSize: 1.4,
                      Text_fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomTextWidget(
                        text: "About Us",
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.4,
                        Text_fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextWidget(
                      text:
                          "Located in the heart North Texas. Mystic Mandala is an organization that provides holistic approaches to health, wealth and wellness. For over a decade, Vijay Moksha and his team have helped thousands to reach their dreams.",
                      Text_Color: AppColors.BLACK_COLOR.withOpacity(0.8),
                      Text_fontSize: 1.2,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    CustomTextWidget(
                      text:
                          "Vijay Moksha Founder at Mystic Mandala | Philanthropist | Meditation Guide | Life & Wellness",
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontSize: 1.2,
                      Text_fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    ReadMoreText(
                      'Born and raised in simple surroundings in North India, Vijay demonstrated a uniquely  independent approach to life, and had the opportunity to be in the presence of several spiritual masters and guides. His father, a spiritual aspirant and seeker, had a deep impact on his thoughts at a very early age and eventually, while pursuing a career in the world of fashion, a world of glamour and objectification, he was constantly reminded of a deeper longing, a desire for the pursuit of inner knowing and eventually the shift gradually happened many years ago when he reached a moment of Satori, a realization, while sitting in his favorite chair at his home - A dawn like none other. I lost all connection with my past, all involvement governed by insecurity or emotions, and a deep sense of relief came over me.Since then as a  spiritual guide, for over a decade, he has been engaged in helping people in achieving their dreams, realizing ambitions, and living well rounded lives utilizing the principles of Vastu Shastra, Feng Shui, Intuitive Guidance and Meditation.He has worked with hundreds of people to help them self heal. He teaches, among many things, that our thoughts, our actions in the world gradually diminish our ability to see ourselves, to recognize the tiny inner flame of consciousness.He spends most of his time meditating, reading, writing, sketching and cooking - Humble past times. Write, sing, Dance – show signs of intelligent human existence. Before you know it, the five senses will once again become a part of the five elements. Now, you Sing. Now, you Dance. Now, you create. Now, you live. Not tomorrow. Now.',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: AppColors.BLACK_COLOR.withOpacity(0.8)),
                      trimLines: 7,
                      colorClickableText: Colors.black,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      moreStyle: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          )
        ])
      ]),
    );
  }
}
