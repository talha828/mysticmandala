import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/MVC%20Screens/Gallery/controller/Gallery.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';

class EventGallery extends StatefulWidget {
  final Gallerydata;
  const EventGallery({Key? key, required this.Gallerydata}) : super(key: key);

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
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
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
                              SizedBox(
                                height: 14.0,
                              ),
                              Column(
                                children: List.generate(
                                  widget.Gallerydata['gallery_data']['gallery']
                                      .length,
                                  (index) => Container(
                                    child: Image.network(
                                        widget.Gallerydata['gallery_data']
                                            ['gallery'][index]['src']),
                                    margin: EdgeInsets.all(12.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 18.0,
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
          // Expanded(
          //   child: SingleChildScrollView(
          //     child: Padding(
          //       padding:
          //           const EdgeInsets.only(top: 10.0, left: 12.0, right: 12.0),
          //       child: Column(
          //         children: [
          //           Container(
          //             child: Column(
          //               // //  mainAxisSize: MainAxisSize.min,
          //               // crossAxisAlignment: CrossAxisAlignment.start,
          //               // children: [
          //               //   Image.asset(AssetPaths.PIC_1_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_2_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_3_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_4_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_5_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_6_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_7_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_8_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_9_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_10_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_11_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_12_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_13_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_14_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_15_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_16_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_17_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_18_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_19_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_20_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_21_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_22_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_23_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_24_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_25_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_26_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_27_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_28_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_29_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_30_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_31_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_32_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //               //   Image.asset(AssetPaths.PIC_33_IMAGE),
          //               //   SizedBox(
          //               //     height: 10.0,
          //               //   ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_1_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_2_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_3_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_4_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_5_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_6_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_7_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_8_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_9_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_10_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_11_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_12_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_13_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_14_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_20_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_15_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_16_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_17_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_18_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_19_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_21_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_22_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_23_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_24_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_25_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_26_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_27_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_28_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_29_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_30_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_31_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_32_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //                 // SizedBox(
          //                 //   height: 10.0,
          //                 // ),
          //                 // Container(
          //                 //   height: 300.0,
          //                 //   width: double.infinity,
          //                 //   decoration: BoxDecoration(
          //                 //     borderRadius:
          //                 //         BorderRadius.all(Radius.circular(8.0)),
          //                 //     image: DecorationImage(
          //                 //       image: AssetImage(AssetPaths.PIC_33_IMAGE),
          //                 //       fit: BoxFit.fill,
          //                 //     ),
          //                 //   ),
          //                 // ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     child: FutureBuilder<List>(
          //       future: Galleryservice.getAllPics(),
          //       builder: (context, snapshot) {
          //         if (snapshot.hasData) {
          //           if (snapshot.data?.length == 0) {
          //             return Center(
          //               child: Text("No Pictures"),
          //             );
          //           }
          //           return ListView.builder(
          //               itemCount: snapshot.data!.length,
          //               itemBuilder: (context, i) {
          //                 return Container(
          //                   child: Padding(
          //                     padding: const EdgeInsets.only(
          //                         left: 12.0, right: 20.0, top: 20.0),
          //                     child: Column(
          //                       children: [
          //                         SizedBox(
          //                           height: 8.0,
          //                         ),
          //                         Image.network(
          //                             snapshot.data?[i]["source_url"]),
          //                         SizedBox(
          //                           height: 8.0,
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 );
          //               });
          //         } else if (snapshot.hasError) {
          //           return Center(
          //             child: Text(snapshot.error.toString()),
          //           );
          //         } else {
          //           return Center(
          //             child: SpinKitCircle(
          //                 itemBuilder: (BuildContext context, int index) {
          //               return DecoratedBox(
          //                 decoration: BoxDecoration(
          //                   color: index.isEven
          //                       ? AppColors.ORANGE_COLOR
          //                       : AppColors.BLACK_COLOR,
          //                 ),
          //               );
          //             }),
          //           );
          //         }
          //       },
          //     ),
          //   ),
          // ),
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
