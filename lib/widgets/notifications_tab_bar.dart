import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';

class NotificationTabBar extends StatefulWidget {
  const NotificationTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  State<NotificationTabBar> createState() => _NotificationTabBarState();
}

class _NotificationTabBarState extends State<NotificationTabBar> {
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
            width: MediaQuery.of(context).size.width / 4.1,
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
            width: MediaQuery.of(context).size.width / 4.1,
            height: 30,
            decoration: BoxDecoration(
              color: widget.tabController.index == 1
                  ? Constants.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Read'),
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
            width: MediaQuery.of(context).size.width / 4.1,
            height: 30,
            decoration: BoxDecoration(
              color: widget.tabController.index == 2
                  ? Constants.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Unread'),
            ),
          ),
        ),
      ],
    );
  }
}
