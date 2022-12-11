import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Utils/appstrings.dart';
import '../../../../utils/appcolors.dart';
import '../../../../utils/assetpaths.dart';
import '../../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../../widgets/Text/customText.dart';
import '../../../Home/view/home.dart';

class BlogDetails3 extends StatefulWidget {
  const BlogDetails3({Key? key}) : super(key: key);

  @override
  State<BlogDetails3> createState() => _BlogDetails3State();
}

class _BlogDetails3State extends State<BlogDetails3> {
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
            //               text: "BLOGS",
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
              text: "BLOGS",
            ),
          ]),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     left: 28.0,
          //     right: 28.0,
          //     top: 22.0,
          //   ),
          //   child: Column(
          //     children: [
          //       CustomTextWidget(
          //         text:
          //             "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet finibus nibh ut tincidunt.",
          //         Text_Color: Colors.black,
          //         Text_fontSize: 1.4,
          //         Text_fontWeight: FontWeight.bold,
          //       ),
          //       SizedBox(
          //         height: 12.0,
          //       ),
          //       Row(
          //         children: [
          //           CustomTextWidget(
          //             text: "By Vijay Moksha",
          //             Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
          //             Text_fontSize: 1.0,
          //             Text_fontWeight: FontWeight.bold,
          //           ),
          //           Spacer(),
          //           CustomTextWidget(
          //             text: "Published on 11 /02 /2022",
          //             Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
          //             Text_fontSize: 1.0,
          //             Text_fontWeight: FontWeight.bold,
          //           ),
          //         ],
          //       ),
          //       SizedBox(
          //         height: 14.0,
          //       ),
          //       Image.asset(
          //         AssetPaths.BLOG_IMAGE,
          //         scale: 1,
          //       ),
          //       SizedBox(
          //         height: 14.0,
          //       ),
          //       CustomTextWidget(
          //         text:
          //             "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet finibus nibh ut tincidunt.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet finibus nibh ut tincidunt.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet finibus nibh ut tincidunt.",
          //         Text_Color: Colors.black.withOpacity(0.5),
          //         Text_fontSize: 1.2,
          //       ),
          //     ],
          //   ),
          // )
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                        left: 12.0,
                        right: 12.0,
                      ),
                      child: Column(children: [
                        Container(
                          child: Column(
                            children: [
                              // SizedBox(
                              //   height: 12.0,
                              // ),
                              // Row(
                              //   children: [
                              //     CustomTextWidget(
                              //       text: "By Vijay Moksha",
                              //       Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                              //       Text_fontSize: 1.0,
                              //       Text_fontWeight: FontWeight.bold,
                              //     ),
                              //     Spacer(),
                              //     CustomTextWidget(
                              //       text: "Published on 11 /02 /2022",
                              //       Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                              //       Text_fontSize: 1.0,
                              //       Text_fontWeight: FontWeight.bold,
                              //     ),
                              //   ],
                              // ),
                              Container(
                                height: 230.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  image: DecorationImage(
                                    image:
                                        AssetImage(AssetPaths.NEW_BLOG_1_IMAGE),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              CustomTextWidget(
                                text:
                                    "To develop a Self compassionate nature is the first step a person needs to take to start their meditative journey. For allowing this to arise within us we practice the Compassionate Meditation , where we move away from the feeling of being rushed and the uncomfortable feelings of impateince. We move towards positivity and life-affirming feelings.",
                                Text_Color: AppColors.BLACK_COLOR,
                                Text_fontSize: 1.1,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              CustomTextWidget(
                                text:
                                    "Here is how you can start this practice on a daily basis\n01. Sit comfortably in Sukhasana and close your eyes. Make sure the body is relaxed and the spine is straight, the shoulders relaxed. Bring the mind to someone who you love and who loves you equally. This person could be your lover, your friend or someone who you feel relaxed with - Your teachers your guide, your best friend.\n02.  Imagine this person is right infant of you, in the same way as you are sitting, and they are sending you their love and acceptance. You can feel this love radiating through your being. Next, you imagine more of this love and acceptance enveloping you by visualizing more people like this person - all those that love and accept you, they are surrounding you.\n03. Stay with this moment for as long as you can.\n04. Now that you are filled with love, with acceptance and a feeling of being surrounded by those that love you, you send this outward. With every breath you take, send out love in each exhalation, breathe in love with each inhalation. Send your love to those that love you, all the people that like you, the people you like, all the people you do not like, all the people that you do not know or have never met.\n05. Once you have sent this loving energy to all the people, simply sit there and remain in this state of unconditional Compassion.\nThis meditation is a good starting point to release angst, anger and frustrations in human relations.",
                                Text_Color: AppColors.BLACK_COLOR,
                                Text_fontSize: 1.1,
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     Get.toNamed('BlogDetails');
                              //   },
                              //   child: Row(
                              //     children: [
                              //       CustomTextWidget(
                              //         text: "Continue Reading",
                              //         Text_Color: AppColors.BLACK_COLOR,
                              //         Text_fontSize: 1.2,
                              //         Text_fontWeight: FontWeight.bold,
                              //       ),
                              //       Icon(
                              //         Icons.arrow_right_alt,
                              //         color: Colors.black,
                              //       ),
                              //     ],
                              //   ),
                              // )
                              // CustomTextWidget(
                              //   text:
                              //       "",
                              //   Text_Color: Colors.black.withOpacity(0.5),
                              //   Text_fontSize: 1.2,
                              //
                              // ),
                            ],
                          ),
                        ),
                      ])))),
        ])
      ]),
    );
  }
}
