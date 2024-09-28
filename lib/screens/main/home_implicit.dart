import 'package:flutter/material.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/card_view.dart';
import 'package:recipe_app/widgets/main_header.dart';
import 'package:recipe_app/widgets/search_widget.dart';
import 'package:recipe_app/widgets/spacer.dart';
import 'package:recipe_app/widgets/home_tab_bar.dart';
import 'package:recipe_app/widgets/home_tab_view.dart';

class HomeImplicit extends StatefulWidget {
  const HomeImplicit({super.key});

  @override
  State<HomeImplicit> createState() => _HomeImplicitState();
}

class _HomeImplicitState extends State<HomeImplicit>
    with SingleTickerProviderStateMixin {
  final textController = TextEditingController();
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top + 20, bottom: 55),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainHeader(),
            addVerticalSpace(30),
            SearchWidget(textController: textController),
            addVerticalSpace(30),
            CustomTabBar(tabController: tabController),
            addVerticalSpace(20),
            CustomTabView(tabController: tabController),
            addVerticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'New Recipe',
                style: titleSmallBold,
              ),
            ),
            const CardView(),
            addVerticalSpace(10),
          ],
        ),
      ),
    );
  }
}
