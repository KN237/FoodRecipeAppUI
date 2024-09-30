import 'package:flutter/material.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/bookmark_button.dart';
import 'package:recipe_app/widgets/rating_chip.dart';
import 'package:recipe_app/widgets/spacer.dart';

class RecipeListView extends StatelessWidget {
  const RecipeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: AssetImage('assets/images/dish.png'), fit: BoxFit.cover),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.9),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),
              const Positioned(
                top: 15,
                right: 10,
                child: RatingChip(rating: 4.5),
              ),
              Positioned(
                bottom: 28,
                left: 10,
                child: SizedBox(
                  width: 170,
                  child: Text(
                    'Traditional spare ribs baked',
                    softWrap: true,
                    style: bodyMediumBold.copyWith(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: SizedBox(
                  width: 150,
                  child: Text(
                    'By Mark Kelvin',
                    overflow: TextOverflow.ellipsis,
                    style: labelLargeRegular.copyWith(
                      color: Colors.white.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.alarm,
                      color: Colors.white.withOpacity(0.4),
                    ),
                    addHorizontalSpace(05),
                    Text(
                      '20 mins',
                      style: bodyMediumRegular.copyWith(
                        color: Colors.white.withOpacity(0.4),
                      ),
                    ),
                    addHorizontalSpace(05),
                    const BookmarkButton(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
