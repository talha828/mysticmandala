import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/assetpaths.dart';
import '../controller/splashController.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AppsplashController = Get.put(AppSplashScreenController());

  @override
  void initState() {
    super.initState();
    AppsplashController.SplashScreenNavigateToNextPage();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetPaths.SPLASH_IMAGE),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
