import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Source Code/Dashboard/view/dashboard.dart';
import 'Source Code/MVC Screens/About Guru/view/aboutguru.dart';
import 'Source Code/MVC Screens/Audio/view/audio.dart';
import 'Source Code/MVC Screens/Audio/view/hertzmusic.dart';
import 'Source Code/MVC Screens/Audio/view/medimusic.dart';
import 'Source Code/MVC Screens/Audio/view/sleepmusic.dart';
import 'Source Code/MVC Screens/Blogs/All Blogs/view/allblogs.dart';
import 'Source Code/MVC Screens/Blogs/Blog Details/view/Blogdetails3.dart';
import 'Source Code/MVC Screens/Blogs/Blog Details/view/blogdetails.dart';
import 'Source Code/MVC Screens/Blogs/Blog Details/view/blogdetails2.dart';
import 'Source Code/MVC Screens/Booking Details/bookingdetails.dart';
import 'Source Code/MVC Screens/Category/view/category.dart';
import 'Source Code/MVC Screens/Change Password/view/changepass.dart';
import 'Source Code/MVC Screens/Events/view/eventscreen.dart';
import 'Source Code/MVC Screens/Fee payment/view/payment.dart';
import 'Source Code/MVC Screens/Forgot Screen/view/forgotscreen.dart';
import 'Source Code/MVC Screens/Gallery/view/gallery.dart';
import 'Source Code/MVC Screens/Gallery/view/gallerybtn.dart';
import 'Source Code/MVC Screens/Home/view/home.dart';
import 'Source Code/MVC Screens/Login Page/view/loginpage.dart';
import 'Source Code/MVC Screens/Media/view/media.dart';
import 'Source Code/MVC Screens/Media/view/mediaselect.dart';
import 'Source Code/MVC Screens/Media/view/playlist.dart';
import 'Source Code/MVC Screens/Meditation center/view/medicenter.dart';
import 'Source Code/MVC Screens/Membership Details/view/membershipdetails.dart';
import 'Source Code/MVC Screens/Membership Plan/view/membership.dart';
import 'Source Code/MVC Screens/Messages/view/messages.dart';
import 'Source Code/MVC Screens/Notifications/view/notifications.dart';
import 'Source Code/MVC Screens/Number/view/number.dart';
import 'Source Code/MVC Screens/OTP Screen/view/OTPscreen.dart';
import 'Source Code/MVC Screens/Password Changes/view/passwordchanges.dart';
import 'Source Code/MVC Screens/Profile Settings/view/profflsettings.dart';
import 'Source Code/MVC Screens/Services Details/view/servicedetails.dart';
import 'Source Code/MVC Screens/Sessions/All Sessions/view/allsessions.dart';
import 'Source Code/MVC Screens/Sessions/Session Booking/view/sessionbook.dart';
import 'Source Code/MVC Screens/Sessions/Your session/view/your_session.dart';
import 'Source Code/MVC Screens/Settings/Email/view/emailScreen.dart';
import 'Source Code/MVC Screens/Sign Up/view/signup.dart';
import 'Source Code/MVC Screens/Splash Screen/view/splashscreen.dart';
import 'Source Code/MVC Screens/Spring Retreat/view/springretreat.dart';
import 'Source Code/MVC Screens/Terms&Conditions/view/termsScreen.dart';
import 'Source Code/MVC Screens/Username/view/username.dart';
import 'Source Code/MVC Screens/Videos/view/mandalavideos.dart';
import 'Source Code/MVC Screens/Videos/view/videos.dart';
import 'Source Code/MVC Screens/Winter Retreat/view/winter.dart';
import 'Source Code/MVC Screens/check out/view/checkout.dart';
import 'Source Code/MVC Screens/session schedule/view/sessionschedule.dart';
import 'Source Code/MVC Screens/testmedi/testmedi.dart';
import 'Source Code/meditationp22.dart';
import 'Source Code/utils/appcolors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  //Do this in main.dart
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      //  defaultTransition: Transition.leftToRight,
      initialRoute: '/',
      //  transitionDuration: Duration(milliseconds: 300),
      title: 'Mystic Mandala',
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.BLACK_COLOR,
            ),
      ),
      home: SplashScreen(),
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/Login', page: () => LoginScreen()),
        GetPage(name: '/Forgot', page: () => ForgotScreen()),
        GetPage(name: '/OTPScreen', page: () => OTPScreen()),
        GetPage(name: '/ChangePass', page: () => ChangePassScreen()),
        GetPage(name: '/TermsScreen', page: () => TermsCondition()),
        //GetPage(name: '/BlogDetails', page: () => BlogDetails()),
        GetPage(name: '/Events', page: () => Eventsscreens()),
        GetPage(name: '/Membership', page: () => MembershipPlanScreen()),
        GetPage(name: '/Username', page: () => Username()),
        GetPage(name: '/email', page: () => EmailScreen()),
        GetPage(name: '/PasswordChange', page: () => Passwordchange()),
        GetPage(name: '/Number', page: () => number()),
        GetPage(name: '/Home', page: () => HomePage()),
        GetPage(name: '/AllBlogs', page: () => AllBlogs()),
        GetPage(name: '/Audios', page: () => Audios()),
        GetPage(name: '/ProfileSettings', page: () => ProfileSettings()),
        GetPage(name: '/MeditationPage', page: () => MeditationPage()),
        GetPage(name: '/AboutGuru', page: () => AboutGuru()),
        GetPage(name: '/Dashboard', page: () => Dashboard()),
        GetPage(name: '/MembershipDetails', page: () => MembershipDetails()),
        GetPage(name: '/SessionBook', page: () => SessionBook()),
        GetPage(name: '/Eventsscreens', page: () => Eventsscreens()),
        GetPage(name: '/feepayment', page: () => feepayment()),
        GetPage(name: '/SignupScreen', page: () => SignupScreen()),
        GetPage(name: '/ProfileSettings', page: () => ProfileSettings()),
        GetPage(name: '/Category', page: () => Category()),
        GetPage(name: '/CheckoutPage', page: () => Checkout()),
        GetPage(name: '/Messages', page: () => Messages()),
        GetPage(name: '/BookingDetails', page: () => BookingDetails()),
        GetPage(name: '/SessionSchedule', page: () => SessionSchedule()),
        GetPage(name: '/ServiceDetails', page: () => ServiceDetails()),
        GetPage(name: '/Videos', page: () => Videos()),
        GetPage(name: '/Media', page: () => Media()),
        GetPage(name: '/MeditationCenter', page: () => MeditationCenter()),
        GetPage(name: '/WinterRetreat', page: () => WinterRetreat()),
        GetPage(name: '/SpringRetreat', page: () => SpringRetreat()),
        GetPage(name: '/MediMusic', page: () => MediMusic()),
        GetPage(name: '/HertzMusic', page: () => HertzMusic()),
        GetPage(name: '/SleepMusic', page: () => SleepMusic()),
        GetPage(name: '/MediaSelect', page: () => MediaSelect()),
        GetPage(name: '/Playlist', page: () => Playlist()),
        //GetPage(name: '/EventGallery', page: () => EventGallery()),
        GetPage(name: '/MandalaVideos', page: () => MandalaVideos()),
        GetPage(name: '/Notifications', page: () => Notifications()),
        GetPage(name: '/BlogDetails2', page: () => BlogDetails2()),
        GetPage(name: '/BlogDetails3', page: () => BlogDetails3()),
        GetPage(name: '/EventGalleryBtn', page: () => EventGalleryBtn()),
        GetPage(name: '/OTPScreen', page: () => OTPScreen()),
        GetPage(name: '/ChangePassScreen', page: () => ChangePassScreen()),
      ],
    );
  }
}
