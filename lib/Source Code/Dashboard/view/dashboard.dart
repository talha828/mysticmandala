import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mysticmandala/Source%20Code/utils/appstrings.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../MVC Screens/Home/view/home.dart';
import '../../utils/appcolors.dart';
import '../../utils/assetpaths.dart';
import '../../widgets/Custom App bar/custom_app_bar.dart';
import '../../widgets/Text/customText.dart';
import 'events.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  String fromDate = '';
  String lastDate = '';
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  TextEditingController eventContaoller = TextEditingController();
//  final calFuel = Get.put(CalFuelController());

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    eventContaoller.dispose();
    super.dispose();
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
            //         padding:
            //             const EdgeInsets.only(left: 22.0, right: 5.0, top: 8.0),
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
            //                 text: "DASHBOARD",
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
            // )
            CustomAppBar(
              text: "DASHBOARD",
            ),
          ]),
          Expanded(
              child: ListView(physics: BouncingScrollPhysics(), children: [
            Container(
              margin: EdgeInsets.only(bottom: 18.0),
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              color: Colors.transparent,
              child: TableCalendar(
                firstDay: DateTime(1990),
                lastDay: DateTime(2090),
                currentDay: _rangeEnd,
                focusedDay: _focusedDay,
                rowHeight: 32.0,
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                rangeStartDay: _rangeStart,
                rangeEndDay: _rangeEnd,
                calendarFormat: _calendarFormat,
                rangeSelectionMode: _rangeSelectionMode,
                calendarStyle: CalendarStyle(
                  cellPadding: EdgeInsets.all(0.0),
                  cellMargin: EdgeInsets.all(0.0),
                  defaultTextStyle: TextStyle(color: AppColors.BLACK_COLOR),
                  weekendTextStyle: TextStyle(color: AppColors.BLACK_COLOR),
                  outsideTextStyle: TextStyle(color: AppColors.BLACK_COLOR),
                  isTodayHighlighted: true,
                  selectedDecoration: BoxDecoration(
                    color: AppColors.ORANGE_COLOR,
                    shape: BoxShape.circle,
                  ),
                  selectedTextStyle: TextStyle(color: Colors.white),
                  todayDecoration: BoxDecoration(
                    color: AppColors.ORANGE_COLOR,
                    shape: BoxShape.circle,
                  ),
                  defaultDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  weekendDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                ),
                headerStyle: HeaderStyle(
                  leftChevronIcon: Icon(
                    Icons.arrow_left,
                    color: AppColors.BLACK_COLOR,
                    size: 35.0,
                  ),
                  rightChevronIcon: Icon(
                    Icons.arrow_right,
                    color: AppColors.BLACK_COLOR,
                    size: 35.0,
                  ),
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle:
                      TextStyle(color: AppColors.BLACK_COLOR, fontSize: 18.0),
                  formatButtonShowsNext: false,
                  formatButtonDecoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(1.0),
                  ),
                  formatButtonTextStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                      _rangeStart = null; // Important to clean those
                      _rangeEnd = null;
                      _rangeSelectionMode = RangeSelectionMode.toggledOff;
                    });
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
            ),
            ..._getEventsfromDay(selectedDay).map(
              (Event event) => ListTile(
                title: Text(
                  event.title,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Image.asset(
                    AssetPaths.EVENT_BUTTON,
                    scale: 1.1,
                  ),
                  onTap: () {
                    Get.toNamed('/Eventsscreens');
                  },
                ),
                InkWell(
                  child: Image.asset(
                    AssetPaths.EVENT_GALLERY,
                    scale: 1.1,
                  ),
                  onTap: () {
                    Get.toNamed('/EventGalleryBtn');
                  },
                ),
                InkWell(
                  child: Image.asset(
                    AssetPaths.SESSION_NEW_BUTTON,
                    scale: 1.1,
                  ),
                  onTap: () {
                    Get.toNamed('/SessionBook');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Image.asset(
                    AssetPaths.MEDITATION_BUTTON,
                    scale: 1.1,
                  ),
                  onTap: () {
                    Get.toNamed('/MeditationCenter');
                  },
                ),
                InkWell(
                  child: Image.asset(
                    AssetPaths.SPRING_IMAGE,
                    scale: 1.1,
                  ),
                  onTap: () {
                    Get.toNamed('/SpringRetreat');
                  },
                ),
                // InkWell(
                //   child: Image.asset(
                //     AssetPaths.MSG_IMAGE,
                //     scale: 1.1,
                //   ),
                //   onTap: () {
                //     Get.toNamed('/Messages');
                //   },
                // ),
                InkWell(
                  child: Image.asset(
                    AssetPaths.NOTIFICATIONS_IMAGE,
                    scale: 1.1,
                  ),
                  onTap: () {
                    Get.toNamed('/Notifications');
                    //    Get.toNamed('/Messages');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 125.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetPaths.CATEGORY_IMAGE),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/Membership');
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 80.0, right: 80.0, top: 8.0),
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.ORANGE_COLOR,
                      borderRadius: BorderRadius.all(Radius.circular(28.0))),
                  child: Center(
                    child: CustomTextWidget(
                      text: "Subscribe",
                      Text_Color: AppColors.WHITE_COLOR,
                      Text_fontSize: 1.1,
                      Text_fontWeight: FontWeight.bold,
                      Text_Align: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ]))
        ])
      ]),
    );
  }
}
