import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/MVC%20Screens/Blogs/All%20Blogs/view/post.dart';

import '../../../../Utils/appstrings.dart';
import '../../../../utils/appcolors.dart';
import '../../../../utils/assetpaths.dart';
import '../../../../widgets/Custom App bar/custom_app_bar.dart';
import '../../../../widgets/Text/customText.dart';
import '../../../Home/view/home.dart';
import '../../Blog Details/view/blogdetails.dart';

class AllBlogs extends StatefulWidget {
  const AllBlogs({Key? key}) : super(key: key);

  @override
  State<AllBlogs> createState() => _AllBlogsState();
}

class _AllBlogsState extends State<AllBlogs> {
  Post postservice = Post();

  double currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postservice.getAllPost();
  }

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
            //               text: "BLOGS",
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
            //         padding:
            //             const EdgeInsets.only(left: 22.0, right: 5.0, top: 5.0),
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
            //                     scale: 1.0,
            //                   ));
            //             }),
            //             Spacer(),
            //             Padding(
            //               padding: const EdgeInsets.only(left: 40.0),
            //               child: CustomTextWidget(
            //                 text: "BLOGS",
            //                 Text_Color: AppColors.BLACK_COLOR,
            //                 Text_fontSize: 1.4,
            //                 Text_fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             Spacer(),
            //             InkWell(
            //               onTap: () async {
            //                 Get.back();
            //               },
            //               child: Container(
            //                 width: 72,
            //                 decoration: const BoxDecoration(
            //                   color: Colors.transparent,
            //                 ),
            //                 alignment: Alignment.center,
            //                 child: Image.asset(
            //                   AssetPaths.WHITE_BACK_BTN_IMAGE,
            //                   scale: 1.2,
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            CustomAppBar(
              text: "BLOGS",
            ),
          ]),
          // Expanded(
          //   child: SingleChildScrollView(
          //     child: Padding(
          //       padding: const EdgeInsets.all(14.0),
          //       child: Column(
          //         children: [
          //           Container(
          //             child: Column(
          //               children: [
          //                 // SizedBox(
          //                 //   height: 12.0,
          //                 // ),
          //                 // Row(
          //                 //   children: [
          //                 //     CustomTextWidget(
          //                 //       text: "By Vijay Moksha",
          //                 //       Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
          //                 //       Text_fontSize: 1.0,
          //                 //       Text_fontWeight: FontWeight.bold,
          //                 //     ),
          //                 //     Spacer(),
          //                 //     CustomTextWidget(
          //                 //       text: "Published on 11 /02 /2022",
          //                 //       Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
          //                 //       Text_fontSize: 1.0,
          //                 //       Text_fontWeight: FontWeight.bold,
          //                 //     ),
          //                 //   ],
          //                 // ),
          //                 SizedBox(
          //                   height: 14.0,
          //                 ),
          //                 Container(
          //                   height: 230.0,
          //                   width: double.infinity,
          //                   decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius.all(Radius.circular(10.0)),
          //                     image: DecorationImage(
          //                       image: AssetImage(AssetPaths.NEW_BLOG_1_IMAGE),
          //                       fit: BoxFit.fill,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   height: 14.0,
          //                 ),
          //                 Text(
          //                   "To develop a Self compassionate nature is the first step a person needs to take to start their meditative journey. For allowing this to arise within us we practice the Compassionate Meditation , where we move away from the feeling of being rushed and the uncomfortable feelings of impateince. We move towards positivity and life-affirming feelings.",
          //                   style: TextStyle(
          //                     fontSize: 18.0,
          //                     color: Colors.black.withOpacity(0.5),
          //                     overflow: TextOverflow.ellipsis,
          //                   ),
          //                   maxLines: 5,
          //                   textAlign: TextAlign.justify,
          //                 ),
          //                 InkWell(
          //                   onTap: () {
          //                     Get.toNamed('/BlogDetails3');
          //                   },
          //                   child: Row(
          //                     children: [
          //                       CustomTextWidget(
          //                         text: "Continue Reading",
          //                         Text_Color: AppColors.BLACK_COLOR,
          //                         Text_fontSize: 1.2,
          //                         Text_fontWeight: FontWeight.bold,
          //                       ),
          //                       Icon(
          //                         Icons.arrow_right_alt,
          //                         color: Colors.black,
          //                       ),
          //                     ],
          //                   ),
          //                 )
          //                 // CustomTextWidget(
          //                 //   text:
          //                 //       "",
          //                 //   Text_Color: Colors.black.withOpacity(0.5),
          //                 //   Text_fontSize: 1.2,
          //                 //
          //                 // ),
          //               ],
          //             ),
          //           ),
          //           SizedBox(
          //             height: 14.0,
          //           ),
          //           Container(
          //             child: Column(
          //               children: [
          //                 Align(
          //                   alignment: Alignment.topLeft,
          //                   child: CustomTextWidget(
          //                     text: "You are not the Doer",
          //                     Text_Color: Colors.black,
          //                     Text_fontSize: 1.4,
          //                     Text_fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 // SizedBox(
          //                 //   height: 12.0,
          //                 // ),
          //                 // Row(
          //                 //   children: [
          //                 //     CustomTextWidget(
          //                 //       text: "By Vijay Moksha",
          //                 //       Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
          //                 //       Text_fontSize: 1.0,
          //                 //       Text_fontWeight: FontWeight.bold,
          //                 //     ),
          //                 //     Spacer(),
          //                 //     CustomTextWidget(
          //                 //       text: "Published on 11 /02 /2022",
          //                 //       Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
          //                 //       Text_fontSize: 1.0,
          //                 //       Text_fontWeight: FontWeight.bold,
          //                 //     ),
          //                 //   ],
          //                 // ),
          //                 SizedBox(
          //                   height: 14.0,
          //                 ),
          //                 Container(
          //                   height: 230.0,
          //                   width: double.infinity,
          //                   decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius.all(Radius.circular(10.0)),
          //                     image: DecorationImage(
          //                       image: AssetImage(AssetPaths.NEW_BLOG_2_IMAGE),
          //                       fit: BoxFit.fill,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   height: 14.0,
          //                 ),
          //                 Text(
          //                   "Life happens. And in your life everything is happening. It is happening at a level that is both within and beyond human understanding and it is happening all the time. Somehow, we have been tricked into believing that we are doing something - and I speak about the flow of life - from the source and back to it. Too often we take the credit for everything that is good that has happened to us and we blame God or source for everything that has not been pleasant in our lives. Everything happens on its own, we must just stay alert, be aware. ",
          //                   style: TextStyle(
          //                     fontSize: 18.0,
          //                     color: Colors.black.withOpacity(0.5),
          //                     overflow: TextOverflow.ellipsis,
          //                   ),
          //                   maxLines: 5,
          //                   textAlign: TextAlign.justify,
          //                 ),
          //                 InkWell(
          //                   onTap: () {
          //                     Get.toNamed('BlogDetails');
          //                   },
          //                   child: Row(
          //                     children: [
          //                       CustomTextWidget(
          //                         text: "Continue Reading",
          //                         Text_Color: AppColors.BLACK_COLOR,
          //                         Text_fontSize: 1.2,
          //                         Text_fontWeight: FontWeight.bold,
          //                       ),
          //                       Icon(
          //                         Icons.arrow_right_alt,
          //                         color: Colors.black,
          //                       ),
          //                     ],
          //                   ),
          //                 )
          //                 // CustomTextWidget(
          //                 //   text:
          //                 //       "",
          //                 //   Text_Color: Colors.black.withOpacity(0.5),
          //                 //   Text_fontSize: 1.2,
          //                 //
          //                 // ),
          //               ],
          //             ),
          //           ),
          //           SizedBox(
          //             height: 14.0,
          //           ),
          //           Container(
          //             child: Column(
          //               children: [
          //                 Align(
          //                   alignment: Alignment.topLeft,
          //                   child: CustomTextWidget(
          //                     text: "The Passage of Time",
          //                     Text_Color: Colors.black,
          //                     Text_fontSize: 1.4,
          //                     Text_fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 // SizedBox(
          //                 //   height: 12.0,
          //                 // ),
          //                 // Row(
          //                 //   children: [
          //                 //     CustomTextWidget(
          //                 //       text: "By Vijay Moksha",
          //                 //       Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
          //                 //       Text_fontSize: 1.0,
          //                 //       Text_fontWeight: FontWeight.bold,
          //                 //     ),
          //                 //     Spacer(),
          //                 //     CustomTextWidget(
          //                 //       text: "Published on 11 /02 /2022",
          //                 //       Text_Color: AppColors.BLACK_COLOR.withOpacity(0.5),
          //                 //       Text_fontSize: 1.0,
          //                 //       Text_fontWeight: FontWeight.bold,
          //                 //     ),
          //                 //   ],
          //                 // ),
          //                 SizedBox(
          //                   height: 14.0,
          //                 ),
          //                 Container(
          //                   height: 400.0,
          //                   width: double.infinity,
          //                   decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius.all(Radius.circular(10.0)),
          //                     image: DecorationImage(
          //                       image: AssetImage(AssetPaths.NEW_BLOG_3_IMAGE),
          //                       fit: BoxFit.fill,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   height: 14.0,
          //                 ),
          //                 Text(
          //                   "It is really an illusion, this whole concept of time. You will age, everyone does, bit growing older is an option. It is an option for you to decide that some of the things society believes can only be done by those that are younger in age, cannot be done by you now. If your health permits, then you should not allow societal beliefs to shade your future or the present moment. I have read that people grow old only by deserting their ideals - Years may wrinkle your face to give up enthusiasm,  wrinkles the soul. ",
          //                   style: TextStyle(
          //                     fontSize: 18.0,
          //                     color: Colors.black.withOpacity(0.5),
          //                     overflow: TextOverflow.ellipsis,
          //                   ),
          //                   maxLines: 5,
          //                   textAlign: TextAlign.justify,
          //                 ),
          //                 InkWell(
          //                   onTap: () {
          //                     Get.toNamed('BlogDetails2');
          //                   },
          //                   child: Row(
          //                     children: [
          //                       CustomTextWidget(
          //                         text: "Continue Reading",
          //                         Text_Color: AppColors.BLACK_COLOR,
          //                         Text_fontSize: 1.2,
          //                         Text_fontWeight: FontWeight.bold,
          //                       ),
          //                       Icon(
          //                         Icons.arrow_right_alt,
          //                         color: Colors.black,
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   height: 14.0,
          //                 ),
          //                 // CustomTextWidget(
          //                 //   text:
          //                 //       "",
          //                 //   Text_Color: Colors.black.withOpacity(0.5),
          //                 //   Text_fontSize: 1.2,
          //                 //
          //                 // ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          //
          //   // ListView.builder(
          //   //   physics: BouncingScrollPhysics(),
          //   //   shrinkWrap: true,
          //   //   scrollDirection: Axis.vertical,
          //   //   itemCount: 15,
          //   //   itemBuilder: (BuildContext context, int index) => Padding(
          //   //     padding: EdgeInsets.all(12.0),
          //   //     child:
          //   //
          //   //   ),
          //   // ),
          // ),
          Expanded(
            child: Container(
              child: FutureBuilder<List>(
                future: postservice.getAllPost(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data?.length == 0) {
                      return Center(
                        child: Text("No Posts"),
                      );
                    }
                    return ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, i) {
                          return Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 20.0),
                              child: Column(children: [
                                snapshot.data?[i]['tags'].toString() != '[59]'
                                    ? Column(
                                        children: [
                                          //  Text("Yh 59 Tag waly  hai"),
                                          Align(
                                            child: CustomTextWidget(
                                              text: snapshot.data?[i]
                                                      ['_embedded']['author'][0]
                                                  ['name'],
                                              Text_Color: AppColors.BLACK_COLOR
                                                  .withOpacity(0.5),
                                              Text_fontSize: 1.2,
                                              Text_fontWeight: FontWeight.bold,
                                            ),
                                            alignment: Alignment.topLeft,
                                          ),
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
                                          SizedBox(
                                            height: 12.0,
                                          ),
                                          Image.network(snapshot.data?[i]
                                                      ['_embedded']
                                                  ['wp:featuredmedia'][0]
                                              ['source_url']),
                                          SizedBox(
                                            height: 12.0,
                                          ),
                                          CustomTextWidget(
                                            text: snapshot.data![i]['title']
                                                ['rendered'],
                                            Text_Color: AppColors.BLACK_COLOR,
                                            Text_fontSize: 1.2,
                                            Text_fontWeight: FontWeight.bold,
                                          ),
                                          SizedBox(
                                            height: 12.0,
                                          ),
                                          Text(
                                            snapshot.data![i]['content']
                                                    ['rendered']
                                                .toString()
                                                .replaceAll("<p>", "")
                                                .replaceAll("</p>", "")
                                                .replaceAll("<b>", "")
                                                .replaceAll("</b>", "")
                                                .replaceAll("<i>", "")
                                                .replaceAll("<br />", "")
                                                .replaceAll("</i>", "")
                                                .replaceAll("&nbsp;", " "),
                                            maxLines: 14,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: AppColors.BLACK_COLOR),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BlogDetails(
                                                              data: snapshot
                                                                  .data?[i])));
                                            },
                                            child: Row(
                                              children: [
                                                CustomTextWidget(
                                                  text: "Continue Reading",
                                                  Text_Color:
                                                      AppColors.BLACK_COLOR,
                                                  Text_fontSize: 1.2,
                                                  Text_fontWeight:
                                                      FontWeight.bold,
                                                ),
                                                Icon(
                                                  Icons.arrow_right_alt,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 18.0,
                                          ),
                                        ],
                                      )
                                    : Container(),
                              ]),
                            ),
                          );
                        });
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else {
                    return Center(
                      child: SpinKitCircle(
                          itemBuilder: (BuildContext context, int index) {
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
        ])
      ]),
    );
  }
}
