import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import 'dart:io';
import '../../../utils/loader.dart';
import '../../../utils/showdialog.dart';
import '../../../widgets/Buttons/customButtons.dart';
import '../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../widgets/Text Fields/customTextField.dart';
import '../../../widgets/Text/customText.dart';
import '../../Home/view/home.dart';
import '../../Login Page/controller/logincontroller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

File? image;

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
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
            //             Padding(
            //               padding: const EdgeInsets.only(right: 20.0),
            //               child: CustomTextWidget(
            //                 text: "SETTINGS",
            //                 Text_Color: AppColors.BLACK_COLOR,
            //                 Text_fontSize: 1.4,
            //                 Text_fontWeight: FontWeight.bold,
            //               ),
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
              text: "SETTINGS",
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(
                  6.0,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: _imageFile == null
                          ? Container(
                              width: 75,
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet(
                                        backgroundColor: AppColors.ORANGE_COLOR,
                                        context: context,
                                        builder: ((builder) =>
                                            CustombottomSheet()));
                                  },
                                  child: Image.network(
                                    UserImage.read('UserImage'),
                                    scale: 1.4,
                                  ),
                                ),
                                // Image.asset(
                                //   AssetPaths.DRAW_PROFILE_IMAGE,
                                //   scale: 1.4,
                                // ),
                                // Image.network(
                                //   UserImage.read('UserImage'),
                                //   scale: 1.4,
                                // ),
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: AppColors.ORANGE_COLOR,
                                    context: context,
                                    builder: ((builder) =>
                                        CustombottomSheet()));
                              },
                              child: Container(
                                width: 75,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: FileImage(File(_imageFile!.path)),
                                      scale: 6),
                                ),
                              ),
                            ),
                      // title: CustomTextWidget(
                      //   text: "", //FirstName.read('FirstName'),
                      //   Text_Color: AppColors.BLACK_COLOR,
                      //   Text_fontSize: 1.2,
                      //   Text_fontWeight: FontWeight.bold,
                      // ),
                      subtitle: CustomTextWidget(
                        text: DisplayName.read('DisplayName'),
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
                          preffixIcon: Icon(Icons.person),
                          realonly_text: true,
                          Keyboard_Type: TextInputType.emailAddress,
                          field_BgColor: Colors.transparent,
                          field_Hint_Text: FirstName.read('FirstName'),
                          // Field_controller: firstname
                          //   ..text = FirstName.read('FirstName'),
                          EyesuffixIcon: InkWell(
                            child: Icon(Icons.edit),
                            onTap: () {
                              Get.toNamed('/Username');
                            },
                          ),
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
                          preffixIcon: Icon(Icons.person),
                          Keyboard_Type: TextInputType.emailAddress,
                          field_BgColor: Colors.transparent,
                          field_Hint_Text: LastName.read('LastName'),
                          realonly_text: true,
                          // Field_controller: lastname
                          //   ..text = LastName.read('LastName'),
                          EyesuffixIcon: InkWell(
                            child: Icon(Icons.edit),
                            onTap: () {
                              Get.toNamed('/Username');
                            },
                          ),
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
                          Keyboard_Type: TextInputType.emailAddress,
                          field_BgColor: Colors.transparent,
                          field_Hint_Text: UserEmail.read('UserEmail'),
                          realonly_text: true,
                          // Field_controller: email
                          //   ..text = UserEmail.read('UserEmail'),
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
                          preffixIcon: Icon(Icons.phone),
                          field_Hint_Text: "Phone Number",
                          Keyboard_Type: TextInputType.emailAddress,
                          field_BgColor: Colors.transparent,
                          realonly_text: true,
                          // Field_controller: email,
                          EyesuffixIcon: InkWell(
                            child: Icon(Icons.edit),
                            onTap: () {
                              Get.toNamed('/Number');
                            },
                          ),
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
                          preffixIcon: Icon(Icons.calendar_month),
                          field_Hint_Text: "Date of Birth",
                          Keyboard_Type: TextInputType.visiblePassword,
                          field_BgColor: Colors.transparent,
                          Field_controller: password,
                          realonly_text: true,
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
                          field_Hint_Text: "Change Password",
                          Keyboard_Type: TextInputType.visiblePassword,
                          field_BgColor: Colors.transparent,
                          Field_controller: password,
                          realonly_text: true,
                          EyesuffixIcon: InkWell(
                            child: Icon(Icons.edit),
                            onTap: () {
                              Get.toNamed('/PasswordChange');
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
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
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(
                  Icons.camera,
                  color: AppColors.ORANGE_COLOR,
                ),
                label: CustomTextWidget(
                  text: "CAMERA",
                  Text_Color: AppColors.WHITE_COLOR,
                  Text_fontSize: 1.3,
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
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

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile!;
    });
    if (_imageFile != null) {
      print("image upload");
      setState(() {
        image = File(_imageFile!.path);
      });
    } else {
      print("No Image Picked..");
    }
    Get.back();
  }

  Future<void> uploadImage() async {
    showLoading();
    var Token = token.read('token');
    var Id = UserId.read('UserId');
    var NAME = FirstName.read("FirstName");
    var Last = LastName.read("LastName");
    Map<String, String> header = {"Authorization": 'Bearer $Token'};
    var uri = Uri.parse(
        'https://mysticmandala.app/?gmgt_json_api=update_member_profile');
    var request = http.MultipartRequest('POST', uri);
    request.headers.addAll(header);
    request.fields['current_user_id'] = Id.toString();
    request.fields['access_token'] = Token.toString();
    request.fields['member_id'] = Id.toString();
    // UserName.write("Name", name);
    if (image != null) {
      var multipart =
          http.MultipartFile.fromPath('profile_member_image', image!.path);
      request.files.add(await multipart);
    }
    var streamResponse = await request
        .send()
        .timeout(const Duration(seconds: 12), onTimeout: () {
      stopLoading();
      ShowDialog("Message", "Time Out", Colors.red);
      return Future.error(404);
    });
    var response = await http.Response.fromStream(streamResponse);
    var obj = jsonDecode(response.body);
    if (response.statusCode == 200) {
      stopLoading();
      print(response.statusCode);
      print("Loaded Image");
      //  UserImage.write("UserImage", fetchLoginResponse.result.image);
      UserImage.write("UserImage", obj['result']['iamge']);
      Get.toNamed('/Home');
    } else {
      stopLoading();
      print(response.statusCode);
      print("NO Image Loaded");
    }
  }
}
