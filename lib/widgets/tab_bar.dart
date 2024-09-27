import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TabBar(
        controller: widget.tabController,
        padding: EdgeInsets.zero,
        isScrollable: true,
        indicatorColor: Colors.transparent,
        labelStyle: const TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Constants.primaryColor),
        dividerHeight: 0,
        tabAlignment: TabAlignment.start,
        onTap: (value) {
          setState(() {});
        },
        tabs: [
          GestureDetector(
            onTap: () {
              setState(() {
                widget.tabController.animateTo(0);
              });
            },
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: widget.tabController.index == 0
                    ? Constants.primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('All'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.tabController.animateTo(1);
              });
            },
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: widget.tabController.index == 1
                    ? Constants.primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('Indian'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.tabController.animateTo(2);
              });
            },
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: widget.tabController.index == 2
                    ? Constants.primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('Italian'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.tabController.animateTo(3);
              });
            },
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: widget.tabController.index == 3
                    ? Constants.primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('Asian'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.tabController.animateTo(4);
              });
            },
            child: Container(
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                color: widget.tabController.index == 4
                    ? Constants.primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('Chinese'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
