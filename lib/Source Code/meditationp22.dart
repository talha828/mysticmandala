// // import 'dart:io';
// //
// // import 'package:audioplayers/audioplayers.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:get/get_core/src/get_main.dart';
// // import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
// // import 'package:mysticmandala/Source%20Code/utils/assetpaths.dart';
// // import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';
// //
// // class MeditationPage extends StatefulWidget {
// //   const MeditationPage({Key? key}) : super(key: key);
// //
// //   @override
// //   State<MeditationPage> createState() => _MeditationPageState();
// // }
// //
// // class _MeditationPageState extends State<MeditationPage> {
// //   String btntext = "";
// //   void button1() {
// //     btntext = "SAHARAA";
// //   }
// //
// //   void button2() {
// //     btntext = "AJNA";
// //   }
// //
// //   void button3() {
// //     btntext = "VISHUDHA";
// //   }
// //
// //   void button4() {
// //     btntext = "ANHATA";
// //   }
// //
// //   void button5() {
// //     btntext = "MANIPURA";
// //   }
// //
// //   void button6() {
// //     btntext = "SVADHISTHANA";
// //   }
// //
// //   void button7() {
// //     btntext = "MULDHERA";
// //   }
// //
// //   final audioPlayer = AudioPlayer();
// //   bool isPlaying = false;
// //   Duration duration = Duration.zero;
// //   Duration position = Duration.zero;
// //
// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     audioPlayer.onPlayerStateChanged.listen((state) {
// //       setState(() {
// //         isPlaying = state == PlayerState.playing;
// //       });
// //     });
// //
// //     audioPlayer.onDurationChanged.listen((newDuration) {
// //       setState(() {
// //         duration = newDuration;
// //       });
// //     });
// //     audioPlayer.onPositionChanged.listen((newPosition) {
// //       setState(() {
// //         position = newPosition;
// //       });
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage(AssetPaths.BACKGROUND_GIF),
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.only(left: 18.0),
// //               child: Align(
// //                   alignment: Alignment.topLeft,
// //                   child: InkWell(
// //                     onTap: () async {
// //                       Get.back();
// //                       if (isPlaying) {
// //                         await audioPlayer.pause();
// //                       }
// //                     },
// //                     child: Image.asset(
// //                       AssetPaths.BACK_ICON,
// //                       scale: 0.8,
// //                     ),
// //                   )),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.only(top: 60.0),
// //               child: Container(
// //                 //   color: Colors.black,
// //                 height: 475.0,
// //                 width: 440.0,
// //                 child: Stack(
// //                   children: [
// //                     Align(
// //                       alignment: Alignment.center,
// //                       child: Container(
// //                         height: 450.0,
// //                         width: double.infinity,
// //                         decoration: BoxDecoration(
// //                           // color: Colors.yellow,
// //                           image: DecorationImage(
// //                             image: AssetImage(AssetPaths.PERSON_IMAGE),
// //                             fit: BoxFit.fill,
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                     Align(
// //                       alignment: Alignment.center,
// //                       child: Padding(
// //                         padding: const EdgeInsets.only(left: 5.0, right: 22.0),
// //                         child: Container(
// //                             //   color: Colors.green,
// //                             height: 525.0,
// //                             width: 48.0,
// //                             child: Column(
// //                               //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                               children: [
// //                                 InkWell(
// //                                     child: Image.asset(
// //                                       AssetPaths.CROWN_IMAGE,
// //                                       scale: 1.2,
// //                                     ),
// //                                     onTap: () async {
// //                                       button1();
// //                                       String Url =
// //                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3';
// //                                       await audioPlayer.play(UrlSource(Url));
// //                                     }
// //
// //                                     // 'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
// //                                     ),
// //                                 SizedBox(
// //                                   height: 12.0,
// //                                 ),
// //                                 InkWell(
// //                                     child: Image.asset(
// //                                       AssetPaths.THIRD_IMAGE,
// //                                       scale: 1.2,
// //                                     ),
// //                                     onTap: () async {
// //                                       button2();
// //                                       String Url =
// //                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3';
// //                                       await audioPlayer.play(UrlSource(Url));
// //                                     }),
// //                                 SizedBox(
// //                                   height: 26.0,
// //                                 ),
// //                                 InkWell(
// //                                     child: Image.asset(
// //                                       AssetPaths.THROAT_IMAGE,
// //                                       scale: 1.2,
// //                                     ),
// //                                     onTap: () async {
// //                                       button3();
// //                                       String Url =
// //                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3';
// //                                       await audioPlayer.play(UrlSource(Url));
// //                                     }),
// //                                 SizedBox(
// //                                   height: 30.0,
// //                                 ),
// //                                 InkWell(
// //                                     child: Image.asset(
// //                                       AssetPaths.HEART_IMAGE,
// //                                       scale: 1.2,
// //                                     ),
// //                                     onTap: () async {
// //                                       button4();
// //                                       String Url =
// //                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3';
// //                                       await audioPlayer.play(UrlSource(Url));
// //                                     }),
// //                                 SizedBox(
// //                                   height: 28.0,
// //                                 ),
// //                                 InkWell(
// //                                     child: Image.asset(
// //                                       AssetPaths.ORAGNE_IMAGE,
// //                                       scale: 1.2,
// //                                     ),
// //                                     onTap: () async {
// //                                       button5();
// //                                       String Url =
// //                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3';
// //                                       await audioPlayer.play(UrlSource(Url));
// //                                     }),
// //                                 SizedBox(
// //                                   height: 29.0,
// //                                 ),
// //                                 InkWell(
// //                                     child: Image.asset(
// //                                       AssetPaths.YELLOW_IMAGE,
// //                                       scale: 1.2,
// //                                     ),
// //                                     onTap: () async {
// //                                       button6();
// //                                       String Url =
// //                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3';
// //                                       await audioPlayer.play(UrlSource(Url));
// //                                     }),
// //                                 SizedBox(
// //                                   height: 30.0,
// //                                 ),
// //                                 InkWell(
// //                                     child: Image.asset(
// //                                       AssetPaths.ROOT_IMAGE,
// //                                       scale: 1.2,
// //                                     ),
// //                                     onTap: () async {
// //                                       button7();
// //                                       String Url =
// //                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3';
// //                                       await audioPlayer.play(UrlSource(Url));
// //                                     }),
// //                               ],
// //                             )),
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             SizedBox(
// //               height: 20.0,
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 40.0),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Container(
// //                     height: 35.0,
// //                     width: 240.0,
// //                     decoration: BoxDecoration(
// //                       color: Colors.white,
// //                       borderRadius: BorderRadius.all(Radius.circular(32.0)),
// //                     ),
// //                     child: Row(
// //                       children: [
// //                         IconButton(
// //                           icon: Icon(
// //                             isPlaying ? Icons.pause : Icons.play_arrow,
// //                             color: AppColors.BLACK_COLOR,
// //                           ),
// //                           iconSize: 25.0,
// //                           onPressed: () async {
// //                             if (isPlaying) {
// //                               await audioPlayer.pause();
// //                             }
// //                           },
// //                         ),
// //                         CustomTextWidget(
// //                           text: formatTime(position),
// //                           Text_Color: AppColors.BLACK_COLOR,
// //                           Text_fontSize: 0.8,
// //                         ),
// //                         CustomTextWidget(
// //                           text: "/",
// //                           Text_Color: AppColors.BLACK_COLOR,
// //                           Text_fontSize: 0.8,
// //                         ),
// //                         CustomTextWidget(
// //                           text: formatTime(duration - position),
// //                           Text_Color: AppColors.BLACK_COLOR,
// //                           Text_fontSize: 0.8,
// //                         ),
// //                         Container(
// //                           width: 100.0,
// //                           child: Slider(
// //                             thumbColor: AppColors.BLACK_COLOR,
// //                             min: 0,
// //                             max: duration.inSeconds.toDouble(),
// //                             value: position.inSeconds.toDouble(),
// //                             onChanged: (value) async {},
// //                           ),
// //                         ),
// //                         Image.asset(
// //                           AssetPaths.LOOP_IMAGE,
// //                           scale: 1.2,
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                   SizedBox(
// //                     width: 5.0,
// //                   ),
// //                   InkWell(
// //                     onTap: () async {
// //                       button7();
// //                       String Url7 =
// //                           'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3';
// //                       await audioPlayer.play(UrlSource(Url7));
// //                       button6();
// //                       String Url6 =
// //                           'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3';
// //                       await audioPlayer.play(UrlSource(Url6));
// //                     },
// //                     child: Container(
// //                       width: 70.0,
// //                       height: 30.0,
// //                       decoration: BoxDecoration(
// //                         color: AppColors.ORANGE_COLOR,
// //                         borderRadius: BorderRadius.all(
// //                           Radius.circular(32.0),
// //                         ),
// //                       ),
// //                       child: Center(
// //                         child: CustomTextWidget(
// //                           text: "Play",
// //                           Text_Color: AppColors.WHITE_COLOR,
// //                           Text_fontSize: 1.0,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             SizedBox(
// //               height: 5.0,
// //             ),
// //             CustomTextWidget(
// //               text: btntext,
// //               Text_Color: AppColors.WHITE_COLOR,
// //               Text_fontSize: 1.4,
// //               Text_fontWeight: FontWeight.bold,
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   String formatTime(Duration duration) {
// //     String twoDigits(int n) => n.toString().padLeft(2, '0');
// //     final hours = twoDigits(duration.inHours);
// //     final minutes = twoDigits(duration.inMinutes.remainder(60));
// //     final seconds = twoDigits(duration.inSeconds.remainder(60));
// //     return [
// //       if (duration.inHours > 0) hours,
// //       minutes,
// //       seconds,
// //     ].join(':');
// //   }
// // }
//
// import 'dart:io';
//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
// import 'package:mysticmandala/Source%20Code/utils/assetpaths.dart';
// import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';
//
// class MeditationPage extends StatefulWidget {
//   const MeditationPage({Key? key}) : super(key: key);
//
//   @override
//   State<MeditationPage> createState() => _MeditationPageState();
// }
//
// class _MeditationPageState extends State<MeditationPage> {
//   bool isRepeat = false;
//   bool isPressed = false;
//   bool isPressed1 = false;
//   List urlList = [
//     'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3',
//     'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3',
//     'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3',
//     'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3',
//     'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3',
//     'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3',
//     'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
//   ];
//   int currentIndex = 0;
//   String btntext = "";
//   void button1() {
//     btntext = "SAHASRARA";
//   }
//
//   void button2() {
//     btntext = "AJNA";
//   }
//
//   void button3() {
//     btntext = "VISHUDDHA";
//   }
//
//   void button4() {
//     btntext = "ANAHATA";
//   }
//
//   void button5() {
//     btntext = "MANIPURA";
//   }
//
//   void button6() {
//     btntext = "SVADHISTHANA";
//   }
//
//   void button7() {
//     btntext = "MULADHARA";
//   }
//
//   final audioPlayer = AudioPlayer();
//   bool isPlaying = false;
//   Duration duration = Duration.zero;
//   Duration position = Duration.zero;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     audioPlayer.onPlayerStateChanged.listen((state) {
//       setState(() {
//         isPlaying = state == PlayerState.playing;
//       });
//     });
//
//     audioPlayer.onDurationChanged.listen((newDuration) {
//       setState(() {
//         duration = newDuration;
//       });
//     });
//     audioPlayer.onPositionChanged.listen((newPosition) {
//       setState(() {
//         position = newPosition;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(AssetPaths.Final_Space_IMAGE),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Align(
//             //     alignment: Alignment.topRight,
//             //     child: InkWell(
//             //       onTap: () async {
//             //         Get.back();
//             //         if (isPlaying) {
//             //           await audioPlayer.pause();
//             //         }
//             //       },
//             //       child: Container(
//             //         width: 72,
//             //         decoration: const BoxDecoration(
//             //           color: Colors.transparent,
//             //         ),
//             //         alignment: Alignment.center,
//             //         child: Image.asset(
//             //           AssetPaths.WHITE_BACK_BTN_IMAGE,
//             //           scale: 0.9,
//             //         ),
//             //       ),
//             //     )),
//             Center(
//               child: Container(
//                 color: Colors.black,
//                 height: 580.0,
//                 width: 580.0,
//                 child: Stack(
//                   children: [
//                     Container(
//                       height: 500.0,
//                       width: 580.0,
//                       decoration: BoxDecoration(
//                         color: Colors.yellow,
//                         image: DecorationImage(
//                           image: AssetImage(AssetPaths.Final_PERSON_IMAGE),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 33.0, right: 22.0),
//                         child: Container(
//                             //  color: Colors.green,
//                             height: 600.0,
//                             width: 48.0,
//                             child: Column(
//                               //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 InkWell(
//                                     child: isPressed1 == true
//                                         ? Card(
//                                             // with Card
//                                             color: Colors.transparent,
//                                             child: Image.asset(
//                                               AssetPaths.CROWN_IMAGE,
//                                               scale: 1.2,
//                                             ),
//                                             elevation: 12.0,
//                                             shape: const CircleBorder(),
//                                             clipBehavior: Clip.antiAlias,
//                                           )
//                                         : Image.asset(
//                                             AssetPaths.CROWN_IMAGE,
//                                             scale: 1.2,
//                                           ),
//                                     onTap: () async {
//                                       setState(() {
//                                         isPressed1 = true;
//                                       });
//                                       button1();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }
//                                     // 'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
//                                     ),
//                                 SizedBox(
//                                   height: 30.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.THIRD_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button2();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 36.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.THROAT_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button3();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 32.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.HEART_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button4();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 34.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.ORAGNE_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button5();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 40.0,
//                                 ),
//                                 InkWell(
//                                     child: isPressed == true
//                                         ? Card(
//                                             // with Card
//                                             color: Colors.transparent,
//                                             child: Image.asset(
//                                               AssetPaths.YELLOW_IMAGE,
//                                               scale: 1.2,
//                                             ),
//                                             elevation: 12.0,
//                                             shape: const CircleBorder(),
//                                             clipBehavior: Clip.antiAlias,
//                                           )
//                                         : Image.asset(
//                                             AssetPaths.YELLOW_IMAGE,
//                                             scale: 1.2,
//                                           ),
//                                     onTap: () async {
//                                       setState(() {
//                                         isPressed = true;
//                                       });
//                                       button6();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 64.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.ROOT_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button7();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                               ],
//                             )),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.only(
//             //     left: 4.0,
//             //     right: 4.0,
//             //     top: 30.0,
//             //   ),
//             //   child: Row(
//             //     mainAxisAlignment: MainAxisAlignment.center,
//             //     children: [
//             //       Container(
//             //         height: 35.0,
//             //         width: 235.0,
//             //         decoration: BoxDecoration(
//             //           color: Colors.white,
//             //           borderRadius: BorderRadius.all(Radius.circular(32.0)),
//             //         ),
//             //         child: Row(
//             //           children: [
//             //             IconButton(
//             //               icon: Icon(
//             //                 isPlaying ? Icons.pause : Icons.play_arrow,
//             //                 color: AppColors.BLACK_COLOR,
//             //               ),
//             //               iconSize: 22.0,
//             //               onPressed: () async {
//             //                 if (isPlaying) {
//             //                   await audioPlayer.pause();
//             //                 } else {
//             //                   audioPlayer.resume();
//             //                 }
//             //               },
//             //             ),
//             //             CustomTextWidget(
//             //               text: formatTime(position),
//             //               Text_Color: AppColors.BLACK_COLOR,
//             //               Text_fontSize: 0.8,
//             //             ),
//             //             Container(
//             //               width: 126.0,
//             //               child: Slider(
//             //                 thumbColor: AppColors.BLACK_COLOR,
//             //                 min: 0,
//             //                 max: duration.inSeconds.toDouble(),
//             //                 value: position.inSeconds.toDouble(),
//             //                 onChanged: (value) async {
//             //                   final position = Duration(seconds: value.toInt());
//             //                   audioPlayer.seek(position);
//             //                   audioPlayer.resume();
//             //                 },
//             //               ),
//             //             ),
//             //             InkWell(
//             //               onTap: () {
//             //                 if (isRepeat == false) {
//             //                   audioPlayer.setReleaseMode(ReleaseMode.loop);
//             //                   setState(() {
//             //                     isRepeat = true;
//             //                   });
//             //                 }
//             //               },
//             //               child: Image.asset(
//             //                 AssetPaths.LOOP_IMAGE,
//             //                 scale: 1.2,
//             //               ),
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //       SizedBox(
//             //         width: 4.0,
//             //       ),
//             //       InkWell(
//             //         onTap: () {
//             //           nextTrack(List<String>.from(urlList), currentIndex);
//             //           setState(() {
//             //             btntext = " ";
//             //           });
//             //         },
//             //         child: Container(
//             //           width: 70.0,
//             //           height: 35.0,
//             //           decoration: BoxDecoration(
//             //             color: AppColors.ORANGE_COLOR,
//             //             borderRadius: BorderRadius.all(
//             //               Radius.circular(32.0),
//             //             ),
//             //           ),
//             //           child: Center(
//             //             child: CustomTextWidget(
//             //               text: "Play All",
//             //               Text_Color: AppColors.WHITE_COLOR,
//             //               Text_fontSize: 1.0,
//             //             ),
//             //           ),
//             //         ),
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             SizedBox(
//               height: 2.0,
//             ),
//             CustomTextWidget(
//               text: btntext,
//               Text_Color: AppColors.WHITE_COLOR,
//               Text_fontSize: 1.4,
//               Text_fontWeight: FontWeight.bold,
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   String formatTime(Duration duration) {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     final hours = twoDigits(duration.inHours);
//     final minutes = twoDigits(duration.inMinutes.remainder(60));
//     final seconds = twoDigits(duration.inSeconds.remainder(60));
//     return [
//       if (duration.inHours > 0) hours,
//       minutes,
//       seconds,
//     ].join(':');
//   }
//
//   void play(List<String> urlList, int currentIndex) async {
//     await audioPlayer.play(UrlSource(urlList[currentIndex]));
//
//     audioPlayer.onPlayerComplete.listen((event) {
//       if (currentIndex < urlList.length - 1) {
//         currentIndex = currentIndex + 1;
//         nextTrack(urlList, currentIndex);
//         print("NEXT AUDIO! $currentIndex");
//       } else {
//         print("AUDIO COMPLETED PLAYING");
//       }
//     });
//   }
//
//   void nextTrack(urlList, int currentIndex) {
//     play(urlList, currentIndex);
//   }
// }

// import 'dart:io';
//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
// import 'package:mysticmandala/Source%20Code/utils/assetpaths.dart';
// import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';
//
// class MeditationPage extends StatefulWidget {
//   const MeditationPage({Key? key}) : super(key: key);
//
//   @override
//   State<MeditationPage> createState() => _MeditationPageState();
// }
//
// class _MeditationPageState extends State<MeditationPage> {
//   String btntext = "";
//   void button1() {
//     btntext = "SAHARAA";
//   }
//
//   void button2() {
//     btntext = "AJNA";
//   }
//
//   void button3() {
//     btntext = "VISHUDHA";
//   }
//
//   void button4() {
//     btntext = "ANHATA";
//   }
//
//   void button5() {
//     btntext = "MANIPURA";
//   }
//
//   void button6() {
//     btntext = "SVADHISTHANA";
//   }
//
//   void button7() {
//     btntext = "MULDHERA";
//   }
//
//   final audioPlayer = AudioPlayer();
//   bool isPlaying = false;
//   Duration duration = Duration.zero;
//   Duration position = Duration.zero;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     audioPlayer.onPlayerStateChanged.listen((state) {
//       setState(() {
//         isPlaying = state == PlayerState.playing;
//       });
//     });
//
//     audioPlayer.onDurationChanged.listen((newDuration) {
//       setState(() {
//         duration = newDuration;
//       });
//     });
//     audioPlayer.onPositionChanged.listen((newPosition) {
//       setState(() {
//         position = newPosition;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(AssetPaths.BACKGROUND_GIF),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 18.0),
//               child: Align(
//                   alignment: Alignment.topLeft,
//                   child: InkWell(
//                     onTap: () async {
//                       Get.back();
//                       if (isPlaying) {
//                         await audioPlayer.pause();
//                       }
//                     },
//                     child: Image.asset(
//                       AssetPaths.BACK_ICON,
//                       scale: 0.8,
//                     ),
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 60.0),
//               child: Container(
//                 //   color: Colors.black,
//                 height: 475.0,
//                 width: 440.0,
//                 child: Stack(
//                   children: [
//                     Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         height: 450.0,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           // color: Colors.yellow,
//                           image: DecorationImage(
//                             image: AssetImage(AssetPaths.PERSON_IMAGE),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 5.0, right: 22.0),
//                         child: Container(
//                             //   color: Colors.green,
//                             height: 525.0,
//                             width: 48.0,
//                             child: Column(
//                               //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.CROWN_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button1();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }
//
//                                     // 'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
//                                     ),
//                                 SizedBox(
//                                   height: 12.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.THIRD_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button2();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 26.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.THROAT_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button3();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 30.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.HEART_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button4();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 28.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.ORAGNE_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button5();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 29.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.YELLOW_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button6();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                                 SizedBox(
//                                   height: 30.0,
//                                 ),
//                                 InkWell(
//                                     child: Image.asset(
//                                       AssetPaths.ROOT_IMAGE,
//                                       scale: 1.2,
//                                     ),
//                                     onTap: () async {
//                                       button7();
//                                       String Url =
//                                           'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3';
//                                       await audioPlayer.play(UrlSource(Url));
//                                     }),
//                               ],
//                             )),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 6.0, right: 6.0, top: 40.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 35.0,
//                     width: 240.0,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                     ),
//                     child: Row(
//                       children: [
//                         IconButton(
//                           icon: Icon(
//                             isPlaying ? Icons.pause : Icons.play_arrow,
//                             color: AppColors.BLACK_COLOR,
//                           ),
//                           iconSize: 25.0,
//                           onPressed: () async {
//                             if (isPlaying) {
//                               await audioPlayer.pause();
//                             }
//                           },
//                         ),
//                         CustomTextWidget(
//                           text: formatTime(position),
//                           Text_Color: AppColors.BLACK_COLOR,
//                           Text_fontSize: 0.8,
//                         ),
//                         CustomTextWidget(
//                           text: "/",
//                           Text_Color: AppColors.BLACK_COLOR,
//                           Text_fontSize: 0.8,
//                         ),
//                         CustomTextWidget(
//                           text: formatTime(duration - position),
//                           Text_Color: AppColors.BLACK_COLOR,
//                           Text_fontSize: 0.8,
//                         ),
//                         Container(
//                           width: 100.0,
//                           child: Slider(
//                             thumbColor: AppColors.BLACK_COLOR,
//                             min: 0,
//                             max: duration.inSeconds.toDouble(),
//                             value: position.inSeconds.toDouble(),
//                             onChanged: (value) async {},
//                           ),
//                         ),
//                         Image.asset(
//                           AssetPaths.LOOP_IMAGE,
//                           scale: 1.2,
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 5.0,
//                   ),
//                   InkWell(
//                     onTap: () async {
//                       button7();
//                       String Url7 =
//                           'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3';
//                       await audioPlayer.play(UrlSource(Url7));
//                       button6();
//                       String Url6 =
//                           'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3';
//                       await audioPlayer.play(UrlSource(Url6));
//                     },
//                     child: Container(
//                       width: 70.0,
//                       height: 30.0,
//                       decoration: BoxDecoration(
//                         color: AppColors.ORANGE_COLOR,
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(32.0),
//                         ),
//                       ),
//                       child: Center(
//                         child: CustomTextWidget(
//                           text: "Play",
//                           Text_Color: AppColors.WHITE_COLOR,
//                           Text_fontSize: 1.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 5.0,
//             ),
//             CustomTextWidget(
//               text: btntext,
//               Text_Color: AppColors.WHITE_COLOR,
//               Text_fontSize: 1.4,
//               Text_fontWeight: FontWeight.bold,
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   String formatTime(Duration duration) {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     final hours = twoDigits(duration.inHours);
//     final minutes = twoDigits(duration.inMinutes.remainder(60));
//     final seconds = twoDigits(duration.inSeconds.remainder(60));
//     return [
//       if (duration.inHours > 0) hours,
//       minutes,
//       seconds,
//     ].join(':');
//   }
// }

import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/utils/appcolors.dart';
import 'package:mysticmandala/Source%20Code/utils/assetpaths.dart';
import 'package:mysticmandala/Source%20Code/widgets/Text/customText.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({Key? key}) : super(key: key);

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage>
    with TickerProviderStateMixin {
  bool isRepeat = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;
  bool isPressed6 = false;
  bool isPressed7 = false;
  bool btnPressed = false;
  String name1 = " ";
  // String? name2;
  //bool isPressed3 = false;
  List name = [
    'Muladhara',
    'Svadisthana',
    'Manipura',
    'Anahata',
    'Visuddha',
    'Ajna',
    'Sahasrara',
  ];
  List urlList = [
    'images/Muladhara.mp3',
    'images/Svadisthana.mp3',
    'images/Manipura.mp3',
    'images/Anahata.mp3',
    'images/Visuddha.mp3',
    'images/Ajna.mp3',
    'images/Sahasrara.mp3',
    // 'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3',
    // 'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3',
    // 'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3',
    // 'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3',
    // 'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3',
    // 'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3',
    // 'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
  ];
  int currentIndex = 0;
  int indexname = 0;
  String btntext = "";
  void button1() {
    btntext = "SAHASRARA";
  }

  void button2() {
    btntext = "AJNA";
  }

  void button3() {
    btntext = "VISHUDDHA";
  }

  void button4() {
    btntext = "ANAHATA";
  }

  void button5() {
    btntext = "MANIPURA";
  }

  void button6() {
    btntext = "SVADHISTHANA";
  }

  void button7() {
    btntext = "MULADHARA";
  }

  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetPaths.Final_Space_IMAGE),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, right: 15.0),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () async {
                  Get.back();
                  if (isPlaying) {
                    await audioPlayer.pause();
                  }
                },
                child: Container(
                  width: 102,
                  height: 60.0,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    AssetPaths.WHITE_BACK_BTN_IMAGE,
                    scale: 0.9,
                  ),
                ),
              ),
            ),
          ),
          Align(
            //  alignment: Alignment.topCenter,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //   color: Colors.black,
                    height: 530.0,
                    width: 580.0,
                    child: Stack(
                      children: [
                        Container(
                          height: 530.0,
                          width: 580.0,
                          decoration: BoxDecoration(
                            // color: Colors.yellow,
                            image: DecorationImage(
                              image: AssetImage(AssetPaths.Final_PERSON_IMAGE),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 33.0, right: 22.0),
                            child: Container(
                                // color: Colors.green,
                                height: 530.0,
                                width: 48.0,
                                child: Column(
                                  //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        child: Container(
                                          child: Image.asset(
                                            AssetPaths.CROWN_IMAGE,
                                            scale: 1.2,
                                          ),
                                          decoration: BoxDecoration(
                                              boxShadow: isPressed1
                                                  ? [
                                                      BoxShadow(
                                                        color: AppColors
                                                            .LIGHT_ORANGE_COLOR,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]
                                                  : [
                                                      BoxShadow(
                                                        color:
                                                            Colors.transparent,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]),
                                        ),
                                        onTap: () async {
                                          setState(() {
                                            if (isPressed1 == false) {
                                              isPressed1 = true;
                                              isPressed2 = false;
                                              isPressed3 = false;
                                              isPressed4 = false;
                                              isPressed5 = false;
                                              isPressed6 = false;
                                              isPressed7 = false;
                                              btnPressed = false;
                                              name1 = " ";
                                            }
                                          });
                                          button1();
                                          // String Url =
                                          //     'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3';
                                          await audioPlayer.play(AssetSource(
                                              'images/Sahasrara.mp3'));
                                        }
                                        // 'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
                                        ),
                                    SizedBox(
                                      height: 26.0,
                                    ),
                                    InkWell(
                                        child: Container(
                                          child: Image.asset(
                                            AssetPaths.THIRD_IMAGE,
                                            scale: 1.2,
                                          ),
                                          decoration: BoxDecoration(
                                              boxShadow: isPressed2
                                                  ? [
                                                      BoxShadow(
                                                        color: AppColors
                                                            .LIGHT_ORANGE_COLOR,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]
                                                  : [
                                                      BoxShadow(
                                                        color:
                                                            Colors.transparent,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]),
                                        ),
                                        onTap: () async {
                                          setState(() {
                                            if (isPressed2 == false) {
                                              isPressed2 = true;
                                              isPressed1 = false;
                                              isPressed3 = false;
                                              isPressed4 = false;
                                              isPressed5 = false;
                                              isPressed6 = false;
                                              isPressed7 = false;
                                              btnPressed = false;
                                              name1 = " ";
                                            }
                                          });
                                          button2();
                                          // String Url =
                                          //     'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3';
                                          // await audioPlayer
                                          //     .play(UrlSource(Url));
                                          await audioPlayer.play(
                                              AssetSource('images/Ajna.mp3'));
                                        }),
                                    SizedBox(
                                      height: 26.0,
                                    ),
                                    InkWell(
                                        child: Container(
                                          child: Image.asset(
                                            AssetPaths.THROAT_IMAGE,
                                            scale: 1.2,
                                          ),
                                          decoration: BoxDecoration(
                                              boxShadow: isPressed3
                                                  ? [
                                                      BoxShadow(
                                                        color: AppColors
                                                            .LIGHT_ORANGE_COLOR,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]
                                                  : [
                                                      BoxShadow(
                                                        color:
                                                            Colors.transparent,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]),
                                        ),
                                        onTap: () async {
                                          setState(() {
                                            if (isPressed3 == false) {
                                              isPressed3 = true;
                                              isPressed2 = false;
                                              isPressed1 = false;
                                              isPressed4 = false;
                                              isPressed5 = false;
                                              isPressed6 = false;
                                              isPressed7 = false;
                                              btnPressed = false;
                                              name1 = " ";
                                            }
                                          });
                                          button3();
                                          // String Url =
                                          //     'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3';
                                          // await audioPlayer
                                          //     .play(UrlSource(Url));
                                          await audioPlayer.play(AssetSource(
                                              'images/Visuddha.mp3'));
                                        }),
                                    SizedBox(
                                      height: 26.0,
                                    ),
                                    InkWell(
                                        child: Container(
                                          child: Image.asset(
                                            AssetPaths.HEART_IMAGE,
                                            scale: 1.2,
                                          ),
                                          decoration: BoxDecoration(
                                              boxShadow: isPressed4
                                                  ? [
                                                      BoxShadow(
                                                        color: AppColors
                                                            .LIGHT_ORANGE_COLOR,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]
                                                  : [
                                                      BoxShadow(
                                                        color:
                                                            Colors.transparent,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]),
                                        ),
                                        onTap: () async {
                                          setState(() {
                                            if (isPressed4 == false) {
                                              isPressed4 = true;
                                              isPressed1 = false;
                                              isPressed2 = false;
                                              isPressed3 = false;
                                              isPressed5 = false;
                                              isPressed6 = false;
                                              isPressed7 = false;
                                              btnPressed = false;
                                              name1 = " ";
                                            }
                                          });
                                          button4();
                                          // String Url =
                                          //     'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3';
                                          // await audioPlayer
                                          //     .play(UrlSource(Url));
                                          await audioPlayer.play(AssetSource(
                                              'images/Anahata.mp3'));
                                        }),
                                    SizedBox(
                                      height: 26.0,
                                    ),
                                    InkWell(
                                        child: Container(
                                          child: Image.asset(
                                            AssetPaths.ORAGNE_IMAGE,
                                            scale: 1.2,
                                          ),
                                          decoration: BoxDecoration(
                                              boxShadow: isPressed5
                                                  ? [
                                                      BoxShadow(
                                                        color: AppColors
                                                            .LIGHT_ORANGE_COLOR,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]
                                                  : [
                                                      BoxShadow(
                                                        color:
                                                            Colors.transparent,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]),
                                        ),
                                        onTap: () async {
                                          setState(() {
                                            if (isPressed5 == false) {
                                              isPressed5 = true;
                                              isPressed1 = false;
                                              isPressed2 = false;
                                              isPressed3 = false;
                                              isPressed4 = false;
                                              isPressed6 = false;
                                              isPressed7 = false;
                                              btnPressed = false;
                                              name1 = " ";
                                            }
                                          });
                                          button5();
                                          // String Url =
                                          //     'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3';
                                          // await audioPlayer
                                          //     .play(UrlSource(Url));
                                          await audioPlayer.play(AssetSource(
                                              'images/Manipura.mp3'));
                                        }),
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    InkWell(
                                        child: Container(
                                          child: Image.asset(
                                            AssetPaths.YELLOW_IMAGE,
                                            scale: 1.2,
                                          ),
                                          decoration: BoxDecoration(
                                              boxShadow: isPressed6
                                                  ? [
                                                      BoxShadow(
                                                        color: AppColors
                                                            .LIGHT_ORANGE_COLOR,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]
                                                  : [
                                                      BoxShadow(
                                                        color:
                                                            Colors.transparent,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]),
                                        ),
                                        onTap: () async {
                                          setState(() {
                                            if (isPressed6 == false) {
                                              isPressed6 = true;
                                              isPressed1 = false;
                                              isPressed2 = false;
                                              isPressed3 = false;
                                              isPressed4 = false;
                                              isPressed5 = false;
                                              isPressed7 = false;
                                              btnPressed = false;
                                              name1 = " ";
                                            }
                                          });
                                          button6();
                                          // String Url =
                                          //     'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3';
                                          // await audioPlayer
                                          //     .play(UrlSource(Url));
                                          await audioPlayer.play(AssetSource(
                                              'images/Svadisthana.mp3'));
                                        }),
                                    SizedBox(
                                      height: 50.0,
                                    ),
                                    InkWell(
                                        child: Container(
                                          child: Image.asset(
                                            AssetPaths.ROOT_IMAGE,
                                            scale: 1.2,
                                          ),
                                          decoration: BoxDecoration(
                                              boxShadow: isPressed7
                                                  ? [
                                                      BoxShadow(
                                                        color: AppColors
                                                            .LIGHT_ORANGE_COLOR,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]
                                                  : [
                                                      BoxShadow(
                                                        color:
                                                            Colors.transparent,
                                                        offset: Offset(0, 6),
                                                        blurRadius: 15,
                                                        spreadRadius: 1,
                                                      )
                                                    ]),
                                        ),
                                        onTap: () async {
                                          setState(() {
                                            if (isPressed7 == false) {
                                              isPressed7 = true;
                                              isPressed1 = false;
                                              isPressed2 = false;
                                              isPressed3 = false;
                                              isPressed4 = false;
                                              isPressed5 = false;
                                              isPressed6 = false;
                                              btnPressed = false;
                                              btntext = " ";
                                              //    name1 = "MULADHARA";
                                            }
                                          });
                                          button7();
                                          await audioPlayer.play(AssetSource(
                                              'images/Muladhara.mp3'));
                                        }),
                                  ],
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4.0,
                      right: 4.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35.0,
                          width: 235.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                  color: AppColors.BLACK_COLOR,
                                ),
                                iconSize: 22.0,
                                onPressed: () async {
                                  if (isPlaying) {
                                    await audioPlayer.pause();
                                  } else {
                                    audioPlayer.resume();
                                  }
                                },
                              ),
                              CustomTextWidget(
                                text: formatTime(position),
                                Text_Color: AppColors.BLACK_COLOR,
                                Text_fontSize: 0.8,
                              ),
                              Container(
                                width: 126.0,
                                child: Slider(
                                  thumbColor: AppColors.BLACK_COLOR,
                                  min: 0.0,
                                  max: duration.inSeconds.toDouble(),
                                  value: position.inSeconds.toDouble(),
                                  onChanged: (value) async {
                                    final position =
                                        Duration(seconds: value.toInt());
                                    audioPlayer.seek(position);
                                    audioPlayer.resume();
                                  },
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if (isRepeat == false) {
                                    audioPlayer
                                        .setReleaseMode(ReleaseMode.loop);
                                    setState(() {
                                      isRepeat = true;
                                    });
                                  }
                                },
                                child: Image.asset(
                                  AssetPaths.LOOP_IMAGE,
                                  scale: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        InkWell(
                          onTap: () {
                            nextTrack(List<String>.from(urlList), currentIndex,
                                indexname, name.toString());
                            print("Audio: ${List<String>.from(urlList)}");
                            print("Name Audio: ${List<String>.from(name)}");
                            setState(() {
                              btntext = " ";
                              isPressed1 = false;
                              isPressed2 = false;
                              isPressed3 = false;
                              isPressed4 = false;
                              isPressed5 = false;
                              isPressed6 = false;
                              isPressed7 = true;
                              btnPressed = true;
                              name1 = "MULADHARA";
                            });
                          },
                          child: Container(
                            width: 70.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              color: AppColors.ORANGE_COLOR,
                              borderRadius: BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                            ),
                            child: Center(
                              child: CustomTextWidget(
                                text: "Play All",
                                Text_Color: AppColors.WHITE_COLOR,
                                Text_fontSize: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  CustomTextWidget(
                    text: btnPressed == true ? name1 : btntext,
                    Text_Color: AppColors.WHITE_COLOR,
                    Text_fontSize: 1.4,
                    Text_fontWeight: FontWeight.bold,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 8.0),
                  //   child: CustomTextWidget(
                  //     text: name1,
                  //     Text_Color: AppColors.WHITE_COLOR,
                  //     Text_fontSize: 1.4,
                  //     Text_fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     // Align(
          //     //     alignment: Alignment.topRight,
          //     //     child: InkWell(
          //     //       onTap: () async {
          //     //         Get.back();
          //     //         if (isPlaying) {
          //     //           await audioPlayer.pause();
          //     //         }
          //     //       },
          //     //       child: Container(
          //     //         width: 72,
          //     //         decoration: const BoxDecoration(
          //     //           color: Colors.transparent,
          //     //         ),
          //     //         alignment: Alignment.center,
          //     //         child: Image.asset(
          //     //           AssetPaths.WHITE_BACK_BTN_IMAGE,
          //     //           scale: 0.9,
          //     //         ),
          //     //       ),
          //     //     )),
          //     Center(
          //       child: Container(
          //         color: Colors.black,
          //         height: 580.0,
          //         width: 580.0,
          //         child: Stack(
          //           children: [
          //             Container(
          //               height: 500.0,
          //               width: 580.0,
          //               decoration: BoxDecoration(
          //                 color: Colors.yellow,
          //                 image: DecorationImage(
          //                   image: AssetImage(AssetPaths.Final_PERSON_IMAGE),
          //                   fit: BoxFit.cover,
          //                 ),
          //               ),
          //             ),
          //             Align(
          //               alignment: Alignment.center,
          //               child: Padding(
          //                 padding: const EdgeInsets.only(left: 33.0, right: 22.0),
          //                 child: Container(
          //                   //  color: Colors.green,
          //                     height: 600.0,
          //                     width: 48.0,
          //                     child: Column(
          //                       //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                       children: [
          //                         InkWell(
          //                             child: isPressed1 == true
          //                                 ? Card(
          //                               // with Card
          //                               color: Colors.transparent,
          //                               child: Image.asset(
          //                                 AssetPaths.CROWN_IMAGE,
          //                                 scale: 1.2,
          //                               ),
          //                               elevation: 12.0,
          //                               shape: const CircleBorder(),
          //                               clipBehavior: Clip.antiAlias,
          //                             )
          //                                 : Image.asset(
          //                               AssetPaths.CROWN_IMAGE,
          //                               scale: 1.2,
          //                             ),
          //                             onTap: () async {
          //                               setState(() {
          //                                 isPressed1 = true;
          //                               });
          //                               button1();
          //                               String Url =
          //                                   'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3';
          //                               await audioPlayer.play(UrlSource(Url));
          //                             }
          //                           // 'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
          //                         ),
          //                         SizedBox(
          //                           height: 30.0,
          //                         ),
          //                         InkWell(
          //                             child: Image.asset(
          //                               AssetPaths.THIRD_IMAGE,
          //                               scale: 1.2,
          //                             ),
          //                             onTap: () async {
          //                               button2();
          //                               String Url =
          //                                   'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3';
          //                               await audioPlayer.play(UrlSource(Url));
          //                             }),
          //                         SizedBox(
          //                           height: 36.0,
          //                         ),
          //                         InkWell(
          //                             child: Image.asset(
          //                               AssetPaths.THROAT_IMAGE,
          //                               scale: 1.2,
          //                             ),
          //                             onTap: () async {
          //                               button3();
          //                               String Url =
          //                                   'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3';
          //                               await audioPlayer.play(UrlSource(Url));
          //                             }),
          //                         SizedBox(
          //                           height: 32.0,
          //                         ),
          //                         InkWell(
          //                             child: Image.asset(
          //                               AssetPaths.HEART_IMAGE,
          //                               scale: 1.2,
          //                             ),
          //                             onTap: () async {
          //                               button4();
          //                               String Url =
          //                                   'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3';
          //                               await audioPlayer.play(UrlSource(Url));
          //                             }),
          //                         SizedBox(
          //                           height: 34.0,
          //                         ),
          //                         InkWell(
          //                             child: Image.asset(
          //                               AssetPaths.ORAGNE_IMAGE,
          //                               scale: 1.2,
          //                             ),
          //                             onTap: () async {
          //                               button5();
          //                               String Url =
          //                                   'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3';
          //                               await audioPlayer.play(UrlSource(Url));
          //                             }),
          //                         SizedBox(
          //                           height: 40.0,
          //                         ),
          //                         InkWell(
          //                             child: isPressed == true
          //                                 ? Card(
          //                               // with Card
          //                               color: Colors.transparent,
          //                               child: Image.asset(
          //                                 AssetPaths.YELLOW_IMAGE,
          //                                 scale: 1.2,
          //                               ),
          //                               elevation: 12.0,
          //                               shape: const CircleBorder(),
          //                               clipBehavior: Clip.antiAlias,
          //                             )
          //                                 : Image.asset(
          //                               AssetPaths.YELLOW_IMAGE,
          //                               scale: 1.2,
          //                             ),
          //                             onTap: () async {
          //                               setState(() {
          //                                 isPressed = true;
          //                               });
          //                               button6();
          //                               String Url =
          //                                   'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3';
          //                               await audioPlayer.play(UrlSource(Url));
          //                             }),
          //                         SizedBox(
          //                           height: 64.0,
          //                         ),
          //                         InkWell(
          //                             child: Image.asset(
          //                               AssetPaths.ROOT_IMAGE,
          //                               scale: 1.2,
          //                             ),
          //                             onTap: () async {
          //                               button7();
          //                               String Url =
          //                                   'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3';
          //                               await audioPlayer.play(UrlSource(Url));
          //                             }),
          //                       ],
          //                     )),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
        ],
      ),
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  void play(List<String> urlList, int currentIndex, int indexname, name) async {
    await audioPlayer.play(AssetSource(urlList[currentIndex]));

    audioPlayer.onPlayerComplete.listen((event) {
      if (currentIndex < urlList.length - 1) {
        currentIndex = currentIndex + 1;
        //  indexname = indexname + 1;
        nextTrack(urlList, currentIndex, indexname, name);
        print("NEXT AUDIO! No: $currentIndex");
        print(currentIndex);
        print("Audio URL: ${urlList[currentIndex]}");
        print("Audio Name: ${name[indexname]}");
        if (currentIndex == 0) {
          name1 = "MULADHARA";
          print('MULADHARA');
        } else if (currentIndex == 1) {
          name1 = "SVADHISTHANA";
          isPressed7 = false;
          isPressed6 = true;
          print('SVADHISTHANA');
        } else if (currentIndex == 2) {
          name1 = "MANIPURA";
          isPressed6 = false;
          isPressed5 = true;

          print('MANIPURA');
        } else if (currentIndex == 3) {
          name1 = "ANAHATA";
          isPressed5 = false;
          isPressed4 = true;
          print('ANAHATA');
        } else if (currentIndex == 4) {
          name1 = "VISHUDDHA";
          isPressed4 = false;
          isPressed3 = true;
          print('VISHUDDHA');
        } else if (currentIndex == 5) {
          name1 = "AJNA";
          isPressed3 = false;
          isPressed2 = true;
          print('AJNA');
        } else if (currentIndex == 6) {
          name1 = "SAHASRARA";
          isPressed2 = false;
          isPressed1 = true;
          print('SAHASRARA');
        }
      } else {
        print("AUDIO COMPLETED PLAYING");
      }
    });
  }

  void nextTrack(urlList, int currentIndex, int indexname, String name) {
    play(urlList, currentIndex, indexname, name);
  }
}
