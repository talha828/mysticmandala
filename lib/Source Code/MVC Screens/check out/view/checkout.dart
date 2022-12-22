import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/outlinebuttons.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text/customText.dart';
import '../../../widgets/checkout Fields/customcheckout.dart';
import '../../Home/view/home.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool check1 = false;
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
            //               text: "CHECKOUT",
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
            //             // InkWell(
            //             //   child: Image.asset(
            //             //     AssetPaths.EMAIL_ICON,
            //             //     scale: 2.5,
            //             //   ),
            //             //   onTap: () {},
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // )
            CustomAppBar(
              text: "CHECKOUT",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: customcheckout(
                            field_BgColor: AppColors.LIGHT_ORANGE_COLOR,
                            field_Hint_Text: "First name",
                            Keyboard_Type: TextInputType.name,
                          ),
                        ),
                        Expanded(
                          child: customcheckout(
                            field_BgColor: AppColors.LIGHT_ORANGE_COLOR,
                            field_Hint_Text: "Last name",
                            Keyboard_Type: TextInputType.name,
                          ),
                        ),
                      ],
                    ),
                    customcheckout(
                      field_BgColor: AppColors.LIGHT_ORANGE_COLOR,
                      field_Hint_Text: "Email",
                      Keyboard_Type: TextInputType.emailAddress,
                    ),
                    customcheckout(
                      field_BgColor: AppColors.LIGHT_ORANGE_COLOR,
                      field_Hint_Text: "Card number",
                      Keyboard_Type: TextInputType.number,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: customcheckout(
                            field_BgColor: AppColors.LIGHT_ORANGE_COLOR,
                            field_Hint_Text: "Expiry",
                            Keyboard_Type: TextInputType.name,
                          ),
                        ),
                        Expanded(
                          child: customcheckout(
                            field_BgColor: AppColors.LIGHT_ORANGE_COLOR,
                            field_Hint_Text: "CVC",
                            Keyboard_Type: TextInputType.name,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: customcheckout(
                            field_BgColor: AppColors.LIGHT_ORANGE_COLOR,
                            field_Hint_Text: "Country",
                            Keyboard_Type: TextInputType.name,
                          ),
                        ),
                        Expanded(
                          child: customcheckout(
                            field_BgColor: AppColors.LIGHT_ORANGE_COLOR,
                            field_Hint_Text: "Postal/zip code",
                            Keyboard_Type: TextInputType.name,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Image.asset(
                      AssetPaths.PAYPAL_CARD_IMAGE,
                      scale: 4.0,
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    ListTile(
                      leading: Checkbox(
                          value: check1,
                          checkColor: AppColors.ORANGE_COLOR,
                          activeColor: AppColors.BLACK_COLOR,
                          onChanged: (bool? checked) {
                            setState(() {
                              check1 = checked!;
                            });
                          }),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: CustomTextWidget(
                          text:
                              "Store my information for faster checkout in the future. By signing up, you may receive exclusive promotions by email.",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 0.9,
                          Text_Align: TextAlign.start,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextWidget(
                      text: "Book More Services",
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontSize: 1.4,
                      Text_fontWeight: FontWeight.bold,
                      Text_Align: TextAlign.start,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/Home');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: AppColors.ORANGE_COLOR,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Center(
                          child: CustomTextWidget(
                            text: "Confirm checkout",
                            Text_Color: AppColors.WHITE_COLOR,
                            Text_fontSize: 1.2,
                            Text_fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ])
      ]),
    );
  }
}
