import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onPageChange});
  final void Function(int index) onPageChange;
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIdex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      color: Colors.white,
      notchMargin: 5,
      elevation: 5,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/images/home.png',
              color: currentIdex == 0
                  ? Constants.primaryColor
                  : Colors.grey.withOpacity(0.6),
            ),
            onPressed: () {
              setState(() {
                currentIdex = 0;
                widget.onPageChange(currentIdex);
              });
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/bookmark.png',
              color: currentIdex == 1
                  ? Constants.primaryColor
                  : Colors.grey.withOpacity(0.6),
            ),
            onPressed: () {
              setState(() {
                currentIdex = 1;
                widget.onPageChange(currentIdex);
              });
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/notifications.png',
              color: currentIdex == 2
                  ? Constants.primaryColor
                  : Colors.grey.withOpacity(0.6),
            ),
            onPressed: () {
              setState(() {
                currentIdex = 2;
                widget.onPageChange(currentIdex);
              });
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/profile.png',
              color: currentIdex == 3
                  ? Constants.primaryColor
                  : Colors.grey.withOpacity(0.6),
            ),
            onPressed: () {
              setState(() {
                currentIdex = 3;
                widget.onPageChange(currentIdex);
              });
            },
          ),
        ],
      ),
    );
  }
}
