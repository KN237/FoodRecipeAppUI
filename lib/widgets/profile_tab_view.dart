import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/recipe_listview.dart';

class ProfileTabView extends StatelessWidget {
  const ProfileTabView({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const RecipeListView(),
        Container(
          color: Colors.black,
        ),
        Container(
          color: Colors.black,
        ),
      ],
    );
  }
}
