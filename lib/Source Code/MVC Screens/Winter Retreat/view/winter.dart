import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/customButtons.dart';
import '../../../widgets/Text Fields/customTextField.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';

class WinterRetreat extends StatefulWidget {
  const WinterRetreat({Key? key}) : super(key: key);

  @override
  State<WinterRetreat> createState() => _WinterRetreatState();
}

class _WinterRetreatState extends State<WinterRetreat> {
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

  late PageController _pageController;
  List<String> images = [
    "assets/images/crousel1.png",
    "assets/images/crousel2.png",
    "assets/images/crousel3.png",
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetPaths.HOME_ICON),
              color: Colors.black,
              size: 24.0,
            ),
            label: ' ',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetPaths.MEDI_ICON),
              color: Colors.black,
              size: 24.0,
            ),
            label: ' ',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetPaths.DASHBOARD_ICON),
              color: Colors.black,
              size: 24.0,
            ),
            label: ' ',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetPaths.PLAY_ICON),
              color: Colors.black,
              size: 24.0,
            ),
            label: ' ',
            backgroundColor: AppColors.ORANGE_COLOR,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: ' ',
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
            Container(
              height: 75.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                  color: AppColors
                      .ORANGE_COLOR, //new Color.fromRGBO(255, 0, 0, 0.0),
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0))),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10.0),
                    child: Row(
                      children: [
                        // Builder(
                        //   builder: (context) => GestureDetector(
                        //     // child: Image.asset(
                        //     //   AssetPaths.DRAWER_ICON,
                        //     //   scale: 2.5,
                        //     // ),
                        //     onTap: () {},
                        //     //  ZoomDrawer.of(context)?.toggle(),
                        //     // _scaffoldKey.currentState?.openDrawer();
                        //   ),
                        // ),
                        Builder(builder: (context) {
                          return GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Image.asset(
                                AssetPaths.DRAWER_ICON,
                                scale: 1,
                              ));
                        }),
                        Spacer(),
                        CustomTextWidget(
                          text: "WINTER RETREAT",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.2,
                          Text_fontWeight: FontWeight.bold,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            AssetPaths.WHITE_BACK_BTN_IMAGE,
                            scale: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomTextWidget(
                      text:
                          "LOCATED JUST 50 MINUTES AWAY FROM DALLAS-FORTWORTH NOVEMBER -2022",
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontSize: 1.3,
                      Text_fontWeight: FontWeight.bold,
                      Text_Align: TextAlign.start,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CustomTextWidget(
                        text: "JOIN OUR WAITLIST",
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.4,
                        Text_fontWeight: FontWeight.bold,
                        Text_Align: TextAlign.start,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 200.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AssetPaths.WINTER_2IMAGE),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomTextWidget(
                      text:
                          "We are sorry we are completely sold out for this retreat. Take a peek at our Spring Retreat Registration Form! Below is our recent newsletter. Stay Connected!",
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontSize: 1.3,
                      Text_Align: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
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
                    height: 20.0,
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
