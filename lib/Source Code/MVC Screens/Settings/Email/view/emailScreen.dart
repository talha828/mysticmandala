import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Utils/appstrings.dart';
import '../../../../utils/appcolors.dart';
import '../../../../utils/assetpaths.dart';
import '../../../../widgets/Buttons/customButtons.dart';
import '../../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../../widgets/Text Fields/customTextField.dart';
import '../../../../widgets/Text/customText.dart';
import '../../../Home/view/home.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
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
        selectedItemColor: AppColors.BLACK_COLOR,
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
            //               text: "EMAIL",
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
              text: "EMAIL",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: AppColors.WHITE_COLOR,
                        ),
                        child: Center(
                          child: Image.asset(
                            AssetPaths.PROFILE_ICON,
                            scale: 1.4,
                          ),
                        ),
                      ),
                      title: CustomTextWidget(
                        text: "Mystic Mandala",
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.0,
                        Text_fontWeight: FontWeight.bold,
                      ),
                      subtitle: CustomTextWidget(
                        text:
                            "Lorem ipsum dolor sit amet\nconsectetur adipiscing elit.",
                        Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
                        Text_fontSize: 0.8,
                        Text_fontWeight: FontWeight.bold,
                      ),
                      trailing: Image.asset(
                        AssetPaths.QR_CODE_ICON,
                        scale: 1.4,
                      ),
                      isThreeLine: true,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 50.0,
                          top: 25.0,
                          child: Image.asset(
                            AssetPaths.FIELD_LINE,
                            scale: 1,
                          ),
                        ),
                        CustomTextField(
                          preffixIcon: Icon(Icons.email),
                          field_Hint_Text: "Change email",
                          Keyboard_Type: TextInputType.emailAddress,
                          field_BgColor: Colors.transparent,
                          Field_controller: email,
                          EyesuffixIcon: Icon(Icons.edit),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 50.0,
                          top: 25.0,
                          child: Image.asset(
                            AssetPaths.FIELD_LINE,
                            scale: 1,
                          ),
                        ),
                        CustomTextField(
                          preffixIcon: Icon(Icons.email),
                          field_Hint_Text: "Confirm email",
                          Keyboard_Type: TextInputType.emailAddress,
                          field_BgColor: Colors.transparent,
                          Field_controller: email,
                          EyesuffixIcon: Icon(Icons.edit),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 50.0,
                          top: 25.0,
                          child: Image.asset(
                            AssetPaths.FIELD_LINE,
                            scale: 1,
                          ),
                        ),
                        CustomTextField(
                          preffixIcon: Icon(Icons.lock),
                          field_Hint_Text: AppStrings.PASSWORD_HINT_TEXT,
                          Keyboard_Type: TextInputType.visiblePassword,
                          Obscure_Text: _isHidden,
                          EyesuffixIcon: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.BLACK_COLOR,
                              )),
                          field_BgColor: Colors.transparent,
                          Field_controller: password,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 85.0, right: 85.0, top: 80.0, bottom: 25.0),
                      child: GeneralButton(
                        Btn_Background_color: AppColors.ORANGE_COLOR,
                        Btn_TextColor: AppColors.WHITE_COLOR,
                        Btn_TextName: "Save Changes",
                        ontapBtn: () {},
                      ),
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

  void _togglePasswordView() {
    setState(() {});
  }
}
