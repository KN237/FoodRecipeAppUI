import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      padding: EdgeInsets.zero,
      tabAlignment: TabAlignment.center,
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
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              color: widget.tabController.index == 0
                  ? Constants.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Recipe'),
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
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              color: widget.tabController.index == 1
                  ? Constants.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Videos'),
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
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              color: widget.tabController.index == 2
                  ? Constants.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Tag'),
            ),
          ),
        ),
      ],
    );
  }
}
