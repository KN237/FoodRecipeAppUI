import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/dishes_item.dart';

class DishesWidget extends StatelessWidget {
  const DishesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        itemBuilder: (ctx, index) {
          return const DishesItem();
        });
  }
}
