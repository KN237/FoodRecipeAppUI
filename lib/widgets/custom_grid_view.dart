import 'package:flutter/material.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/rating_chip.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/dish.png'),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.9),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
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
                        width: 150,
                        child: Text(
                          'Traditional spare ribs baked',
                          softWrap: true,
                          style: bodySmallBold.copyWith(color: Colors.white),
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
                  ],
                ),
              );
            }),
      ),
    );
  }
}
