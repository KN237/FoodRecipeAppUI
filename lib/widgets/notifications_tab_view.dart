import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/notifications_widget.dart';

class NotificationsTabView extends StatelessWidget {
  const NotificationsTabView({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        padding: EdgeInsets.zero,
        child: TabBarView(
          controller: tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            NotificationsWidget(),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
