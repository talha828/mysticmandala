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

class _MeditationPageState extends State<MeditationPage> {
  List urlList = [
    'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3',
    'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3',
    'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3',
    'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3',
    'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3',
    'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3',
    'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
  ];
  int currentIndex = 0;
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetPaths.BG_SPACE_IMAGE),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0, top: 30.0),
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
                      width: 72,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        AssetPaths.WHITE_BACK_BTN_IMAGE,
                        scale: 0.9,
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Container(
                //   color: Colors.black,
                height: 580.0,
                width: 580.0,
                child: Stack(
                  children: [
                    Container(
                      height: 600.0,
                      width: 580.0,
                      decoration: BoxDecoration(
                        //    color: Colors.yellow,
                        image: DecorationImage(
                          image: AssetImage(AssetPaths.YOGA_PERSON_IMAGE),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                        child: Container(
                            //     color: Colors.green,
                            height: 425.0,
                            width: 48.0,
                            child: Column(
                              //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    child: Image.asset(
                                      AssetPaths.CROWN_IMAGE,
                                      scale: 1.4,
                                    ),
                                    onTap: () async {
                                      button1();
                                      String Url =
                                          'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3';
                                      await audioPlayer.play(UrlSource(Url));
                                    }
                                    // 'https://mysticmandala.app/wp-content/uploads/2022/11/Sahasrara-Crown-Chakra-1.mp3',
                                    ),
                                SizedBox(
                                  height: 18.0,
                                ),
                                InkWell(
                                    child: Image.asset(
                                      AssetPaths.THIRD_IMAGE,
                                      scale: 1.4,
                                    ),
                                    onTap: () async {
                                      button2();
                                      String Url =
                                          'https://mysticmandala.app/wp-content/uploads/2022/11/Ajna-Third-Eye-Chakra-1.mp3';
                                      await audioPlayer.play(UrlSource(Url));
                                    }),
                                SizedBox(
                                  height: 18.0,
                                ),
                                InkWell(
                                    child: Image.asset(
                                      AssetPaths.THROAT_IMAGE,
                                      scale: 1.4,
                                    ),
                                    onTap: () async {
                                      button3();
                                      String Url =
                                          'https://mysticmandala.app/wp-content/uploads/2022/11/Visuddha-Throat-Chakra.mp3';
                                      await audioPlayer.play(UrlSource(Url));
                                    }),
                                SizedBox(
                                  height: 26.0,
                                ),
                                InkWell(
                                    child: Image.asset(
                                      AssetPaths.HEART_IMAGE,
                                      scale: 1.4,
                                    ),
                                    onTap: () async {
                                      button4();
                                      String Url =
                                          'https://mysticmandala.app/wp-content/uploads/2022/11/Anahata-Heart-Chakra.mp3';
                                      await audioPlayer.play(UrlSource(Url));
                                    }),
                                SizedBox(
                                  height: 26.0,
                                ),
                                InkWell(
                                    child: Image.asset(
                                      AssetPaths.ORAGNE_IMAGE,
                                      scale: 1.4,
                                    ),
                                    onTap: () async {
                                      button5();
                                      String Url =
                                          'https://mysticmandala.app/wp-content/uploads/2022/11/Manipura-Solar-Plexus-Chakra.mp3';
                                      await audioPlayer.play(UrlSource(Url));
                                    }),
                                SizedBox(
                                  height: 26.0,
                                ),
                                InkWell(
                                    child: Image.asset(
                                      AssetPaths.YELLOW_IMAGE,
                                      scale: 1.4,
                                    ),
                                    onTap: () async {
                                      button6();
                                      String Url =
                                          'https://mysticmandala.app/wp-content/uploads/2022/11/Svadisthana-Sacral-Chakra.mp3';
                                      await audioPlayer.play(UrlSource(Url));
                                    }),
                                SizedBox(
                                  height: 20.0,
                                ),
                                InkWell(
                                    child: Image.asset(
                                      AssetPaths.ROOT_IMAGE,
                                      scale: 1.4,
                                    ),
                                    onTap: () async {
                                      button7();
                                      String Url =
                                          'https://mysticmandala.app/wp-content/uploads/2022/11/Muladhara-Root-Chakra.mp3';
                                      await audioPlayer.play(UrlSource(Url));
                                    }),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
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
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
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
                            min: 0,
                            max: duration.inSeconds.toDouble(),
                            value: position.inSeconds.toDouble(),
                            onChanged: (value) async {
                              final position = Duration(seconds: value.toInt());
                              audioPlayer.seek(position);
                              audioPlayer.resume();
                            },
                          ),
                        ),
                        Image.asset(
                          AssetPaths.LOOP_IMAGE,
                          scale: 1.2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  InkWell(
                    onTap: () {
                      nextTrack(List<String>.from(urlList), currentIndex);
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
              text: btntext,
              Text_Color: AppColors.WHITE_COLOR,
              Text_fontSize: 1.4,
              Text_fontWeight: FontWeight.bold,
            )
          ],
        ),
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

  void play(List<String> urlList, int currentIndex) async {
    await audioPlayer.play(UrlSource(urlList[currentIndex]));

    audioPlayer.onPlayerComplete.listen((event) {
      if (currentIndex < urlList.length - 1) {
        currentIndex = currentIndex + 1;
        nextTrack(urlList, currentIndex);
        print("NEXT AUDIO! $currentIndex");
      } else {
        print("AUDIO COMPLETED PLAYING");
      }
    });
  }

  void nextTrack(urlList, int currentIndex) {
    play(urlList, currentIndex);
  }
}
