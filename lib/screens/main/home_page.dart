import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/screens/main/bookmark_page.dart';
import 'package:recipe_app/screens/main/home_implicit.dart';
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
    HomeImplicit(),
    BookmarkPage()
  ];
  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: currentIndex == 1
          ? AppBar(
              centerTitle: true,
              title: Text(
                'Search recipes',
                style: titleSmallBold,
              ),
            )
          : null,
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        onPageChange: (index) {
          changePage(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SearchPage(),
            ),
          );
        },
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
