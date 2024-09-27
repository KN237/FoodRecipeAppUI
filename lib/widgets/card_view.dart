import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/card_item.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 230,
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          itemBuilder: (ctx, index) {
            return const Padding(
              padding: EdgeInsets.only(left: 20, right: 15),
              child: CardItem(),
            );
          }),
    );
  }
}
