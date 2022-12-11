import 'package:flutter/gestures.dart';
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
import 'package:url_launcher/url_launcher.dart';

class SpringRetreat extends StatefulWidget {
  const SpringRetreat({Key? key}) : super(key: key);

  @override
  State<SpringRetreat> createState() => _SpringRetreatState();
}

class _SpringRetreatState extends State<SpringRetreat> {
  final Uri _url = Uri.parse(
      'https://docs.google.com/forms/d/e/1FAIpQLSdzskGN3JvBFsGtpyNa1F9MdDr_nfuOKEWXcZbhFiTwE-1dUQ/viewform');
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

  bool _flag = true;
  late PageController _pageController;
  List<String> images = [
    "assets/images/spring1.png",
    "assets/images/spring2.png",
    "assets/images/spring3.png",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }

  int activePage = 1;
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
            //               text: "SPRING RETREAT",
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
              text: "RETREAT",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 18.0, right: 16.0, top: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text:
                          "LOCATED JUST 90 MINUTES AWAY FROM DALLAS- FORTWORTH MARCH / APRIL 2023",
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontSize: 1.3,
                      Text_fontWeight: FontWeight.bold,
                      Text_Align: TextAlign.start,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      height: 180.0,
                      width: double.infinity,
                      child: PageView.builder(
                          itemCount: images.length,
                          pageSnapping: true,
                          controller: _pageController,
                          onPageChanged: (page) {
                            setState(() {
                              activePage = page;
                            });
                          },
                          itemBuilder: (context, pagePosition) {
                            return Container(
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //     image: AssetImage(images[pagePosition]),
                              //     fit: BoxFit.fill,
                              //   ),
                              // ),
                              child: Image.asset(images[pagePosition]),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: indicators(images.length, activePage)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text:
                              "ALL INCLUSIVE PACKAGE INCLUDES: - A RETREAT FOR THE MODERN",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.4,
                          Text_fontWeight: FontWeight.bold,
                          Text_Align: TextAlign.start,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text: "Ayurvedic Vegetarian Meals",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.3,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        CustomTextWidget(
                          text:
                              "Ayurvedic Meals and Cooking Classes. In addition to the five earthly elements and the three doshas, there are also six tastes in the Ayurvedic kitchen – Learn how to both cook and eat traditional Ayervedic foods. -Prepared Fresh Vegetarian (Vegan options Available).",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text: "Meditation Discourse",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.3,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        CustomTextWidget(
                          text:
                              "90 Minute Discourses - Learn and immerse yourself info traditional tantric philosophy - unlike the publicized misconceptions - Tantra is a way of life, it is mindful intention work, self realization and expression.",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CustomTextWidget(
                          text:
                              "Student Course Certification\n8 Hour Tantra Certificate of Attendance\n**Applied to the 40hr Tantra Student Certification",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CustomTextWidget(
                          text: "Sound, Music and Dance",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.3,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        CustomTextWidget(
                          text:
                              "Under the Texas sky, experience sound healing and Yoga Nidra every evening in review of the evenings meditations, music, dance and teachings. Dance and Music have a way to the soul - Shamanic Drum Circle and Tantric Dance to up beat the vibration of movement meditation.",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text: "Nature Walks and Star Gazing",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.3,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        CustomTextWidget(
                          text:
                              "Located on a private lake with walking trails, lake views, docks and animal watching points. This beautiful escape allows for nature integrated meditations. Stupa building Zen meditation, Walking Buddha meditation and star gazing sound bath.",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text: "Lodging and Retreat Center ",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.3,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        CustomTextWidget(
                          text:
                              "Both shared and individual Accommodations The Ranch and Retreat Conference Center offers guests views of 150 foot cliff with stunning views overlooking the bath bend of the Brazos River.",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text: "Day 1 - Creation Friday",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.3,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text:
                              "3pm Check in\n4pm WelcomeCeremony\n5pm 90 minute lecture\n7pm Dinner\n8pm Shamanic Drum Circle and Tantric Dance\n9pm Yin Meditation\n10pm Stargazing",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text: "Day 2 - Embody Saturday",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.3,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text:
                              "5am-6am Surya Pranayama Meditation\n8am Breakfast\n9am 90 minute lecture\n12 Ayurvedic Cooking\n1pm Sangha Lunch\n2pm Sadhana Service\n5pm 90 minute lecture - White Tantra Dharma Talks\n7pm Dinner\n7pm White Tara Tantric Union Ritual 10pm Panchamakara, Dance & Celebration",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text: "Day 3 - Release Sunday",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.3,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        CustomTextWidget(
                          text:
                              "Svadhaya Self Study Nature Meditation\n8am Breakfast\n9am 90 minute Chakra and Kundalini\n10:30 am Closing Ceremony\n12pm Check out",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.1,
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80.0, right: 80.0, top: 8.0),
                          child: Container(
                            height: 50.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppColors.BLACK_COLOR,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: GestureDetector(
                              onTap: () => _launchUrl(),
                              child: Center(
                                child: CustomTextWidget(
                                  text: "Book Your Room!!",
                                  Text_Color: AppColors.WHITE_COLOR,
                                  Text_fontSize: 1.2,
                                  Text_fontWeight: FontWeight.bold,
                                  Text_Align: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),

                        // ElevatedButton(
                        //   onPressed: () => setState(() => _flag = !_flag),
                        //   child: Text(
                        //     _flag ? '12:30' : '12:30',
                        //     style: TextStyle(
                        //         color: _flag ? Colors.brown : Colors.white),
                        //   ),
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: _flag
                        //         ? Colors.white
                        //         : Colors.brown, // This is what you need!
                        //   ),
                        // ),
                      ],
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

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
