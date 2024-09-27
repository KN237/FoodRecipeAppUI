import 'package:flutter/material.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/custom_grid_view.dart';
import 'package:recipe_app/widgets/filter_part.dart';
import 'package:recipe_app/widgets/search_widget.dart';
import 'package:recipe_app/widgets/spacer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  final textController = TextEditingController();
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Search recipes',
          style: titleSmallBold,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          addVerticalSpace(20),
          SearchWidget(
            textController: textController,
            onFilter: () {
              if (_animationController.isCompleted) {
                _animationController.reverse();
              } else {
                _animationController.reset();
                _animationController.forward();
              }
            },
          ),
          SizeTransition(
            sizeFactor: _fadeAnimation,
            child: const FilterPart(),
          ),
          addVerticalSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Search Result or Recent Search
                Text(
                  'Search Result',
                  style: bodyLargeBold,
                ),
                Text(
                  '255 results',
                  style: bodySmallRegular.copyWith(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
          addVerticalSpace(20),
          const CustomGridView(),
        ],
      ),
    );
  }
}
