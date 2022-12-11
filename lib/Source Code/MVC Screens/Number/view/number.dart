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

class number extends StatefulWidget {
  const number({Key? key}) : super(key: key);

  @override
  State<number> createState() => _numberState();
}

class _numberState extends State<number> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController number = TextEditingController();
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
            //               text: "NUMBER",
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
              text: "NUMBER",
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
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  backgroundColor: AppColors.ORANGE_COLOR,
                                  context: context,
                                  builder: ((builder) => CustombottomSheet()));
                            },
                            child: Image.asset(
                              AssetPaths.DRAW_PROFILE_IMAGE,
                              scale: 1.4,
                            ),
                          ),
                        ),
                      ),
                      // title: CustomTextWidget(
                      //   text: "Mystic Mandala",
                      //   Text_Color: AppColors.BLACK_COLOR,
                      //   Text_fontSize: 1.0,
                      //   Text_fontWeight: FontWeight.bold,
                      // ),
                      subtitle: CustomTextWidget(
                        text: "Mystic Mandala", //UserEmail.read('UserEmail'),
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.2,
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
                          preffixIcon: Icon(Icons.phone),
                          field_Hint_Text: "Enter new number",
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
                          Field_controller: number,
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
                          field_Hint_Text: "Enter Your Password",
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

  Widget CustombottomSheet() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.BLACK_COLOR,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomTextWidget(
              text: "CHOOSE PROFILE PHOTO",
              Text_Color: AppColors.WHITE_COLOR,
              Text_fontSize: 1.3,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  //      takePhoto(ImageSource.camera);
                },
                icon: Icon(
                  Icons.camera,
                  color: AppColors.ORANGE_COLOR,
                ),
                label: CustomTextWidget(
                  text: "CAMERA_TEXT",
                  Text_Color: AppColors.WHITE_COLOR,
                  Text_fontSize: 1.3,
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  //   takePhoto(ImageSource.gallery);
                },
                icon: Icon(
                  Icons.image,
                  color: AppColors.ORANGE_COLOR,
                ),
                label: CustomTextWidget(
                  text: "GALLERY",
                  Text_Color: AppColors.WHITE_COLOR,
                  Text_fontSize: 1.3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
