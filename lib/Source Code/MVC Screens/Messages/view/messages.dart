import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../widgets/Buttons/customButtons.dart';
import '../../../widgets/DropDown Field/dropdown.dart';
import '../../../widgets/Text Fields/customTextField.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  TextEditingController subject = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController message = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
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
                        left: 22.0, right: 24.0, top: 10.0),
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
                          text: "MESSAGES",
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.4,
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
              physics: const BouncingScrollPhysics(),
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: CustomTextWidget(
                            text: "Name ",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.ORANGE_COLOR,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: TextField(
                              controller: name,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                  fontSize: 18.0, color: AppColors.BLACK_COLOR),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                hintText: "(First.Last)",
                                hintStyle: TextStyle(
                                    color:
                                        AppColors.WHITE_COLOR.withOpacity(0.7),
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: CustomTextWidget(
                            text: "Email",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.ORANGE_COLOR,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: TextField(
                              controller: email,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                  fontSize: 18.0, color: AppColors.BLACK_COLOR),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                hintText: "Your Email",
                                hintStyle: TextStyle(
                                    color:
                                        AppColors.WHITE_COLOR.withOpacity(0.7),
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: CustomTextWidget(
                            text: "Phone",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.ORANGE_COLOR,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: TextField(
                              controller: phone,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 18.0, color: AppColors.BLACK_COLOR),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                hintText: "Your Phone",
                                hintStyle: TextStyle(
                                    color:
                                        AppColors.WHITE_COLOR.withOpacity(0.7),
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: CustomTextWidget(
                            text: "Message to",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CustomDropDown(),
                        SizedBox(
                          height: 16.0,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: CustomTextWidget(
                            text: "Subject",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.ORANGE_COLOR,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: TextField(
                              controller: subject,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                  fontSize: 18.0, color: AppColors.BLACK_COLOR),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                hintText: "Add Subject",
                                hintStyle: TextStyle(
                                    color:
                                        AppColors.WHITE_COLOR.withOpacity(0.7),
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: CustomTextWidget(
                            text: "Your Message here",
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontSize: 1.2,
                            Text_fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: AppColors.ORANGE_COLOR,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: TextField(
                              controller: message,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                  fontSize: 18.0, color: AppColors.BLACK_COLOR),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.ORANGE_COLOR),
                                ),
                                hintText: "Type your message here",
                                hintStyle: TextStyle(
                                    color:
                                        AppColors.WHITE_COLOR.withOpacity(0.7),
                                    fontSize: 16.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 40.0,
                            right: 40.0,
                            top: 16.0,
                          ),
                          child: GeneralButton(
                            Btn_Background_color: AppColors.BLACK_COLOR,
                            Btn_TextColor: AppColors.WHITE_COLOR,
                            Btn_TextName: "Submit",
                            ontapBtn: () {
                              //   Get.toNamed('/TermsScreen');
                            },
                          ),
                        ),
                        Image.asset(
                          AssetPaths.LOGIN_LOGO_IMAGE,
                          scale: 1.8,
                        ),
                      ],
                    ),
                  )),
            ),
          )
        ])
      ]),
    );
  }
}
