import 'package:flutter/material.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/filter_chip.dart';
import 'package:recipe_app/widgets/spacer.dart';

class FilterPart extends StatelessWidget {
  const FilterPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Filter Search',
              style: bodyMediumBold,
            ),
          ),
          addVerticalSpace(20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Time',
              style: bodyMediumBold,
            ),
          ),
          addVerticalSpace(10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomFilterChip(
                text: 'All',
              ),
              CustomFilterChip(
                text: 'Newest',
                isSelected: true,
              ),
              CustomFilterChip(
                text: 'Oldest',
              ),
              CustomFilterChip(
                text: 'Popularity',
              ),
            ],
          ),
          addVerticalSpace(20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Rate',
              style: bodyMediumBold,
            ),
          ),
          addVerticalSpace(10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomFilterChip(
                text: '5 ★',
                isSelected: true,
              ),
              CustomFilterChip(
                text: '4 ★',
              ),
              CustomFilterChip(
                text: '3 ★',
              ),
              CustomFilterChip(
                text: '2 ★',
              ),
              CustomFilterChip(
                text: '1 ★',
              ),
            ],
          ),
          addVerticalSpace(20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Category',
              style: bodyMediumBold,
            ),
          ),
          addVerticalSpace(10),
          const Wrap(
            runSpacing: 5,
            children: [
              CustomFilterChip(
                text: 'All',
              ),
              CustomFilterChip(
                text: 'Cereal',
              ),
              CustomFilterChip(
                text: 'Vegetables',
              ),
              CustomFilterChip(
                text: 'Dinner ★',
              ),
              CustomFilterChip(
                text: 'Chinese',
              ),
              CustomFilterChip(
                text: 'Local dish',
                isSelected: true,
              ),
              CustomFilterChip(
                text: 'Fruit',
              ),
              CustomFilterChip(
                text: 'Breakfast',
              ),
              CustomFilterChip(
                text: 'Spanish',
              ),
              CustomFilterChip(
                text: 'Lunch',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
