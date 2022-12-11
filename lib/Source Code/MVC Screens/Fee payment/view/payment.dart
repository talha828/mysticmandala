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

class feepayment extends StatefulWidget {
  const feepayment({Key? key}) : super(key: key);

  @override
  State<feepayment> createState() => _feepaymentState();
}

class _feepaymentState extends State<feepayment> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    bool _isHidden = true;
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
            //               text: "FEE PAYMENT",
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
              text: "FEE PAYMENT",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                ),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.90,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        child: InkWell(
                          onTap: () => print("ciao"),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomTextWidget(
                                            text: "Class Name",
                                            Text_Color: AppColors.BLACK_COLOR,
                                            Text_fontSize: 1.4,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          CustomTextWidget(
                                            text: "Duration",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: "Status",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: "Fee Payment",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: "Payment Method",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: "Payment Gateway",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomTextWidget(
                                            text: " ",
                                            Text_Color: AppColors.BLACK_COLOR,
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          CustomTextWidget(
                                            text: "   :",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: "   :",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: "   :",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: "   :",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: "   :",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomTextWidget(
                                            text: " ",
                                            Text_Color: AppColors.BLACK_COLOR,
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          CustomTextWidget(
                                            text: " 45 mins",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: " Not Completed",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: " Not Completed",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: " Installments",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          CustomTextWidget(
                                            text: " Pay pal",
                                            Text_Color: AppColors.BLACK_COLOR
                                                .withOpacity(0.5),
                                            Text_fontSize: 1.3,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    width: 110.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.BLACK_COLOR
                                              .withOpacity(0.5),
                                          width: 2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(32.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {
                                          Get.toNamed('/CheckoutPage');
                                        },
                                        child: CustomTextWidget(
                                          text: "View Receipt",
                                          Text_fontWeight: FontWeight.bold,
                                          Text_Color: AppColors.BLACK_COLOR
                                              .withOpacity(0.8),
                                          Text_fontSize: 1.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // Column(
                              //   crossAxisAlignment: CrossAxisAlignment.stretch,
                              //   children: <Widget>[
                              //     CustomTextWidget(
                              //       text: "Class Name",
                              //       Text_Color: AppColors.BLACK_COLOR,
                              //       Text_fontWeight: FontWeight.bold,
                              //       Text_fontSize: 1.4,
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         CustomTextWidget(
                              //           text: "Duration",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: " : ",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: "45 mins",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         CustomTextWidget(
                              //           text: "Status ",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: " : ",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: "Not Completed",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         CustomTextWidget(
                              //           text: "Fee Payment",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: " : ",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: "Not Completed",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         CustomTextWidget(
                              //           text: "Payment Method",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: " : ",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: "installment",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //       ],
                              //     ),
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       children: [
                              //         CustomTextWidget(
                              //           text: "Payment Gateway",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: " : ",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //         CustomTextWidget(
                              //           text: "Pay pal",
                              //           Text_Color: AppColors.BLACK_COLOR
                              //               .withOpacity(0.5),
                              //           Text_fontWeight: FontWeight.bold,
                              //           Text_fontSize: 1.2,
                              //         ),
                              //       ],
                              //     ),
                              //   ],
                              // ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          )
        ])
      ]),
    );
  }

  void _togglePasswordView() {
    setState(() {});
  }
}
