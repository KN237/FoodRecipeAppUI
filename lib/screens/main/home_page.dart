import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/screens/main/bookmark_page.dart';
import 'package:recipe_app/screens/main/home_implicit.dart';
import 'package:recipe_app/screens/main/notification_page.dart';
import 'package:recipe_app/screens/main/profile.dart';
import 'package:recipe_app/screens/main/search_page.dart';
import 'package:recipe_app/widgets/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> screens = const [
    HomeImplicit(),
    BookmarkPage(),
    NotificationPage(),
    Profile(),
  ];
  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  AppBar? displayAppBar() {
    return currentIndex == 1
        ? AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(
              'Search recipes',
              style: titleSmallBold,
            ),
          )
        : currentIndex == 2
            ? AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: Text(
                  'Notifications',
                  style: titleSmallBold,
                ),
              )
            : currentIndex == 3
                ? AppBar(
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    title: Text(
                      'Profile',
                      style: titleSmallBold,
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz),
                        ),
                      ),
                    ],
                  )
                : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: displayAppBar(),
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        onPageChange: (index) {
          changePage(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Constants.primaryColor,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
