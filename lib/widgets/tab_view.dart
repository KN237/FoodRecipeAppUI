import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/dishes_widget.dart';

class CustomTabView extends StatelessWidget {
  const CustomTabView({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        padding: EdgeInsets.zero,
        child: TabBarView(
          controller: tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            DishesWidget(),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.black,
            ),
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
