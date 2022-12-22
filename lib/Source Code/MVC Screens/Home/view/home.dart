import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/MVC%20Screens/Home/view/videos.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../../../utils/appcolors.dart';
import '../../../utils/assetpaths.dart';
import '../../../utils/homexitdialog.dart';
import '../../../widgets/Text/customText.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';
import 'package:scroll_page_view/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import '../../Blogs/All Blogs/view/post.dart';
import '../../Login Page/controller/logincontroller.dart';
import '../../Videos/view/videos.dart';
import '../../logout/controller/logoutcontroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final UserLogout = Get.put(LogoutController());

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Post postservice = Post();
  MyVideos videoserv = MyVideos();
  int CurrentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = VideoPlayerController.network(
        'https://mysticmandala.app/wp-content/uploads/2020/12/About-Mystic-Mandala-1.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    super.initState();
    postservice.getAllPost();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      Future.delayed(const Duration(seconds: 3), () {
        // Here you can write your code
        setState(() {
          // Here you can write your code for open new view
          if (CurrentPage < 3) {
            CurrentPage++;
          } else {
            CurrentPage = 0;
          }
          _pageController.animateToPage(
            CurrentPage,
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeIn,
          );
        });
      });
    });
  }

  final Uri FbUrl = Uri.parse('https://www.facebook.com/MysticMandalaPlano');
  final Uri InstaUrl =
      Uri.parse('https://www.instagram.com/mysticmandalaplanotx/');
  // List images = [
  //   "assets/images/banner1.jpg",
  //   "assets/images/banner2.jpg",
  //   "assets/images/banner3.jpg",
  //   "assets/images/banner4.JPG",
  // ];
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

  Future<bool?> WarningMsg(BuildContext context) async {
    showMyDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          print("Back Button Pressed!!");
          final PopUpMsg = await WarningMsg(context);
          return PopUpMsg ?? false;
        },
        child: Scaffold(
            //    backgroundColor: AppColors.LIGHT_ORANGE_COLOR,
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
            body: Stack(
              children: [
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
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0))),
                      child: SafeArea(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 22.0, right: 16.0, top: 10.0),
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
                                        scale: 1.0,
                                      ));
                                }),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 75.0),
                                  child: CustomTextWidget(
                                    text: "HOME",
                                    Text_Color: AppColors.BLACK_COLOR,
                                    Text_fontSize: 1.4,
                                    Text_fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                    onTap: () => _launchInstaUrl(),
                                    child: Image.asset(
                                        AssetPaths.HOME_INSTA_ICON)),
                                SizedBox(
                                  width: 8.0,
                                ),
                                GestureDetector(
                                    onTap: () => _launchFbUrl(),
                                    child:
                                        Image.asset(AssetPaths.HOME_FB_ICON)),
                                SizedBox(
                                  width: 4.0,
                                ),
                                // InkWell(
                                //   child: Image.asset(AssetPaths.HOME_EMAIL_ICON),
                                //   onTap: () {
                                //     Get.toNamed('/Messages');
                                //   },
                                // ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed('/Notifications');
                                  },
                                  child: Container(
                                    height: 32.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                      color: AppColors.LIGHT_ORANGE_COLOR,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Stack(children: <Widget>[
                                        new Icon(
                                          Icons.notifications,
                                          color: AppColors.BLACK_COLOR,
                                        ),
                                        new Positioned(
                                          // draw a red marble
                                          top: 0.0,
                                          right: 0.0,
                                          child: new Icon(Icons.brightness_1,
                                              size: 8.0,
                                              color: Colors.redAccent),
                                        )
                                      ]),
                                    ),
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
                          Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            child: CustomScrollView(
                              physics: const BouncingScrollPhysics(),
                              slivers: [
                                SliverToBoxAdapter(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.50,
                                    width: double.infinity,
                                    child: Container(
                                      child: FutureBuilder<List>(
                                        future: postservice.getAllPost(),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            if (snapshot.data?.length == 0) {
                                              return Center(
                                                child: Text("No banners"),
                                              );
                                            }
                                            return PageView.builder(
                                                controller: _pageController,
                                                physics:
                                                    BouncingScrollPhysics(),
                                                itemCount:
                                                    snapshot.data!.length,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (context, i) {
                                                  return Container(
                                                    child: Column(children: [
                                                      // Align(
                                                      //   child: CustomTextWidget(
                                                      //     text: snapshot.data![i]['_embedded']
                                                      //             ['wp:term'][1]['name']
                                                      //         .toString(),
                                                      //     Text_Color: AppColors.BLACK_COLOR
                                                      //         .withOpacity(0.5),
                                                      //     Text_fontSize: 1.2,
                                                      //     Text_fontWeight: FontWeight.bold,
                                                      //   ),
                                                      //   alignment: Alignment.topLeft,
                                                      // ),
                                                      // snapshot.data![i]['title']['rendered'] ==
                                                      //         "Featured"
                                                      //     ?
                                                      snapshot.data?[i]['tags']
                                                                  .toString() ==
                                                              '[59]'
                                                          ? Column(
                                                              children: [
                                                                //  Text("Yh 59 Tag waly  hai"),
                                                                // Align(
                                                                //   child: CustomTextWidget(
                                                                //     text: snapshot.data?[i]
                                                                //             ['_embedded']['author'][0]
                                                                //         ['name'],
                                                                //     Text_Color: AppColors.BLACK_COLOR
                                                                //         .withOpacity(0.5),
                                                                //     Text_fontSize: 1.2,
                                                                //     Text_fontWeight: FontWeight.bold,
                                                                //   ),
                                                                //   alignment: Alignment.topLeft,
                                                                // ),
                                                                // Align(
                                                                //   child: CustomTextWidget(
                                                                //     text: snapshot.data?[i]['tags']
                                                                //         .toString(),
                                                                //     Text_Color: AppColors.BLACK_COLOR
                                                                //         .withOpacity(0.5),
                                                                //     Text_fontSize: 1.2,
                                                                //     Text_fontWeight: FontWeight.bold,
                                                                //   ),
                                                                //   alignment: Alignment.topLeft,
                                                                // ),
                                                                // SizedBox(
                                                                //   height: 12.0,
                                                                // ),
                                                                Container(
                                                                    child: Image.network(
                                                                        snapshot.data?[i]['_embedded']['wp:featuredmedia'][0]
                                                                            [
                                                                            'source_url'],
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                // SizedBox(
                                                                //   height: 12.0,
                                                                // ),
                                                                // CustomTextWidget(
                                                                //   text: snapshot.data![i]['title']
                                                                //       ['rendered'],
                                                                //   Text_Color: AppColors.BLACK_COLOR,
                                                                //   Text_fontSize: 1.2,
                                                                //   Text_fontWeight: FontWeight.bold,
                                                                // ),
                                                                // SizedBox(
                                                                //   height: 12.0,
                                                                // ),
                                                                // Text(
                                                                //   snapshot.data![i]['content']
                                                                //           ['rendered']
                                                                //       .toString()
                                                                //       .replaceAll("<p>", "")
                                                                //       .replaceAll("</p>", "")
                                                                //       .replaceAll("<b>", "")
                                                                //       .replaceAll("</b>", "")
                                                                //       .replaceAll("<i>", "")
                                                                //       .replaceAll("<br />", "")
                                                                //       .replaceAll("</i>", "")
                                                                //       .replaceAll("&nbsp;", " "),
                                                                //   maxLines: 14,
                                                                //   overflow: TextOverflow.ellipsis,
                                                                //   textAlign: TextAlign.justify,
                                                                //   style: TextStyle(
                                                                //       fontSize: 16.0,
                                                                //       color: AppColors.BLACK_COLOR),
                                                                // ),
                                                                // InkWell(
                                                                //   onTap: () {
                                                                //     Navigator.push(
                                                                //         context,
                                                                //         MaterialPageRoute(
                                                                //             builder: (context) =>
                                                                //                 BlogDetails(
                                                                //                     data: snapshot
                                                                //                         .data?[i])));
                                                                //   },
                                                                //   child: Row(
                                                                //     children: [
                                                                //       CustomTextWidget(
                                                                //         text: "Continue Reading",
                                                                //         Text_Color:
                                                                //             AppColors.BLACK_COLOR,
                                                                //         Text_fontSize: 1.2,
                                                                //         Text_fontWeight:
                                                                //             FontWeight.bold,
                                                                //       ),
                                                                //       Icon(
                                                                //         Icons.arrow_right_alt,
                                                                //         color: Colors.black,
                                                                //       ),
                                                                //     ],
                                                                //   ),
                                                                // ),
                                                                // SizedBox(
                                                                //   height: 18.0,
                                                                // ),
                                                              ],
                                                            )
                                                          : Container(),
                                                    ]),
                                                  );
                                                });
                                          } else if (snapshot.hasError) {
                                            return Center(
                                              child: Text(
                                                  snapshot.error.toString()),
                                            );
                                          } else {
                                            return Center(
                                              child: SpinKitCircle(itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    color: index.isEven
                                                        ? AppColors.ORANGE_COLOR
                                                        : AppColors.BLACK_COLOR,
                                                  ),
                                                );
                                              }),
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                top: 30.0,
                                bottom: 30.0),
                            child: CustomTextWidget(
                              text: "Hello ${DisplayName.read('DisplayName')}",
                              Text_Color: Colors.black,
                              Text_fontSize: 2.0,
                              Text_fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, top: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomTextWidget(
                                      text: "BLOGS",
                                      Text_Color: AppColors.BLACK_COLOR,
                                      Text_fontSize: 1.4,
                                      Text_fontWeight: FontWeight.bold,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed('/AllBlogs');
                                      },
                                      child: Container(
                                        width: 65.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          //  color: AppColors.ORANGE_COLOR,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: CustomTextWidget(
                                            text: "View All",
                                            Text_Color: AppColors.BLACK_COLOR,
                                            Text_fontSize: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   height: 15.0,
                                // ),
                                // Align(
                                //   alignment: Alignment.topLeft,
                                //   child: CustomTextWidget(
                                //     text: "Weekly Group Classes",
                                //     Text_Color: AppColors.BLACK_COLOR,
                                //     Text_fontSize: 1.2,
                                //     Text_fontWeight: FontWeight.bold,
                                //   ),
                                // ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     CustomTextWidget(
                                //       text: "By Vijay Moksha",
                                //       Text_Color:
                                //           AppColors.BLACK_COLOR.withOpacity(0.5),
                                //       Text_fontSize: 1.0,
                                //       Text_fontWeight: FontWeight.bold,
                                //     ),
                                //     CustomTextWidget(
                                //       text: "Published on 11 /02 /2022",
                                //       Text_Color:
                                //           AppColors.BLACK_COLOR.withOpacity(0.5),
                                //       Text_fontSize: 1.0,
                                //       Text_fontWeight: FontWeight.bold,
                                //     ),
                                //   ],
                                // ),
                                // SizedBox(
                                //   height: 15.0,
                                // ),
                                Container(
                                  height: 200.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          AssetPaths.NEW_BLOG_1_IMAGE),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                CustomTextWidget(
                                  text:
                                      "To develop a Self compassionate nature is the first step a person needs to take to start their meditative journey. For allowing this to arise within us we practice the Compassionate Meditation , where we move away from the feeling of being rushed and the uncomfortable feelings of impateince. We move towards positivity and life-affirming feelings.",
                                  Text_Color: AppColors.BLACK_COLOR,
                                  Text_fontSize: 1.1,
                                ),
                                // SizedBox(
                                //   height: 10.0,
                                // ),
                                // CustomTextWidget(
                                //   text:
                                //       "Here is how you can start this practice on a daily basis\n01. Sit comfortably in Sukhasana and close your eyes. Make sure the body is relaxed and the spine is straight, the shoulders relaxed. Bring the mind to someone who you love and who loves you equally. This person could be your lover, your friend or someone who you feel relaxed with - Your teachers your guide, your best friend.\n02.  Imagine this person is right infant of you, in the same way as you are sitting, and they are sending you their love and acceptance. You can feel this love radiating through your being. Next, you imagine more of this love and acceptance enveloping you by visualizing more people like this person - all those that love and accept you, they are surrounding you.\n03. Stay with this moment for as long as you can.\n04. Now that you are filled with love, with acceptance and a feeling of being surrounded by those that love you, you send this outward. With every breath you take, send out love in each exhalation, breathe in love with each inhalation. Send your love to those that love you, all the people that like you, the people you like, all the people you do not like, all the people that you do not know or have never met.\n05. Once you have sent this loving energy to all the people, simply sit there and remain in this state of unconditional Compassion.\nThis meditation is a good starting point to release angst, anger and frustrations in human relations.",
                                //   Text_Color: AppColors.BLACK_COLOR,
                                //   Text_fontSize: 1.1,
                                // ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomTextWidget(
                                      text: "VIDEOS",
                                      Text_Color: AppColors.BLACK_COLOR,
                                      Text_fontSize: 1.4,
                                      Text_fontWeight: FontWeight.bold,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed('/MediaSelect');
                                      },
                                      child: Container(
                                        width: 65.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          //   color: AppColors.BLACK_COLOR,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(6.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: CustomTextWidget(
                                            text: "View All",
                                            Text_Color: AppColors.BLACK_COLOR,
                                            Text_fontSize: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  height: 200.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          AssetPaths.VIJAY_VIDEO_IMAGE),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 90.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              AssetPaths.VIDEOS1_IMAGE),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 90.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              AssetPaths.VIDEOS2_IMAGE),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 90.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              AssetPaths.VIDEOS3_IMAGE),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 90.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              AssetPaths.VIDEOS4_IMAGE),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 90.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              AssetPaths.VIDEOS5_IMAGE),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 90.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              AssetPaths.VIDEOS6_IMAGE),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //////////////////////////////////////////////////////////////////////////
                                Container(
                                  height: 200.0,
                                  child: _controller.value.isInitialized
                                      ? AspectRatio(
                                          aspectRatio:
                                              _controller.value.aspectRatio,
                                          child: VideoPlayer(_controller),
                                        )
                                      : Container(),
                                ),
                                //////////////
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomTextWidget(
                                      text: "AUDIOS",
                                      Text_Color: AppColors.BLACK_COLOR,
                                      Text_fontSize: 1.4,
                                      Text_fontWeight: FontWeight.bold,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed('/Audios');
                                      },
                                      child: Container(
                                        width: 65.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          //  color: AppColors.BLACK_COLOR,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: CustomTextWidget(
                                            text: "View All",
                                            Text_Color: AppColors.BLACK_COLOR,
                                            Text_fontSize: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed('/MediMusic');
                                  },
                                  child: Container(
                                    height: 125.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            AssetPaths.AUDIO_PLAYER2_IMAGE),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed('/HertzMusic');
                                  },
                                  child: Container(
                                    height: 125.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            AssetPaths.AUDIO_PLAYER3_IMAGE),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed('/SleepMusic');
                                  },
                                  child: Container(
                                    height: 125.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            AssetPaths.AUDIO_PLAYER1_IMAGE),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomTextWidget(
                                      text: "EVENTS",
                                      Text_Color: AppColors.BLACK_COLOR,
                                      Text_fontSize: 1.4,
                                      Text_fontWeight: FontWeight.bold,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed('/Events');
                                      },
                                      child: Container(
                                        width: 65.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          //  color: AppColors.BLACK_COLOR,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(8.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: CustomTextWidget(
                                            text: "View All",
                                            Text_Color: AppColors.BLACK_COLOR,
                                            Text_fontSize: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                ListTile(
                                  leading: Transform.scale(
                                    scale: 1.6,
                                    child: Image.asset(AssetPaths.EVENT_IMAGE3),
                                  ), // fixed width and height child: Image.
                                  title: Align(
                                    alignment: Alignment.center,
                                    child: CustomTextWidget(
                                      text: " Vastu and Feng Shui",
                                      Text_Color: AppColors.BLACK_COLOR,
                                      Text_fontSize: 1.2,
                                      Text_fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CustomTextWidget(
                                        text:
                                            "   SplashScreenA one hour consultation by zoom.",
                                        Text_Color: AppColors.BLACK_COLOR
                                            .withOpacity(0.5),
                                        Text_fontSize: 1.0,
                                        Text_fontWeight: FontWeight.bold,
                                        Text_Align: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            height: 20.0,
                                            child: Center(
                                              child: CustomTextWidget(
                                                text: "View More",
                                                Text_Color:
                                                    AppColors.ORANGE_COLOR,
                                                Text_fontSize: 1.1,
                                                Text_fontWeight:
                                                    FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16.0,
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 20.0,
                                            child: Center(
                                              child: CustomTextWidget(
                                                text: "Buy Tickets",
                                                Text_Color:
                                                    AppColors.ORANGE_COLOR,
                                                Text_fontSize: 1.1,
                                                Text_fontWeight:
                                                    FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  isThreeLine: true,
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(42.0)),
                                    ),
                                    child: Transform.scale(
                                      scale: 1.6,
                                      child:
                                          Image.asset(AssetPaths.EVENT_IMAGE2),
                                    ),
                                  ), // fixed width and height child: Image.
                                  title: Align(
                                    alignment: Alignment.center,
                                    child: CustomTextWidget(
                                      text: " Retreats and Workshops",
                                      Text_Color: AppColors.BLACK_COLOR,
                                      Text_fontSize: 1.2,
                                      Text_fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomTextWidget(
                                        text:
                                            "    The only way to be guided into that space",
                                        Text_Color: AppColors.BLACK_COLOR
                                            .withOpacity(0.5),
                                        Text_fontSize: 1.0,
                                        Text_fontWeight: FontWeight.bold,
                                        Text_Align: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            height: 20.0,
                                            child: Center(
                                              child: CustomTextWidget(
                                                text: "View More",
                                                Text_Color:
                                                    AppColors.ORANGE_COLOR,
                                                Text_fontSize: 1.1,
                                                Text_fontWeight:
                                                    FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16.0,
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 20.0,
                                            child: Center(
                                              child: CustomTextWidget(
                                                text: "Buy Tickets",
                                                Text_Color:
                                                    AppColors.ORANGE_COLOR,
                                                Text_fontSize: 1.1,
                                                Text_fontWeight:
                                                    FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  isThreeLine: true,
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                ListTile(
                                  leading: Transform.scale(
                                    scale: 1.6,
                                    child: Image.asset(AssetPaths.EVENT_IMAGE1),
                                  ), // fixed width and height child: Image.
                                  title: Align(
                                    alignment: Alignment.center,
                                    child: CustomTextWidget(
                                      text: " Corporate Wellness Classes",
                                      Text_Color: AppColors.BLACK_COLOR,
                                      Text_fontSize: 1.2,
                                      Text_fontWeight: FontWeight.bold,
                                      Text_Align: TextAlign.center,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomTextWidget(
                                        text:
                                            "   Our corporate wellness classes provide a stress",
                                        Text_Color: AppColors.BLACK_COLOR
                                            .withOpacity(0.5),
                                        Text_fontSize: 1.0,
                                        Text_fontWeight: FontWeight.bold,
                                        Text_Align: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            height: 20.0,
                                            child: Center(
                                              child: CustomTextWidget(
                                                text: "View More",
                                                Text_Color:
                                                    AppColors.ORANGE_COLOR,
                                                Text_fontSize: 1.1,
                                                Text_fontWeight:
                                                    FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16.0,
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 20.0,
                                            child: Center(
                                              child: CustomTextWidget(
                                                text: "Buy Tickets",
                                                Text_Color:
                                                    AppColors.ORANGE_COLOR,
                                                Text_fontSize: 1.1,
                                                Text_fontWeight:
                                                    FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  isThreeLine: true,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed('/Membership');
                                  },
                                  child: Container(
                                    width: 230.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        color: AppColors.ORANGE_COLOR,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(28.0))),
                                    child: Center(
                                      child: CustomTextWidget(
                                        text: "Subscribe Now",
                                        Text_Color: AppColors.WHITE_COLOR,
                                        Text_fontSize: 1.4,
                                        Text_fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            )));
  }

  Future<void> _launchFbUrl() async {
    if (await launchUrl(FbUrl)) {
      throw 'Could not launch';
    }
  }

  Future<void> _launchInstaUrl() async {
    if (await launchUrl(InstaUrl)) {
      throw 'Could not launch';
    }
  }

  // Future<void> precache() async {
//   //   for (var image in ) {
//   //     precacheImage(image, context);
//   //   }
//   // }
}
//
// Widget _imageView(String image) {
//   return ClipRRect(
//     clipBehavior: Clip.antiAlias,
//     child: Image.asset(image, fit: BoxFit.cover),
//   );
// }

Widget drawer() {
  return Container(
    child: Drawer(
      child: Container(
        color: AppColors.ORANGE_COLOR,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65.0),
              child: Container(
                height: 120.0,
                width: 120.0,
                color: AppColors.LIGHT_ORANGE_COLOR,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Center(
                            child: Transform.scale(
                          scale: 1.5,
                          child: Image.network(
                            UserImage.read('UserImage'),
                            scale: 1.4,
                          ),
                        )),
                      ),
                      // title: CustomTextWidget(
                      //   text: "Mystic Mandala",
                      //   Text_Color: AppColors.BLACK_COLOR,
                      //   Text_fontSize: 1.0,
                      //   Text_fontWeight: FontWeight.bold,
                      // ),
                      subtitle: CustomTextWidget(
                        text: DisplayName.read('DisplayName'),
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontSize: 1.2,
                      ),
                      isThreeLine: true,
                    ),
                  ),
                  // ListTile(
                  //   leading: Container(
                  //     width: 75,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  //     ),
                  //     child: Container(
                  //       width: 80.0,
                  //       height: 80.0,
                  //       decoration: BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         image: DecorationImage(
                  //             fit: BoxFit.cover,
                  //             image: AssetImage(AssetPaths.DRAW_PROFILE_IMAGE),
                  //             scale: 4),
                  //       ),
                  //     ),
                  //   ),
                  //   // title: CustomTextWidget(
                  //   //   text: "Mystic Mandala",
                  //   //   Text_Color: AppColors.BLACK_COLOR,
                  //   //   Text_fontSize: 1.0,
                  //   //   Text_fontWeight: FontWeight.bold,
                  //   // ),
                  //   subtitle: CustomTextWidget(
                  //     text:
                  //         "Muhammad Kamran Yaqoob SZABIST", //UserEmail.read('UserEmail'),
                  //     Text_Color: AppColors.BLACK_COLOR,
                  //     Text_fontSize: 1.2,
                  //     Text_fontWeight: FontWeight.bold,
                  //   ),
                  //   isThreeLine: true,
                  // ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10.0),
            //   child: ListTile(
            //     leading: Image.asset(
            //       AssetPaths.DASHBOARD_IMAGE,
            //       color: AppColors.WHITE_COLOR,
            //     ),
            //     title: CustomTextWidget(
            //       text: "Dashboard",
            //       Text_Color: AppColors.BLACK_COLOR,
            //       Text_fontSize: 1.1,
            //     ),
            //     onTap: () {
            //       Get.back();
            //       Get.toNamed('/Dashboard');
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: Image.asset(AssetPaths.DRAW_GURU_IMAGE),
                title: CustomTextWidget(
                  text: "Guru",
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontSize: 1.1,
                ),
                onTap: () {
                  Get.back();
                  Get.toNamed('/AboutGuru');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: Image.asset(AssetPaths.MEMBER_IMAGE),
                title: CustomTextWidget(
                  text: "Subscription Details",
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontSize: 1.1,
                ),
                onTap: () {
                  Get.back();
                  Get.toNamed('/MembershipDetails');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: Image.asset(AssetPaths.SESSION_SCHDL_IMAGE),
                title: CustomTextWidget(
                  text: "Session Booking",
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontSize: 1.1,
                ),
                onTap: () {
                  Get.back();
                  Get.toNamed('/SessionBook');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: Icon(
                  Icons.newspaper,
                  color: Colors.white,
                ),
                title: CustomTextWidget(
                  text: "News/Events",
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontSize: 1.1,
                ),
                onTap: () {
                  Get.back();
                  Get.toNamed('/Eventsscreens');
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10.0),
            //   child: ListTile(
            //     leading: Image.asset(AssetPaths.PAYMENT_IMAGE),
            //     title: CustomTextWidget(
            //       text: "Fee Payment",
            //       Text_Color: AppColors.BLACK_COLOR,
            //       Text_fontSize: 1.1,
            //     ),
            //     onTap: () {
            //       Get.back();
            //       Get.toNamed('/CheckoutPage');
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: Image.asset(AssetPaths.NOTICE_IMAGE),
                title: CustomTextWidget(
                  text: "Help & Support",
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontSize: 1.1,
                ),
                onTap: () {
                  //  Get.back();
                  // Get.toNamed('/CalCalender');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle_rounded,
                  color: AppColors.WHITE_COLOR,
                ),
                title: CustomTextWidget(
                  text: "Account Settings",
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontSize: 1.1,
                ),
                onTap: () {
                  // Get.back();
                  Get.toNamed('/ProfileSettings');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                leading: Icon(
                  Icons.history_rounded,
                  color: AppColors.WHITE_COLOR,
                ),
                title: CustomTextWidget(
                  text: "Subscription History",
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontSize: 1.1,
                ),
                onTap: () {
                  //    Get.back();
                  // Get.toNamed('/CalCalender');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 35.0,
                  color: AppColors.WHITE_COLOR.withOpacity(0.5),
                ),
                title: CustomTextWidget(
                  text: "Log Out",
                  Text_Color: AppColors.WHITE_COLOR,
                  Text_fontSize: 1.4,
                  Text_fontWeight: FontWeight.bold,
                ),
                onTap: () {
                  Get.back();
                  UserLogout.Logout();
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
