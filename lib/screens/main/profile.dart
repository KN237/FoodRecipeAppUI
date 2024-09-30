import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/profile_information.dart';
import 'package:recipe_app/widgets/profile_presentation.dart';
import 'package:recipe_app/widgets/profile_tab_bar.dart';
import 'package:recipe_app/widgets/profile_tab_view.dart';
import 'package:recipe_app/widgets/spacer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfilePresentation(),
            addVerticalSpace(20),
            const ProfileInformation(),
            addVerticalSpace(10),
            ProfileTabBar(tabController: tabController),
            addVerticalSpace(10),
            Expanded(
              child: ProfileTabView(tabController: tabController),
            ),
          ],
        ),
      ),
    );
  }
}
