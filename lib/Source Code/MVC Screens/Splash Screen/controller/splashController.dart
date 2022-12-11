import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../meditationp22.dart';
import '../../Login Page/view/loginpage.dart';

class AppSplashScreenController extends GetxController {
  @override
  onInit() {
    SplashScreenNavigateToNextPage();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    super.onInit();
  }

  SplashScreenNavigateToNextPage() async =>
      await Future.delayed(const Duration(seconds: 6)).then((value) => Get.off(
            () => LoginScreen(),
          ));
}
