import 'package:flutter/material.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/bookmark_button.dart';
import 'package:recipe_app/widgets/rating_chip.dart';

class DishesItem extends StatelessWidget {
  const DishesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.grey.withOpacity(0.4)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 0,
            child: Stack(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/food-2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 40,
                  right: 2,
                  child: RatingChip(
                    rating: 4.7,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -50,
            child: SizedBox(
              width: 160,
              height: 160,
              child: Text(
                'Classic Greek \n Salad',
                textAlign: TextAlign.center,
                style: bodyLargeBold,
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time',
                  style: bodySmallRegular.copyWith(color: Colors.grey),
                ),
                Text(
                  '15 mins',
                  style: bodySmallBold,
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 15,
            right: 12,
            child: BookmarkButton(),
          )
        ],
      ),
    );
  }
}
