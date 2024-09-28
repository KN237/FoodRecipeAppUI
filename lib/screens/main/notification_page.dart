import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/notifications_tab_bar.dart';
import 'package:recipe_app/widgets/notifications_tab_view.dart';
import 'package:recipe_app/widgets/spacer.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top + 20, bottom: 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NotificationTabBar(tabController: tabController),
          addVerticalSpace(10),
          Expanded(child: NotificationsTabView(tabController: tabController)),
        ],
      ),
    );
  }
}
